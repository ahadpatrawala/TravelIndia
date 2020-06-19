using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace TravelWebsite
{
    public partial class Booking : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=AHAD\SQLEXPRESS;Initial Catalog=TravelTourism;Integrated Security=True; Pooling=False");
        int RowCount;
        string username;

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
                username = Session["username"].ToString();
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmpVal1.Validate();
            string insertQuery = "Insert into Accommodation_details values('" + txtstart.Text + "','" + txtend.Text + "','" + drpadult.Text + "','" + drpchild.Text + "','" + drprooms.Text + "')";
            conn.Open();
            SqlCommand cmd1 = new SqlCommand(insertQuery, conn);
            SqlCommand cmd = new SqlCommand("select Email from register where Username= '" + Session["Username"].ToString() + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cmd1.ExecuteNonQuery();
            conn.Close();
            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {
                string mailaddr = dt.Rows[i]["Email"].ToString();
                MailMessage email = new MailMessage();
                email.From = new MailAddress("travelindiaweb@gmail.com"); //Enter sender email address
                email.To.Add(mailaddr); //Destination Recipient e-mail address.
                email.Subject = "Your booking is successful";//Subject for your request
                email.Body = "Hi,Your booking is successful with TravelIndia. Enjoy your trip!! From: "+txtstart.Text+" To: "+txtend.Text+" For: "+drpadult.Text+" Adults and Rooms: "+drprooms.Text+" Greetings from Team Travel India";
                email.IsBodyHtml = true;
                //SMTP SERVER DETAILS
                SmtpClient smtpc = new SmtpClient("smtp.gmail.com");
                smtpc.Port = 587;
                smtpc.UseDefaultCredentials = false;
                smtpc.EnableSsl = true;
                smtpc.Credentials = new NetworkCredential("travelindiaweb@gmail.com", "trvlnd@1");
                smtpc.Send(email);
                Label2.Text = "Mail Sent";
            }
        }
    }
}