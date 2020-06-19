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
    public partial class AdminUser : System.Web.UI.Page
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
            da = new SqlDataAdapter("select Fname,Lname,Email,Phone,Username from register", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            conn.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string insertQuery = "Update register set Fname='" + txtfname.Text + "',Lname='" + txtlname.Text + "',Email='" + txtemail.Text + "',Phone='" + txtPhone.Text + "',Username='" + txtusername.Text + "' where Username='" + txtusername.Text + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            bindDataToGrid();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string insertQuery = "Delete from register where Username='" + txtDeleteID.Text + "'";
            string delQuery = "Delete from login where Username='" + txtDeleteID.Text + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            SqlCommand cmd1 = new SqlCommand(delQuery, conn);
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            conn.Close();
            bindDataToGrid();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from register where Username='" + DropDownList1.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {
                string Username = dt.Rows[i]["Username"].ToString();
                string fname=dt.Rows[i]["Fname"].ToString();
                string lname=dt.Rows[i]["Lname"].ToString();
                string email=dt.Rows[i]["Email"].ToString();
                string phone=dt.Rows[i]["Phone"].ToString();
                txtusername.Text = Username;
                txtfname.Text=fname;
                txtlname.Text=lname;
                txtPhone.Text=phone;
                txtemail.Text=email;
            }
        }
    }
}