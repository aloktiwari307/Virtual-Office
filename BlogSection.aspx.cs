using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace Virtual_Office_Project.admin
{
    public partial class BlogSection : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Virtual_OfficeConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]==null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            con.Open();
            string img_path = FileUpload1.FileName;
            string path1 = "";
            if (TextBox1.Text == "" && TextBox4.Text == "")
            {
                
                    Response.Write("<script>alert('Please Write Topic and Subject')</script>");
            }
            else
            { 
                if (img_path != "")
                {
                    path1 = "images/" + img_path;

                }

                SqlCommand cmd = new SqlCommand("Insert into blog (topic,image,message,time,user_id)values(@topic,@image,@message,@time,@user_id)", con);
                cmd.Parameters.AddWithValue("@topic", TextBox1.Text);
                cmd.Parameters.AddWithValue("@message", TextBox4.Text);
                cmd.Parameters.AddWithValue("@image", path1);
                cmd.Parameters.AddWithValue("@time", DateTime.Now.ToString());
                cmd.Parameters.AddWithValue("@user_id", Session["username"].ToString());
                if (img_path != "")
                {
                    FileUpload1.SaveAs(Server.MapPath(path1));
                }
                int i = cmd.ExecuteNonQuery();
                con.Close();
                TextBox1.Text = "";
                TextBox4.Text = "";
                if (i > 0)
                {
                    Response.Write("<script>alert('Data Insert Successfully')</script>");
                    Response.Redirect("BlogSection.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Data Not Insert Successfully')</script>");

                }

            }
            
        }
    }
}