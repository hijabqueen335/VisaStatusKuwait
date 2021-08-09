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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie myCookie = Request.Cookies["ctCookie"];
                if (myCookie == null)
                {
                    Response.Redirect("~/AdminLogin.aspx");
                }
                if (!string.IsNullOrEmpty(myCookie.Values["userid"]))
                {
                    string str1 = myCookie.Values["userid"].ToString();
                    //userdiv.Visible = true;
                    //lgdiv.Visible = false;
                    //usernameLabel.Text = myCookie.Values["userid"].ToString();
                    LoadUserInfo(str1);
                    //GetInverseData(str1);
                }
            }
        }
        public void LoadUserInfo(string id)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VisaKuwait"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_Admin", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", id.Trim());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {

                nameLabel.Text = dt.Rows[0]["Username"].ToString();
                // idLabel.Text= dt.Rows[0]["Username"].ToString();

            }

        }
    }
}