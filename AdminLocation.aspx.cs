
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
    public partial class AdminLocation : System.Web.UI.Page
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
            da = new SqlDataAdapter("select * from location_details", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            conn.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string insertQuery = "Update location_details set Location_name='" + txtname.Text + "',Introduction='" + txtintro.Text + "',Attractions='" + txtattractions.Text + "',timetovisit='" + txttimetovisit.Text + "',howtoreach='" + txthow.Text + "' where Location_name='" + txtname.Text + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            bindDataToGrid();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string insertQuery = "Delete from location_details where Location_name='" + txtname.Text + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            bindDataToGrid();
        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from location_details where location_id='" + DropDownList1.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {
                string locid = dt.Rows[i]["location_id"].ToString();
                string intro = dt.Rows[i]["Introduction"].ToString();
                string locname = dt.Rows[i]["location_name"].ToString();
                string attr = dt.Rows[i]["Attractions"].ToString();
                string timetovisit = dt.Rows[i]["timetovisit"].ToString();
                string how = dt.Rows[i]["howtoreach"].ToString();
                txtid.Text = locid;
                txtintro.Text = intro;
                txtname.Text = locname;
                txtattractions.Text= attr;
                txttimetovisit.Text= timetovisit;
                txthow.Text= how;
            }
        }
    }
}