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
    public partial class verifyuser : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=AHAD\\SQLEXPRESS;Initial Catalog=TravelTourism;Integrated Security=True; Pooling=False");
        int RowCount;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select Email,Question,Answer from register where Email='" + txtEmailId.Text + "'and Question='" + DropDownList1.Text + "'and Answer='" + txtAnswer.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {
                string Email = dt.Rows[i]["Email"].ToString();
                if (dt.Rows.Count > 0)
                {
                    Response.Redirect("ResetPassword.aspx");
                }
                else
                {
                    //lblStatus.Text = "Invalid";
                    //this.lblStatus.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}