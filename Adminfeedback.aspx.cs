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
    public partial class Adminfeedback : System.Web.UI.Page
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
            da = new SqlDataAdapter("select * from feedback", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            conn.Close();
        }
    }
}