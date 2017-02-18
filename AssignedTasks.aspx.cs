using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AssignedTasks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindListView();
        }
    }
        private void BindListView()
    {
        string connectionString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog = z1776252; Persist Security Info = True; User ID = z1776252; Password = Bw1243$h11";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            try
            {
                Debug.WriteLine("shopping cart before try");
                con.Open();
                Debug.WriteLine("shopping cart inside try");

                using (SqlCommand cmd = new SqlCommand("SELECT o.ord_id,s.service,o.order_date,o.order_time,t.t_fname+' '+t.t_lname as Technician_Name from orders_table o,services_table s,Technician_table t where s.serviceid=o.s_id and o.status='Assigned' and o.t_id=t.t_id", con))
                {
                    Debug.WriteLine("admin inside using try");


                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        Debug.WriteLine("shopping cart inside 2nd using");
                        DataTable dt = new DataTable();
                        Debug.WriteLine("data table is:" + dt.Rows.Count);


                        sda.Fill(dt);
                        AssignedTasksList.DataSource = dt;
                        AssignedTasksList.DataBind();

                       
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
