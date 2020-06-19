using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelWebsite
{
    public partial class Camp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                logohome.NavigateUrl = "~/index1.aspx";
                HyperLink1.NavigateUrl = "~/index1.aspx";
                Logout.Visible = false;
            }
            else
            {
                logohome.NavigateUrl = "~/index2.aspx";
                HyperLink1.NavigateUrl = "~/index2.aspx";
                Logout.Visible = true;
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index1.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
                Response.Redirect("Camp1.aspx");
         }
        protected void Button3_Click(object sender, EventArgs e)
        {

            Response.Redirect("Camp2.aspx");
           
        }
        protected void Button5_Click(object sender, EventArgs e)
        {

            Response.Redirect("Camp3.aspx");
           
        }
        protected void Button7_Click(object sender, EventArgs e)
        {

            Response.Redirect("Camp4.aspx");
            
        }
        protected void Button9_Click(object sender, EventArgs e)
        {

            Response.Redirect("Camp5.aspx");
            
        }
        protected void Button11_Click(object sender, EventArgs e)
        {

            Response.Redirect("Camp6.aspx");
            
        }

    }
}