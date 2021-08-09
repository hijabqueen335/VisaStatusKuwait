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
    public partial class VisaStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
            }
        }

        protected void buttonsearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VisaKuwait"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_Client_Data", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", NameTextBox);
            cmd.Parameters.AddWithValue("@PassportNo", PassportTextBox);
            cmd.Parameters.AddWithValue("@VisaNo", VisaTextBox);
            if (EmpTextBox.Text == "@EmpId" && PasTextBox.Text == "@Password")
            {
                Response.Write("<script>alert('Succesfully')</script>");
            }
            else if (EmpTextBox.Text == "" && PasTextBox.Text == "")
            {
                Response.Write("<script>alert('Please Enter EmpId and Password')</script>");
            }
            else
            {
                Response.Write("<script>alert('Error')</script>");
            }
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            con.Close();
        }
        public void Clear()
        {
            EmpTextBox.Text = string.Empty;
            PasTextBox.Text = "";
        }

    }
}
}