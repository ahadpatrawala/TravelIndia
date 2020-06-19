using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TravelWebsite
{
    public partial class destinations : System.Web.UI.Page
    {  protected void Page_Load(object sender, EventArgs e)
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string city = DropDownList1.Text;
            if (city == "Mumbai")
            {
                Response.Redirect("mumbai.aspx");
            }
            else if(city=="Goa")
            {
                Response.Redirect("Goa.aspx");
            }
          else if(city=="Gangtok")
                {
                    Response.Redirect("gangtok.aspx");
                }
            else if (city == "Nainital")
            {
                Response.Redirect("nainital.aspx");
            }
            else if (city == "Jammu&Kashmir")
            {
                Response.Redirect("jammu.aspx");
            }
            else if (city == "Ooty")
            {
                Response.Redirect("Ooty.aspx");
            }
            else if (city == "Mussoorie")
            {
                Response.Redirect("Mussoorie.aspx");
            }
            else if (city == "Kerala")
            {
                Response.Redirect("kerala.aspx");
            }
            else if (city == "Shimla")
            {
                Response.Redirect("shimla.aspx");
            }
            else if (city == "Jaipur")
            {
                Response.Redirect("jaipur.aspx");
            }
            else
            {
                Label1.Text = "Select a city";
                Label1.ForeColor = System.Drawing.Color.Red;
            }


        }
    }
}