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
    public partial class index1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=AHAD\SQLEXPRESS;Initial Catalog=TravelTourism;Integrated Security=True; Pooling=False");
        int RowCount;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
               
            }
            else
            {

            }
            
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index1.aspx");
        }

        protected void submit_click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from login where Username='" + txtUsr.Text + "' and Password ='" + txtPwd.Text + "' ", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {
                string UserName = dt.Rows[i]["Username"].ToString();
                string Pwd = dt.Rows[i]["Password"].ToString();
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[i]["Type"].ToString() == "Admin")
                    {
                        Session["username"] = txtUsr.Text;
                        Response.Redirect("AdminHome.aspx");
                        Session.RemoveAll();
                    }
                    else if (dt.Rows[i]["Type"].ToString() == "User")
                    {
                        Session["username"] = txtUsr.Text;
                        Response.Redirect("index2.aspx");
                        Session.RemoveAll();
                    }
                }
                else
                {
                    //Label1.Text = "Invalid username or password";
                    //this.Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}