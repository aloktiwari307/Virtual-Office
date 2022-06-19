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
    public partial class PostAswer : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("select question from ques where id=" + Request.QueryString["id"], con);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                }
                con.Close();
            }

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string uname = Session["username"].ToString();
            string id = Request.QueryString["id"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into answ (queryid,answer,date,username) values(@queryid,@answer,@date,@username)", con);
            cmd.Parameters.AddWithValue("@queryid", id);
            cmd.Parameters.AddWithValue("@answer", TextBox4.Text);
            cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString());
            cmd.Parameters.AddWithValue("@username", uname);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if(i>0)
            {
                Response.Redirect("PostQuestion.aspx");
            }
            else
            {
                Response.Write("<script>alert('invalid answer')</script>");
            }

        }
    }
}