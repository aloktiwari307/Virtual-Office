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
    public partial class Registration_form : System.Web.UI.Page
    {
      // string str = "Data Source=(local);Initial Catalog=Virtual_Office;Integrated Security=True";
       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Virtual_OfficeConnectionString"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string dpt = "CS"; int a = 0;
             con.Open();
            string f = TextBox1.Text.ToLower();
            string s = TextBox2.Text.ToLower();



            string pass = "123@virtual";
            string username = f + "@virtual.com";
            Random rd = new Random();
            int num = rd.Next();
            string empid = "VS" + num.ToString();



            SqlCommand cmd = new SqlCommand("Insert into emp_register(name,f_name,m_name,email,altemail,phone,altphone,dob,gender,blood,pan,c_address,c_state,c_city,c_pincode,p_adderss,p_country,p_state,p_city,p_pincode,emp_id,emp_user,emp_pass,doj,emp_department,login_status,c_country) values(@name,@f_name,@m_name,@email,@altemail,@phone,@altphone,@dob,@gender,@blood,@pan,@c_address,@c_state,@c_city,@c_pincode,@p_adderss,@p_country,@p_state,@p_city,@p_pincode,@emp_id,@emp_user,@emp_pass,@doj,@emp_department,@login_status,@c_country)", con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text +" "+ TextBox2.Text);
            cmd.Parameters.AddWithValue("@f_name", TextBox3.Text);
            cmd.Parameters.AddWithValue("@m_name",TextBox4.Text);
            cmd.Parameters.AddWithValue("@email", TextBox23.Text);
            cmd.Parameters.AddWithValue("@altemail", TextBox24.Text);
            cmd.Parameters.AddWithValue("@phone", TextBox25.Text);
            cmd.Parameters.AddWithValue("@altphone", TextBox26.Text);
            cmd.Parameters.AddWithValue("@dob",TextBox5.Text);
            cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue );
            cmd.Parameters.AddWithValue("@blood",TextBox7.Text);
            cmd.Parameters.AddWithValue("@pan",TextBox27.Text);
            cmd.Parameters.AddWithValue("c_address",TextBox17.Text);
            cmd.Parameters.AddWithValue("@c_country",DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@c_state",DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@c_city",TextBox10.Text);
            cmd.Parameters.AddWithValue("@c_pincode",TextBox12.Text);
            cmd.Parameters.AddWithValue("@p_adderss",TextBox8.Text);
            cmd.Parameters.AddWithValue("@p_country",DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("@p_state",DropDownList4.SelectedValue);
            cmd.Parameters.AddWithValue("@p_city",TextBox20.Text);
            cmd.Parameters.AddWithValue("@p_pincode",TextBox22.Text);
            cmd.Parameters.AddWithValue("@emp_id",empid);
            cmd.Parameters.AddWithValue("@emp_user",username);
            cmd.Parameters.AddWithValue("@emp_pass", pass);
            cmd.Parameters.AddWithValue("@doj",TextBox16.Text);
            cmd.Parameters.AddWithValue("@emp_department", dpt);
            cmd.Parameters.AddWithValue("@login_status", a);

            int i = cmd.ExecuteNonQuery();
            con.Close(); 
            if(i>0)
            {
                Session["empname"] = username;
                Session["pass"] = pass;
                Session["empid"] = empid;
                Response.Write("Data Submit Successfully");
                Response.Redirect("Emp_login_details.aspx");
            }   
            else
            {
                Response.Write("Data Insertion Failed");
            }
           




        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if(CheckBox1.Checked == true)
            {
                TextBox8.Text = TextBox17.Text;
                DropDownList3.SelectedValue = DropDownList1.SelectedValue;
                DropDownList4.SelectedValue = DropDownList2.SelectedValue;
                TextBox20.Text = TextBox10.Text;
                TextBox22.Text = TextBox12.Text;

            }
        }
    }
}