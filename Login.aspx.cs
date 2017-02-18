using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["name"] = null;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text == "admin")
        {
            Session["admin"] = TextBox1.Text;
            Response.Redirect("PendingTasks.aspx");
        }
        if (TextBox1.Text.StartsWith("6"))
        {
            String EmpId = TextBox1.Text;
            Session["tid"] = EmpId;
            Response.Redirect("TechnicianHome.aspx");
        }
        if(TextBox1.Text.StartsWith("10"))
        {
            String VendorId = TextBox1.Text;
            Session["Vid"] = VendorId;
            Response.Redirect("VendorHome.aspx");
        }
        else
        {
            string connectionString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog = z1776252; Persist Security Info = True; User ID = z1776252; Password = Bw1243$h11";

            using (SqlConnection con = new SqlConnection(connectionString))

            {

                try

                {

                    con.Open();

                    Debug.WriteLine("connection is open");

                    using (var cmd = new SqlCommand("select cus_fullname from Customer_Table where cus_email = @email and cus_password = @password ", con))

                    {

                        cmd.Parameters.AddWithValue("@email", TextBox1.Text);

                        cmd.Parameters.AddWithValue("@password", TextBox2.Text);

                        String name = (String)cmd.ExecuteScalar();



                        if (name == null)

                        {

                            Label1.Visible = true;

                        }

                        else

                        {
                            Session["email"] = TextBox1.Text;
                            Session["name"] = name;
                            Response.Redirect("Default.aspx");

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
}