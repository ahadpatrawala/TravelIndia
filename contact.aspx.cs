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
namespace TravelWebsite
{
    public partial class contacts : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Data Source=AHAD\SQLEXPRESS;Initial Catalog=TravelTourism;Integrated Security=True; Pooling=False");
        int RowCount;  
        
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

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string insertQuery = "Insert into feedback values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + txtmsg.Text + "')";
            conn.Open();
            SqlCommand cmd1 = new SqlCommand(insertQuery, conn);
            cmd1.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("index1.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index1.aspx");
        }
    }
}