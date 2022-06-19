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
    public partial class viewemail : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Virtual_OfficeConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from mail where id=" + Request.QueryString["id"], con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Label1.Text = dt.Rows[0]["sender"].ToString();
                    Label2.Text = dt.Rows[0]["receiver"].ToString();
                    Label3.Text = dt.Rows[0]["subject"].ToString();
                    Label6.Text = dt.Rows[0]["body"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('No Data Here')</script>");
                }

            }
            else
            {
                Response.Redirect("Email.aspx");
            }


        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sent_mail.aspx");
        }
    }
}