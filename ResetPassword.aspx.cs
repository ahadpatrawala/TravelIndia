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
    public partial class ResetPassword : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=AHAD\SQLEXPRESS;Initial Catalog=TravelTourism;Integrated Security=True; Pooling=False");
        int RowCount;

        protected void btnChangePwd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select Username from login where Username='" + txtUsername.Text + "'", conn);
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {
                string UserName = dt.Rows[i]["Username"].ToString();
                if (dt.Rows.Count > 0)
                {
                    string updateQuery = "Update register set Password ='" + txtNewPwd.Text + "' where Username='" + txtUsername.Text + "'";
                    SqlCommand cmd1 = new SqlCommand(updateQuery, conn);
                    cmd1.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("index1.aspx");
                }
                else
                {
                    lblStatus.Text = "Invalid username";
                    this.lblStatus.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}