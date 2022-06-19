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
    public partial class ViewDocument : System.Web.UI.Page
    {
      //  SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Virtual_OfficeConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void upload_document_Click(object sender, EventArgs e)
        {
            Response.Redirect("Document_Section.aspx");
        }
    }
}