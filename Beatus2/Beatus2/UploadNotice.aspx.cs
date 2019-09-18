using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Beatus2;

using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

namespace Beatus2
{
    public partial class UploadNotice : System.Web.UI.Page
    {
        MySqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            //데이터베이스 세팅
            con = new MySqlConnection(ConfigurationManager.ConnectionStrings["Beatus"].ConnectionString);
            con.Open();
        }

        protected void CompleteInput_Click(object sender, EventArgs e)
        {
            //제목 입력 확인
            if (TitleInput.InnerText == String.Empty)
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('제목을 입력해 주세요.')", true);
            }
            //내용 입력 확인
            if (ContentInput.InnerText == String.Empty)
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('내용을 입력해 주세요.')", true);
            }

            /*삭제 필수*/
            string UserName = "";
            /*삭제 필수*/

            //작성자 확인
            if (/*작성자 == 운영자*/ true)
            {
                //공지 테이블 이름 몰라서 이렇게 했어요
                //타이틀, 내용, 작성자, 작성일 순으로 함수를 만들었습니다
                //업로드
                MySqlCommand cmd = new MySqlCommand("INSERT INTO @NoticeList VALUES('@Title', \"@Content\", '@Writter', \"@Date\")");
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Title", TitleInput.InnerText);
                cmd.Parameters.AddWithValue("@Content", ContentInput.InnerText);
                cmd.Parameters.AddWithValue("@Writter", UserName);
                cmd.Parameters.AddWithValue("@Date", DateTime.Now);

            }
            else if(/*작성자 != String Empty*/ true)
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('운영자 권한이 없습니다')", true);
            }
            else//로그인 안되어 있는 경우
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('로그인을 해주세요')", true);
                Response.Redirect("cnsabeatus.com/");
            }
        }
    }
}