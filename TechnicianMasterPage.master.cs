using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TechnicianMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_PreRender(object sender, EventArgs e)
    {
        string connectionString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog = z1776252; Persist Security Info = True; User ID = z1776252; Password = Bw1243$h11";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            try
            {
                Debug.WriteLine("shopping cart before try");
                con.Open();
                Debug.WriteLine("shopping cart inside try");

                using (SqlCommand cmd = new SqlCommand("SELECT t_lname from technician_table where t_id=@tid", con))
                {

                    Debug.WriteLine("admin inside using try");
                    cmd.Parameters.AddWithValue("@tid", Session["tid"].ToString());
                    String Tname=cmd.ExecuteScalar().ToString();
                    Label1.Text = Tname;
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