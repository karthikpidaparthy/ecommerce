using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Thanks : System.Web.UI.Page
{
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    StringBuilder htmlTable = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        String username = Session["UserName"].ToString();
        Label1.Text = username;
        string connectionString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog = z1776252; Persist Security Info = True; User ID = z1776252; Password = Bw1243$h11";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            try
            {

                using (SqlCommand cmd = new SqlCommand("SELECT s.service,o.ord_id,o.address,o.order_date,o.order_time from orders_table o,services_table s where o.s_id=s.serviceid and o.session_id=@session", con))
                {
                    Debug.WriteLine("shopping cart inside using try");

                    cmd.Parameters.AddWithValue("@session", Session["sessionid"].ToString());
                    Debug.WriteLine("cart id in sc is:" + Session["sessionid"].ToString());
                    Debug.WriteLine("shopping cart before using");
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        Debug.WriteLine("shopping cart inside 2nd using");
                        DataTable dt = new DataTable();
                        Debug.WriteLine("data table is:" + dt.Rows.Count);


                        sda.Fill(dt);
                        SummaryList.DataSource = dt;
                        SummaryList.DataBind();
                        Session.Clear();
                    }

                }
            }
            catch (Exception ex)

            {

                // Display error message

                String errorMessage = ex.Message;

            }

            finally

            {

                // Close the connection

                con.Close();

            }
        }
    }
}