using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisaStatusKuwait
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie mycookies = Request.Cookies["ctCookie"];
                if (mycookies == null)
                {

                }
                else
                {
                    Response.Cookies["ctCookie"].Expires = DateTime.Now.AddDays(-1);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userid, password;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VisaKuwait"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_Login_User", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", usernameTextBox.Text.Trim());
            cmd.Parameters.AddWithValue("@password", passwordTextBox.Text.Trim());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                userid = dt.Rows[0]["Username"].ToString().Trim();
                password = dt.Rows[0]["Password"].ToString().Trim();
                if (userid == usernameTextBox.Text.Trim() && password == passwordTextBox.Text.Trim())
                {
                    //create a cookie
                    HttpCookie myCookie = new HttpCookie("ctCookie");

                    //Add key-values in the cookie
                    myCookie.Values.Add("userid", userid);
                    // myCookie.Values.Add("ver", "Version 1");
                    //set cookie expiry date-time. Made it to last for next 12 hours.
                    myCookie.Expires = DateTime.Now.AddHours(1);

                    //Most important, write the cookie to client.
                    Response.Cookies.Add(myCookie);
                    Response.Redirect("Admin/Home.aspx");
                }
                else
                {
                    usernameTextBox.Text = "";
                    passwordTextBox.Text = "";
                    Response.Write("<script>alert('Invalid UserId or Password')</script>");
                    // FailureText.Text = "Invalid UserId or Password";
                }
            }
            else
            {
                usernameTextBox.Text = "";
                passwordTextBox.Text = "";
                // FailureText.Text = "Invalid UserId or Password";
                Response.Write("<script>alert('Invalid UserId or Password')</script>");
            }
        }
    }
}