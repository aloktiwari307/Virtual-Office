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
    public partial class Employee_Details : System.Web.UI.Page
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
                bind();
            }

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            LinkButton lb = (LinkButton)sender;
            string id = lb.CommandArgument;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from emp_register where id=" + id;
            cmd.Connection = con;
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i > 0)
            {
                Response.Write("<script>alert('Data Deleted successfull')</script>");
                Response.Redirect("Employee_Details.aspx");
            }
            else
            {
                Response.Write("<script>alert('Data NOT Deleted successfull')</script>");
            }
            bind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton lb = ( LinkButton) sender;
            string id = lb.CommandArgument;
            Response.Redirect("Employee_Full_details.aspx?id=" + id);


        }
        public void bind()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from emp_register", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();

        }

        protected void search_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from emp_register where name like '" + TextBox1.Text + '%' + "' ", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            con.Close();

        }
    }
}