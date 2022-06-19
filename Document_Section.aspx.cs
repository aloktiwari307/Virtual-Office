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
    public partial class Document_Section : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Virtual_OfficeConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void upload_Click(object sender, EventArgs e)
        {

            try
            {
                con.Open();

                FileUpload1.SaveAs(Server.MapPath("~/doc/") + Path.GetFileName(FileUpload1.FileName));
                string str = "~/doc/" + Path.GetFileName(FileUpload1.FileName);
                string ext = Path.GetExtension(FileUpload1.FileName);
                //    if(ext.ToLower()==".html")
                //{
                //    Label1.Text = "Invalid File Selection";
                //}
                if (ext.ToLower() == ".docx" || ext.ToLower() == ".pdf" || ext.ToLower() == ".doc")
                {
                    SqlCommand cmd = new SqlCommand("insert into document (doc_name,doc_file)values(@doc_name,@doc_file) ", con);
                    cmd.Parameters.AddWithValue("@doc_name", TextBox1.Text);

                    cmd.Parameters.AddWithValue("@doc_file", str);

                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Redirect("ViewDocument.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid File Selection')</script>");
                    }
                }
                else if (FileUpload1.FileName == "")
                {
                    Response.Write("<script>alert('Please Select  File')<script>");
                }

                else
                {
                    Response.Write("<script>alert('Please Select Valid File')</script>");
                }
                con.Close();
            }
            catch
            {
                Response.Write("<script>alert('Please Select Valid File')</script>");
            }
                
           
        


    }
    }
}