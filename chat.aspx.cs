using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Virtual_Office_Project.admin
{
    public partial class chat : System.Web.UI.Page
    {
        static int user = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(Session["username"]==null)
            //{
            //    Response.Redirect("login.aspx");
            //}

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string my = "";
            string str = "";
            if (lbluname.Text == Session["from"].ToString())
            {
                string name = Session["from"].ToString();
                string message = txtsend.Text;
                my = name + "::" + message;
                str = str + my;
            }
            else
            {
                string name = Session["to"].ToString();
                string message = txtsend.Text;
                my = name + "::" + message;
            }

            Application["message"] = Application["message"] + my + Environment.NewLine;
            txtsend.Text = "";

        }

        protected void addd_Click(object sender, EventArgs e)
        {
            if (user == 0)
            {
                Session["from"] = txtname.Text;
                user++;
            }
            else
            {
                Session["to"] = txtname.Text;
            }
            lbluname.Text = txtname.Text;
            txtname.Text = "";

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtname.Text = DropDownList1.SelectedValue.ToString();
        }
    }
}