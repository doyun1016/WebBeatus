using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace Beatus2.Managers
{
    public class PostManager1
    {
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

        public static int UploadPost(Models.Post post,string kind)
        {
            // 제목 또는 내용이 비어 있을 경우 종료
            if (String.IsNullOrEmpty(post.Title.Trim()) || String.IsNullOrEmpty(post.Content.Trim()))
                return -1;

            MySqlConnection conn = null;
            try
            {
                // Connect to DB;
                conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Cnsalitaward"].ConnectionString);
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
        //작품 수정
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
    }
}