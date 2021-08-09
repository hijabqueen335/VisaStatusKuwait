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

        protected void packages_Click(object sender, EventArgs e)
        {
           
            if (FileUpload1.HasFile)
            {
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str));
                string VisaPdf = "Upload/" + str.ToString();
                string Pname = NameTextBox.Text;

                string Fathername = FnameTextBox.Text;
                string Adhar = AdharTextBox.Text;
                string DoB = DoBTextBox.Text;
                string passport = PassportTextBox.Text;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VisaKuwait"].ConnectionString);

                SqlCommand cmd = new SqlCommand("usp_ClientInfo_Insert", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", Pname);
                cmd.Parameters.AddWithValue("@FatherName", Fathername);
                cmd.Parameters.AddWithValue("@AdharNo", Adhar);
                cmd.Parameters.AddWithValue("@DoB", DoB);
                cmd.Parameters.AddWithValue("@PassportNo", passport);
                cmd.Parameters.AddWithValue("@VisaNo", VisaTextBox.Text);
                cmd.Parameters.AddWithValue("@Address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@VisaDuration", VisaDTextBox.Text);
                cmd.Parameters.AddWithValue("@VisaPdf", VisaPdf);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Image Uploaded";
                Label1.ForeColor = System.Drawing.Color.ForestGreen;

                Response.Write("<script>alert('Inserted')</script>");
                ShowClientList();
            }

            else
            {
                Label1.Text = "Please Upload your Image";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}


         