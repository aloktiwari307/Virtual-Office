using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Virtual_Office_Project.admin
{
    public partial class Address_Book : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Virtual_OfficeConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                con.Open();

                SqlDataAdapter da = new SqlDataAdapter("Select * from emp_register", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Label1.Text = "Address Book";
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                else
                {
                    Label1.Text = "No Data Available";
                }
                con.Close();
            }


        }

        protected void mail_Click(object sender, EventArgs e)
        {
            Response.Redirect("Email.aspx");
        }
    }
}