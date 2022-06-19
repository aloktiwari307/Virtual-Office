using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Virtual_Office_Project.admin
{
    public partial class Emp_login_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["empname"].ToString();
            Label2.Text = Session["pass"].ToString();
            Label3.Text = Session["empid"].ToString();

        }
    }
}