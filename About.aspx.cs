using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelWebsite
{
    public partial class About : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                logohome.NavigateUrl="~/index1.aspx";
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
    }
}