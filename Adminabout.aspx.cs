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
    public partial class Adminabout : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=AHAD\SQLEXPRESS;Initial Catalog=TravelTourism;Integrated Security=True; Pooling=False");
        int RowCount;

        protected void Page_Load(object sender, EventArgs e)
        {
            bindDataToGrid();
        }

        private void bindDataToGrid()
        {
            SqlDataAdapter da = null;
            conn.Open();
            da = new SqlDataAdapter("select * from AboutUs", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            conn.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string updateQuery = "Update AboutUs set Heading='" + txtheading.Text + "',description='" + txtdesc.Text + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(updateQuery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            bindDataToGrid();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from AboutUs", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {
                string head = dt.Rows[i]["Heading"].ToString();
                string desc = dt.Rows[i]["description"].ToString();
                txtheading.Text = head;
                txtdesc.Text = desc;
            }
        }
    }
}