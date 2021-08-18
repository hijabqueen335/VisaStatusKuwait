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
                ShowClientList();
            }
        }

        public void ShowClientList()
        {
            Repeater2.DataSource = null;
            Repeater2.DataBind();
            SqlConnection sqlconnection1 = new SqlConnection(ConfigurationManager.ConnectionStrings["VisaKuwait"].ConnectionString);
            sqlconnection1.Open();
            SqlCommand cmd = new SqlCommand("usp_ShowAllPackages", sqlconnection1);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            sqlconnection1.Close();
            if (dt.Rows.Count > 0)
            {
                //Label1.Text = "Total Count: " + dt.Rows.Count.ToString();
                Repeater2.DataSource = dt;
                Repeater2.DataBind();
            }
        }

            protected void buttonsearch_Click(object sender, EventArgs e)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VisaKuwait"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("usp_Client_Data", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@PassportNo", PassportTextBox.Text);
                cmd.Parameters.AddWithValue("@VisaNo", VisaTextBox.Text);
                if (NameTextBox.Text == "@Name" && PassportTextBox.Text == "@PassportNo" && VisaTextBox.Text == "@VisaNo")
                {
                    Response.Write("<script>alert('Succesfully')</script>");

                }
                else if (NameTextBox.Text == "" && PassportTextBox.Text == "" && VisaTextBox.Text == "")
                {
                    Response.Write("<script>alert('Please Enter EmpId and Password')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error')</script>");
                }

        }
    }
}
