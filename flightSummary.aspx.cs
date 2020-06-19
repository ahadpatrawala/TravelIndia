using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelWebsite
{
    public partial class flightSummary : System.Web.UI.Page
    {
        int t, t1, t2;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Session["Total1"].ToString(); 
            Label4.Text= Session["Total2"].ToString();
            t1 = Convert.ToInt32(Session["Total1"].ToString());
            t2 = Convert.ToInt32(Session["Total2"].ToString());
            t = t1 + t2;
            Label16.Text = "₹" + t.ToString();
            Label5.Text=Session["pre"].ToString();
            Label6.Text=Session["fname"].ToString();
            Label7.Text=Session["lname"].ToString();
            Label8.Text=Session["email"].ToString();
            Label9.Text=Session["phone"].ToString();
            Label10.Text = Session["FlightNo"].ToString();
            Label11.Text = Session["Departure"].ToString();
            Label12.Text = Session["Arrival"].ToString();
            Label13.Text = Session["FlightNo1"].ToString();
            Label14.Text = Session["Departure1"].ToString();
            Label15.Text = Session["Arrival1"].ToString();
            Label17.Text= Session["Origin"].ToString();
            Label26.Text = Session["Destination"].ToString();
            Label30.Text = Session["Origin1"].ToString();
            Label31.Text = Session["Destination1"].ToString();
            Label21.Text= Session["Origin"].ToString();
            Label27.Text=Session["Destination"].ToString();
            Label31.Text = Session["Dprt"].ToString();
            Label32.Text = Session["Dprt1"].ToString();
            Label34.Text = Session["Return"].ToString();
            if(t2==0)
            {
                        Label4.Visible = false;
                        Label21.Visible = false;
                        Label22.Visible = false;
                        Label23.Visible = false;
                        Label24.Visible = false;
                        Label25.Visible = false;
                        Label27.Visible = false;
                        Label29.Visible = false;
                        Label34.Visible = false;
            }
        }

        protected void btnproceed_Click(object sender, EventArgs e)
        {
            Session["Total"] = t.ToString();
            Response.Redirect("FlightPay.aspx");
        }
    }
}