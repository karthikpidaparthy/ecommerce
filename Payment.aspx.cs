using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string connectionString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog = z1776252; Persist Security Info = True; User ID = z1776252; Password = Bw1243$h11";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            try
            {
                Debug.WriteLine("before try");
                con.Open();
                Debug.WriteLine("inside try");
                using (SqlCommand cmd = new SqlCommand("SELECT s.service,o.order_amount from orders_table o,services_table s where s.serviceid=o.s_id and o.session_id=@sessid", con))
                {
                    cmd.Parameters.AddWithValue("@sessid", Session["sessionid"].ToString());
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        Debug.WriteLine("shopping cart inside 2nd using");
                        System.Data.DataTable dt = new DataTable();
                        Debug.WriteLine("data table is:" + dt.Rows.Count);


                        sda.Fill(dt);
                        OrderList.DataSource = dt;
                        OrderList.DataBind();

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

    protected void Button1_Click(object sender, EventArgs e)
    {

        string connectionString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog = z1776252; Persist Security Info = True; User ID = z1776252; Password = Bw1243$h11";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            try
            {
                Debug.WriteLine("before try");
                con.Open();
                Debug.WriteLine("inside try");
                using (SqlCommand cmd = new SqlCommand("update orders_table set status='Open' where session_id=@sessid", con))
                {
                    cmd.Parameters.AddWithValue("@sessid", Session["sessionid"].ToString());
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Thanks.aspx");
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