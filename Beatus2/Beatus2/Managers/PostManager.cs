using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using Beatus2.Models;

namespace Beatus2.Managers
{
    public static class PostManager
    {
        //글 정보 가져오기
        public static Models.Post GetPost(int Id,string kind)
        {
            MySqlConnection conn = null;
            try
            {
                // Connect to DB;
                conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Beatus"].ConnectionString);
                conn.Open();

                string sql = "SELECT * FROM "+kind+" WHERE Id=" + Id + ";";
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                var rdr = cmd.ExecuteReader();
                rdr.Read();
                Models.Post post = new Models.Post
                {
                    Id = (int)rdr["Id"],
                    UserID = (string)rdr["UserID"],
                    Title = (string)rdr["Title"],
                    Content = (string)rdr["Content"],
                    Date = (DateTime)rdr["Date"]
                };
                rdr.Close();
                return post;
            }
            catch (Exception e)
            {
                // TODO: 예외 처리
                throw new Exception(e.Message);
            }
            finally
            {
                conn.Close();
            }
        }
        //글 업로드
        public static int UploadPost(Models.Post post,string kind)
        {
            // 제목 또는 내용이 비어 있을 경우 종료
            if (String.IsNullOrEmpty(post.Title.Trim()) || String.IsNullOrEmpty(post.Content.Trim()))
                return -1;

            MySqlConnection conn = null;
            try
            {
                // Connect to DB;
                conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Beatus"].ConnectionString);
                conn.Open();

                int result = 0;

                // Connect to Database
                string sql = "INSERT INTO "+kind+"(UserID,Name,Title,Content,Date) VALUES (?, ?, ?,?,?)";
                MySqlCommand cmd = new MySqlCommand(sql, conn);

                // Add Question Info
                cmd.Parameters.Add("Title", MySqlDbType.VarChar).Value = post.Title;
                cmd.Parameters.Add("Content", MySqlDbType.VarChar).Value = post.Content.Replace("\r\n", "<br/>");
                cmd.Parameters.Add("UserID", MySqlDbType.VarChar).Value = post.UserID;
                cmd.Parameters.Add("Date", MySqlDbType.DateTime).Value = DateTime.Now.ToString("yyyy-MM-dd");


                result = cmd.ExecuteNonQuery();

                return result;
            }
            catch (Exception e)
            {
                // TODO: 예외 처리
                throw new Exception(e.Message);
            }
            finally
            {
                conn.Close();
            }
        }
        //글 수정
        public static int ModifyPost(Models.Post post,string kind)
        {
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["Beatus"].ConnectionString);
            MySqlCommand cmd = new MySqlCommand("update "+kind+" Set  Title = @Title, Content = @Content where Id=" + post.Id, con);

            try
            {
                con.Open();
                int result = 0;


                cmd.Parameters.AddWithValue("@Title", post.Title);
                cmd.Parameters.AddWithValue("@Content", post.Content.Replace("\r\n", "<br/>"));
                result = cmd.ExecuteNonQuery();


                return result;

            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }


        }
        // 글삭제
        public static int DeletePost(int Id,string kind)
        {
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["Beatus"].ConnectionString);
            MySqlCommand cmd = new MySqlCommand();
            int result = 0;
            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = string.Format("DELETE FROM "+kind+" WHERE Id=" + Id);
                cmd.CommandType = System.Data.CommandType.Text;
                result = cmd.ExecuteNonQuery();
                return result;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {

                con.Close();
            }
        }
        // 페이지 갯수 세기
        public static int GetPagesCount(string kind)
        {
            MySqlConnection conn = null;
            try
            {
                // Connect to DB;
                conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Beatus"].ConnectionString);
                conn.Open();

                // Get Notices Count
                string sql = "SELECT count(*) FROM "+kind+";";
                ; MySqlCommand cmd = new MySqlCommand(sql, conn);
                int workCount = Convert.ToInt32(cmd.ExecuteScalar());

                // 공지 갯수의 1의 자리가 0일 경우
                if (workCount % 10 != 0)
                {
                    return workCount / 10 + 1;
                }
                else
                {
                    return workCount / 10;
                }
            }
            catch (Exception e)
            {
                // TODO: 예외 처리
                throw new Exception(e.Message);
            }
            finally
            {
                conn.Close();
            }
        }
        //페이지 목록
        public static List<Models.Post> GetPostsByPage(int page, string kind)
        {

            MySqlConnection conn = null;
            try
            {
                // Connect to DB;
                conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Beatus"].ConnectionString);
                conn.Open();

                List<Models.Post> posts = new List<Models.Post>();

                string sql = "SELECT count(*) FROM "+kind+"; ";
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                int WorkCount = Convert.ToInt32(cmd.ExecuteScalar());

                sql = "SELECT Id, UserID,Name,Title,Content,Date FROM " + kind+" ORDER BY Id DESC LIMIT 10 OFFSET " + ((page - 1) * 10) + ";";
                cmd.CommandText = sql;

                var dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    posts.Add(new Models.Post
                    {
                        Id = (int)dr["Id"],
                        UserID = (string)dr["UserID"],
                        Content = (string)dr["Content"],
                        Name = (string)dr["Name"],
                        Title = (string)dr["Title"],
                        Date = (DateTime)dr["Date"]
                    });
                }
                dr.Close();
                return posts;
            }
            catch (Exception e)
            {
                // TODO: 예외 처리
                throw new Exception(e.Message);
            }
            finally
            {
                conn.Close();
            }
        }
        public static List<Models.Post> GetPostsBySearching(int page, string text, bool isContents, string kind)
        {
            MySqlConnection conn = null;
            try
            {
                // Connect to DB;
                conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Beatus"].ConnectionString);
                conn.Open();

                List<Models.Post> postList = new List<Models.Post>();

                // SetColumName
                string columName = "";
                if (isContents)
                    columName = "Content";
                else
                    columName = "Title";

                // Get Questions Count
                string sql = "SELECT count(*) FROM "+kind+" WHERE " + columName + " LIKE '%" + text + "%';";
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                int workCount = Convert.ToInt32(cmd.ExecuteScalar());

                // Get Questions
                sql = "SELECT Id,Name, Title,Date FROM "+kind+" WHERE " + columName + " LIKE '%" + text + "%' ORDER BY Id DESC LIMIT 10 OFFSET " + ((page - 1) * 10) + ";";
                cmd.CommandText = sql;

                var rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    postList.Add(new Models.Post
                    {
                        Id = (int)rdr["Id"],
                        UserID = (string)rdr["UserID"],
                        Title = (string)rdr["Title"],
                        Name = (string)rdr["Name"],
                        Date = (DateTime)rdr["Date"]
                    });
                }
                rdr.Close();
                return postList;
            }
            catch (Exception e)
            {
                // TODO: 예외 처리
                throw new Exception(e.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        /// Get Works by Searching
        /// 목록 렌더링을 위해 제목과 글번호만 반환
        /// </summary>
        public static int GetPagesCountBySearching(int page, string text, bool isContents, string kind)
        {
            MySqlConnection conn = null;
            try
            {
                // Connect to DB;
                conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Beatus"].ConnectionString);
                conn.Open();

                // SetColumName
                string columName = "";
                if (isContents)
                    columName = "Content";
                else
                    columName = "Title";

                string sql = "SELECT count(*) FROM "+kind+" WHERE " + columName + " LIKE '%" + text + "%';";
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                int workCount = Convert.ToInt32(cmd.ExecuteScalar());

                // 공지 갯수의 1의 자리가 0일 경우
                if (workCount % 10 != 0)
                {
                    return workCount / 10 + 1;
                }
                else
                {
                    return workCount / 10;
                }
            }
            catch (Exception e)
            {
                // TODO: 예외 처리
                throw new Exception(e.Message);
            }
            finally
            {
                conn.Close();
            }
        }
    }
}