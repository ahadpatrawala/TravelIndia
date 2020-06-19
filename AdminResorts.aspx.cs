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
    public partial class AdminResorts : System.Web.UI.Page
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
            da = new SqlDataAdapter("select * from resort_details", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            conn.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string updateQuery = "Update resort_details set resort_name='" + txtresname.Text + "',location_id='" + txtlocid.Text + "',basic_info='" + txtinfo.Text + "',features='" +txtfeatures.Text+"',price='"+txtprice.Text+"' where R_id='" + txtresid.Text + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(updateQuery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            bindDataToGrid();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from resort_details where R_id='" + DropDownList1.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {
                string rid = dt.Rows[i]["R_id"].ToString();
                string rname = dt.Rows[i]["resort_name"].ToString();
                string locid = dt.Rows[i]["location_id"].ToString();
                string info = dt.Rows[i]["basic_info"].ToString();
                string features = dt.Rows[i]["features"].ToString();
                string price = dt.Rows[i]["price"].ToString();
                txtresid.Text = rid;
                txtresname.Text = rname;
                txtlocid.Text = locid;
                txtinfo.Text = info;
                txtfeatures.Text = features;
                txtprice.Text = price;
            }
        }
    }
}