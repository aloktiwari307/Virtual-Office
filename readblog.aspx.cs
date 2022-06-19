using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Virtual_Office_Project.admin
{
    public partial class readblog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                if (Request.QueryString["id"] != null)
                {
                    //sstring id = Request.QueryString["id"];
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Virtual_OfficeConnectionString"].ConnectionString);
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter("Select * from blog where id=" + Request.QueryString["id"], con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        Label1.Text = dt.Rows[0]["topic"].ToString();
                        Label2.Text = dt.Rows[0]["message"].ToString();
                        Image1.ImageUrl = dt.Rows[0]["image"].ToString();
                    }
                    con.Close();
                }
                else
                {
                    Response.Write("<script>alert('No Data Found')</script>");
                    Response.Redirect("BlogPost.aspx");
                }

            
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("BlogPost.aspx");
        }
    }
}