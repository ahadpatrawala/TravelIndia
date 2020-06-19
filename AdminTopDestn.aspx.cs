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
    public partial class AdminTopDestn : System.Web.UI.Page
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
            da = new SqlDataAdapter("select * from Topdestinations", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            conn.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string insertQuery = "Update Topdestinations set Name='" + txtname.Text + "',Description='" + txtdesc.Text + "',Price='" + txtprice.Text + "',Rank='" + txtrank.Text + "'  where Rank='" + txtrank.Text + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            bindDataToGrid();
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Topdestinations where Rank='" + DropDownList1.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {
                string name = dt.Rows[i]["Name"].ToString();
                string desc = dt.Rows[i]["Description"].ToString();
                string price = dt.Rows[i]["Price"].ToString();
                string rank = dt.Rows[i]["Rank"].ToString();
                txtname.Text = name;
                txtdesc.Text = desc;
                txtprice.Text = rank;
                txtrank.Text = price;
            }
        }
    }
}