using System;
using System.Collections.Generic;
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

    public partial class FlightTicket : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=AHAD\\SQLEXPRESS;Initial Catalog=TravelTourism;Integrated Security=True; Pooling=False");
        int RowCount;
        int total;
        int total1, total2 = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                logohome.NavigateUrl = "~/index1.aspx";
                HyperLink1.NavigateUrl = "~/index1.aspx";
                Logout.Visible = false;
            }
            else
            {
                logohome.NavigateUrl = "~/index2.aspx";
                HyperLink1.NavigateUrl = "~/index2.aspx";
                Logout.Visible = true;
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string updateQuery = "select distinct * from flights where ORIGIN='" + drpOrigin.Text + "' and DESTINATION='" + drpdestnn.Text + "'";
            string update1Query = "select distinct * from flights where ORIGIN='" + drpdestnn.Text + "' and DESTINATION='" + drpOrigin.Text + "'";
            conn.Open();
            SqlDataAdapter da = null;
            SqlDataAdapter da1 = null;
            da = new SqlDataAdapter(updateQuery, conn);
            da1 = new SqlDataAdapter(update1Query, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            GridView2.DataSource = ds1.Tables[0];
            GridView2.DataBind();
            conn.Close();
            if (ds.Tables[0].Rows.Count == 0)
            {
                Label1.Text = "No data found";
            }
            if (ds1.Tables[0].Rows.Count == 0)
            {
                Label1.Text = "No data found";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string update2Query = "select distinct * from flights where ORIGIN='" + drporigin1.Text + "' and DESTINATION='" + drpdestn1.Text + "'";
            conn.Open();
            SqlDataAdapter da2 = null;
            da2 = new SqlDataAdapter(update2Query, conn);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            GridView1.DataSource = ds2.Tables[0];
            GridView1.DataBind();
            conn.Close();
            if (ds2.Tables[0].Rows.Count == 0)
            {
                Label1.Text = "No data found";
            }
        }

        protected void GridView2_RowCreated(object sender, GridViewRowEventArgs e)
        {

            GridViewRow row = e.Row;
            // Intitialize TableCell list
            List<TableCell> columns = new List<TableCell>();
            foreach (DataControlField column in GridView1.Columns)
            {
                //Get the first Cell /Column
                TableCell cell = row.Cells[0];
                // Then Remove it after
                row.Cells.Remove(cell);
                //And Add it to the List Collections
                columns.Add(cell);
            }

            // Add cells
            row.Cells.AddRange(columns.ToArray());
        }

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {

            GridViewRow row = e.Row;
            // Intitialize TableCell list
            List<TableCell> columns = new List<TableCell>();
            foreach (DataControlField column in GridView1.Columns)
            {
                //Get the first Cell /Column
                TableCell cell = row.Cells[0];
                // Then Remove it after
                row.Cells.Remove(cell);
                //And Add it to the List Collections
                columns.Add(cell);
            }

            // Add cells
            row.Cells.AddRange(columns.ToArray());
        }

        protected void btnbook_Click(object sender, EventArgs e)
        {
            Session["Origin"] = drpOrigin.Text;
            Session["Origin1"] = drporigin1.Text;
            Session["Destination"] = drpdestnn.Text;
            Session["Destination1"] = drpdestn1.Text;
            Session["Dprt"] = txtstart.Text;
            Session["Return"] = txtend.Text;
            Session["Dprt1"] = txtstart1.Text;
            Response.Redirect("Flightbook.aspx");
        }
       
        protected void rbtnSelect_CheckedChanged(object sender, EventArgs e)
        {
            //Clear the existing selected row 
            foreach (GridViewRow oldrow in GridView1.Rows)
            {
                ((RadioButton)oldrow.FindControl("rbtnSelect")).Checked = false;
            }

            //Set the new selected row
            RadioButton rb = (RadioButton)sender;
            GridViewRow row = (GridViewRow)rb.NamingContainer;
            ((RadioButton)row.FindControl("rbtnSelect")).Checked = true;

            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                GridViewRow ro = GridView1.Rows[i];
                RadioButton rdb = (RadioButton)ro.FindControl("rbtnSelect");

                if (rdb.Checked == true)
                {
                    Session["FlightNo"] = GridView1.Rows[i].Cells[2].Text;
                    Session["Departure"] = GridView1.Rows[i].Cells[3].Text;
                    Session["Arrival"] = GridView1.Rows[i].Cells[4].Text;
                    Random rand = new Random((int)DateTime.Now.Ticks);
                    total1 = rand.Next(2000, 25000);
                    Session["Total1"] = total1.ToString();
                    Session["Total2"] = total2.ToString();
                    Session["FlightNo1"] = "";
                    Session["Departure1"] = "";
                    Session["Arrival1"] = "";
                }
            }          
        }

        protected void rbtnSelect_CheckedChanged1(object sender, EventArgs e)
        {
            //Clear the existing selected row 
            foreach (GridViewRow oldrow in GridView2.Rows)
            {
                ((RadioButton)oldrow.FindControl("rbtnSelect1")).Checked = false;
            }

            //Set the new selected row
            RadioButton rb = (RadioButton)sender;
            GridViewRow row = (GridViewRow)rb.NamingContainer;
            ((RadioButton)row.FindControl("rbtnSelect1")).Checked = true;

            for (int i = 0; i <= GridView2.Rows.Count - 1; i++)
            {
                GridViewRow ro = GridView2.Rows[i];
                RadioButton rdb = (RadioButton)ro.FindControl("rbtnSelect1");

                if (rdb.Checked == true)
                {
                    Session["FlightNo1"] = GridView2.Rows[i].Cells[2].Text;
                    Session["Departure1"] = GridView2.Rows[i].Cells[3].Text;
                    Session["Arrival1"] = GridView2.Rows[i].Cells[4].Text;
                    Random rand = new Random((int)DateTime.Now.Ticks);
                    total2 = rand.Next(2000, 25000);
                    Session["Total2"] = total2.ToString();
                }
            }
        }
    }
}