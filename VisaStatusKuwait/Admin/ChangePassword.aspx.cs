using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisaStatusKuwait.Admin
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!base.IsPostBack)
            {
                HttpCookie myCookie = Request.Cookies["ctCookie"];
                if (myCookie == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
                if (!string.IsNullOrEmpty(myCookie.Values["userid"]))
                {
                    string str1 = myCookie.Values["userid"].ToString();
                    userdiv.Visible = true;
                    lgdiv.Visible = false;
                    usernameLabel.Text = myCookie.Values["userid"].ToString();
                    //LoadUserInfo(str1);
                }
            }
        }



        protected void Button_submit_Click(object sender, EventArgs e)
        {
            if (newPassword.Text == cnfpassTextBox.Text)
            {

                SqlConnection sqlconnection1 = new SqlConnection(ConfigurationManager.ConnectionStrings["VisaKuwait"].ConnectionString);
                sqlconnection1.Open();
                SqlCommand cmd = new SqlCommand("usp_Member_PassChange", sqlconnection1);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserId", usernameLabel.Text.Trim());
                cmd.Parameters.AddWithValue("@oldpass", OldPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@newpass", newPassword.Text.Trim());
                int i = cmd.ExecuteNonQuery();
                sqlconnection1.Close();
                if (i > 0)
                {
                    FailureText.Text = "Password Changed";

                }
            }
            else
            {
                FailureText.Text = "Password Not Match";
                OldPassword.Text = "";
                cnfpassTextBox.Text = "";
                newPassword.Text = "";
            }
        }
    }
}
