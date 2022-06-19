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
    public partial class PostQuestion : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Virtual_OfficeConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["username"] == null)
            //{
            //    Response.Redirect("Login.aspx");
            //}
            //else
            //{
                Panel1.Visible = false;
                Panel2.Visible = true;
                Button2.Visible = false;
                Button1.Visible = true;
                Binddata();
            //}
        }
        public void Binddata()
        {
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select * from ques", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Button2.Visible = true;
            Button1.Visible = false;
            TextBox2.Text = "";
        }       

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "")
            {
                Response.Write("<script>alert('Write Question')</script>");
            }
            else
            {
                string uname = Session["username"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into ques (question,username,date) values(@question,@username,@date)", con);
                cmd.Parameters.AddWithValue("@question", TextBox2.Text);
                cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString());
                cmd.Parameters.AddWithValue("@username", uname);
                int i = cmd.ExecuteNonQuery();

                con.Close();

                Panel2.Visible = true;
                Binddata();
                TextBox2.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
            Button1.Visible = true;
            TextBox2.Text = "";
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            string id = lb.CommandArgument;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Delete from ques where id=" + id;
            cmd.Connection = con;
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if(i>0)
            {
                Response.Write("<script>alert('Data Deleted')</script>");
            }
            else
            {
                Response.Write("<script>alert('Data NOt Deleted')</script>");
            }
            Binddata();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            string id = lb.CommandArgument;
            Response.Redirect("PostAswer.aspx?id=" + id);

        }

        protected void readanswer_Click(object sender, EventArgs e)
        {
            string ans = ""; string qid = "";
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from answ ", con);
            DataSet dt = new DataSet();
            da.Fill(dt);
            if(dt.Tables[0].Rows.Count>0)
            {
                ans = dt.Tables[0].Rows[0]["answer"].ToString();
                qid = dt.Tables[0].Rows[0]["queryid"].ToString();
            }  

            LinkButton btn = (LinkButton)sender;
            string id = btn.CommandArgument;
            if (id == qid && ans == null )
            {

                Response.Write("<script>alert('Answer Not Posted Yet ')</script>");
            }
            else
            {
               
                Response.Redirect("Read_Answer.aspx?id=" + id);
            }
            

        }
    }
}