using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Virtual_Office_Project.admin
{
    public partial class Inbox : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Virtual_OfficeConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Smail where receiver like  '%admin%'  ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();

                con.Close();
            }

                 

        }

       
           
       

        protected void inbox_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Inbox.aspx");
        }

        protected void email_compose_Click(object sender, EventArgs e)
        {
            Response.Redirect("Email.aspx");
        }

        protected void sent_mail_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sent_mail.aspx");
        }

        protected void viewemail_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            string id = lb.CommandArgument;
            Response.Redirect("viewinboxmail.aspx?id=" + id);
        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string id = btn.CommandArgument;
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from mail where id =@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Redirect("Inbox.aspx");
                Response.Write("<script>alert('Deleted Successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Something went wrong')</script>");
            }
        }
    }

       
}