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
    public partial class Employee_Full_details : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Virtual_OfficeConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            string id = Request.QueryString["id"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from emp_register where id=@id",con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            
            DataSet ds = new DataSet();
            da.Fill(ds);
            if(ds.Tables[0].Rows.Count>0)
            {
                Label2.Text = ds.Tables[0].Rows[0]["name"].ToString();
               // Label4.Text = ds.Tables[0].Rows[0]["name"].ToString();
                Label6.Text = ds.Tables[0].Rows[0]["f_name"].ToString();
                Label8.Text = ds.Tables[0].Rows[0]["m_name"].ToString();
                Label10.Text = ds.Tables[0].Rows[0]["phone"].ToString();
                Label12.Text = ds.Tables[0].Rows[0]["altphone"].ToString();
                Label14.Text = ds.Tables[0].Rows[0]["email"].ToString();
                Label16.Text = ds.Tables[0].Rows[0]["altemail"].ToString();
                Label18.Text = ds.Tables[0].Rows[0]["dob"].ToString();
                Label20.Text = ds.Tables[0].Rows[0]["gender"].ToString();

                Label22.Text = ds.Tables[0].Rows[0]["blood"].ToString();
                Label24.Text = ds.Tables[0].Rows[0]["pan"].ToString();
                Label26.Text = ds.Tables[0].Rows[0]["c_address"].ToString();
                Label28.Text = ds.Tables[0].Rows[0]["c_country"].ToString();
                Label30.Text = ds.Tables[0].Rows[0]["c_state"].ToString();
                Label32.Text = ds.Tables[0].Rows[0]["c_city"].ToString();
                Label34.Text = ds.Tables[0].Rows[0]["c_pincode"].ToString();
                Label36.Text = ds.Tables[0].Rows[0]["p_adderss"].ToString();
                Label38.Text = ds.Tables[0].Rows[0]["p_country"].ToString();
                Label40.Text = ds.Tables[0].Rows[0]["p_state"].ToString();
                Label42.Text = ds.Tables[0].Rows[0]["p_city"].ToString();
                Label44.Text = ds.Tables[0].Rows[0]["p_pincode"].ToString();
                Label46.Text = ds.Tables[0].Rows[0]["doj"].ToString();
            }
            con.Close();

        }
    }
}