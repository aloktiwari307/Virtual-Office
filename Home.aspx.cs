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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                emp();
                doc();
                efor();
                
            }


        }
        public  void emp()
        {

            string constr = ConfigurationManager.ConnectionStrings["Virtual_OfficeConnectionString"].ConnectionString;
            string query = @"SELECT COUNT(id) FROM emp_register";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataSet ds = new DataSet())
                        {
                            sda.Fill(ds);
                            Label1.Text = ds.Tables[0].Rows[0][0].ToString();
                        }
                    }
                }
            }
        }
        public  void doc()
        {
            string constr = ConfigurationManager.ConnectionStrings["Virtual_OfficeConnectionString"].ConnectionString;
            string query = @"SELECT COUNT(id) FROM document";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataSet ds = new DataSet())
                        {
                            sda.Fill(ds);
                            Label2.Text = ds.Tables[0].Rows[0][0].ToString();
                        }
                    }
                }
            }




        }

        public void efor()
        {
            string constr = ConfigurationManager.ConnectionStrings["Virtual_OfficeConnectionString"].ConnectionString;
            string query = @"SELECT COUNT(id) FROM ques";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataSet ds = new DataSet())
                        {
                            sda.Fill(ds);
                            Label3.Text = ds.Tables[0].Rows[0][0].ToString();
                        }
                    }
                }
            }




        }





    }
}