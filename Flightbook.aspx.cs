using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelWebsite
{
    public partial class Flightbook : System.Web.UI.Page
    {
        static int i = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnproceed_Click(object sender, EventArgs e)
        {
            Session["pre"] = DropDownList1.Text;
            Session["fname"] = txtfname.Text;
            Session["lname"] = txtlname.Text;
            Session["email"] = txtEmail.Text;
            Session["phone"] = txtPhone.Text;
            Response.Redirect("FlightSummary.aspx");
        }

        /*protected void Button1_Click1(object sender, EventArgs e)
        {
            Label[] l1 = new Label[i];
            for (int j = 0; j < i; j++)
            {
                l1[j] = new Label();
                l1[j].ID = "lbl" + j;
                l1[j].Text = "Passenger" + j;
                form1.Controls.Add(l1[j]);
            }

            TextBox[] td = new TextBox[i];
            for (int j = 0; j < i; j++)
            {
                td[j] = new TextBox();
                td[j].ID = "txt" + j;
                form1.Controls.Add(td[j]);
            }
            i++;
        }*/
    }
}