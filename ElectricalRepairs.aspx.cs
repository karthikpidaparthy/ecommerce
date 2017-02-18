using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ElectricalRepairs : System.Web.UI.Page
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
                Debug.WriteLine("before try");
                con.Open();
                Debug.WriteLine("inside try");
                using (SqlCommand cmd = new SqlCommand("SELECT ServiceID, Service,ImagePath FROM Services_Table where ServiceTypeID='1'", con))
                {
                    Debug.WriteLine("inside using try");


                    Debug.WriteLine("before using");
                    using (System.Data.SqlClient.SqlDataAdapter sda = new System.Data.SqlClient.SqlDataAdapter(cmd))
                    {
                        Debug.WriteLine("inside 2nd using");
                        DataTable dt = new DataTable();
                        Debug.WriteLine("data table is:" + dt.Rows.Count);
                        sda.Fill(dt);
                        serviceList.DataSource = dt;
                        serviceList.DataBind();

                        Debug.WriteLine("data table2 is:" + dt.Rows.Count);
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






    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        LinkButton btn = (LinkButton)sender;
        String id = btn.CommandArgument.ToString();

        Debug.WriteLine("id in elect is:" + id);
        Response.Redirect("ProductDetails.aspx?id="+id);
    }


}