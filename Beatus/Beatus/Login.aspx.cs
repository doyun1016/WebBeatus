using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Beatus
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login_Click(Object sender, EventArgs e)
        {
            //아이디 입력 확인
            if (UserIDtxt.Text == String.Empty)
            {

                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('아이디를 입력해주세요.')", true);

            }
            //비밀번호 입력 확인
            if (UserPWtxt.Text == String.Empty)
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('비밀번호를 입력해주세요.')", true);
            }
            //계정 확인
            object obj;
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["Beatus"].ConnectionString);
            con.Open();

            MySqlCommand cmd = new MySqlCommand("Select * from user where UserID = @Id and UserPW = @Password", con);

            cmd.CommandType = CommandType.Text;
            //cmd.Parameters.AddWithValue("@Id", UserID.Text);
            //cmd.Parameters.AddWithValue("@Password", UserPW.Text);
            obj = cmd.ExecuteScalar();
            MySqlDataReader reader = cmd.ExecuteReader();

            if (obj != null)

            {

                //Session["UserID"] = UserID.Text;



                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('로그인 성공!')", true);

            }

            else

            {
                con.Close();
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('회원정보가 일치하지않습니다.')", true);

            }



        }
    }
}