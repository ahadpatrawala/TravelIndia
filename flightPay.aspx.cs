using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelWebsite
{
    public partial class flightPay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnpay.Text="Pay ₹"+Session["Total"].ToString()+"";
        }

        protected void btnpay_Click(object sender, EventArgs e)
        {
            Session["fname"] = txtfname.Text;
            Session["lname"] = txtlname.Text;
            Session["email"] = txtEmail.Text;
            Session["phone"] = txtPhone.Text;
        }
    }
}