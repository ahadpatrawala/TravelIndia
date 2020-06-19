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
    public partial class AdminCamp : System.Web.UI.Page
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
            da = new SqlDataAdapter("select * from camp_details", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            conn.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string updateQuery = "Update camp_details set location_id='" + txtlocid.Text + "',description='" + txtdesc.Text + "',start_date='" + txtsdate.Text + "',end_date='" + txtedate.Text + "',c_name='" + txtcname.Text + "' where location_id='" + txtlocid.Text + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(updateQuery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            bindDataToGrid();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from camp_details where c_id='" + DropDownList1.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {
                string cid = dt.Rows[i]["c_id"].ToString();
                string locid = dt.Rows[i]["location_id"].ToString();
                string desc = dt.Rows[i]["description"].ToString();
                string stdate = dt.Rows[i]["start_date"].ToString();
                string edate = dt.Rows[i]["end_date"].ToString();
                string username = dt.Rows[i]["username"].ToString();
                string cname = dt.Rows[i]["c_name"].ToString();
                txtid.Text = cid;
                txtlocid.Text = locid;
                txtdesc.Text = desc;
                txtsdate.Text = stdate;
                txtedate.Text = edate;
                txtcname.Text = cname;
            }
        }
    }
}