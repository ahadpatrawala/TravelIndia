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
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=AHAD\SQLEXPRESS;Initial Catalog=TravelTourism;Integrated Security=True; Pooling=False");
        int RowCount;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click1(object sender, EventArgs e)
        {
            string insertRegQuery = "Insert into register values('" + txtFName.Text + "','" + txtLName.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "','" + txtUsr.Text + "','" + txtPwd.Text + "','" + DropDownList1.Text + "','" + txtAnswer.Text + "')";
            string insertLogQuery = "Insert into login values('" + txtUsr.Text + "','" + txtPwd.Text + "','User')";
           
            conn.Open();
            SqlCommand cmd1 = new SqlCommand(insertRegQuery, conn);
            SqlCommand cmd2 = new SqlCommand(insertLogQuery, conn);
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("index1.aspx");
        }

        protected void txtUsr_TextChanged(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select Username from login where Username='" + txtUsr.Text + "'", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text = "Username exists";
                this.Label1.ForeColor = System.Drawing.Color.Red;
            }
            
            conn.Close();
        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select Email from register where Email='" + txtEmail.Text + "'", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label2.Text = "Email exists";
                this.Label2.ForeColor = System.Drawing.Color.Red;
            }
           
            conn.Close();
        }
    }
}