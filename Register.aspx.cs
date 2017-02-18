using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string connectionString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog = z1776252; Persist Security Info = True; User ID = z1776252; Password = Bw1243$h11";

        using (SqlConnection con = new SqlConnection(connectionString))

        {

            try

            {

                con.Open();

                System.Diagnostics.Debug.WriteLine("connection is open");

                using (var cmd = new SqlCommand("Insert into Customer_Table(cus_fullname,cus_email,cus_password) values(@cusname, @email,@password)", con))

                {

                    cmd.Parameters.AddWithValue("@cusname", TextBox3.Text);

                    cmd.Parameters.AddWithValue("@email", TextBox1.Text);

                    cmd.Parameters.AddWithValue("@password", TextBox2.Text);

                    int count = cmd.ExecuteNonQuery();
                    Session["UserName"] = TextBox4.Text;

                    Response.Redirect("Login.aspx");

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
