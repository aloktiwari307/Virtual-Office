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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Virtual_OfficeConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "";
          //  string id = "";
            con.Open();
            SqlCommand cmd = new SqlCommand("Select pass from admin_login where username = @username", con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text.Trim());
            SqlDataReader dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                 str = dr[0].ToString();
             
            }
            if(str  =="")
            {
                Response.Write("<script>alert('Invalid Credentials')</script>");
            }
            else if(str == TextBox2.Text.Trim())
            {
                Session["username"] = TextBox1.Text;
                Response.Redirect("~/admin/Home.aspx");
                
                
            }
            else
            {
                Response.Write("Invalid Password");
            }
            con.Close();

        }
    }
}