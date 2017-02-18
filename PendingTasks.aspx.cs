using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PendingTasks : System.Web.UI.Page
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

                using (SqlCommand cmd = new SqlCommand("SELECT o.ord_id,s.service,o.order_date,o.order_time  from orders_table o,services_table s where s.serviceid=o.s_id and o.status='Open'", con))
                {
                    Debug.WriteLine("admin inside using try");


                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        Debug.WriteLine("shopping cart inside 2nd using");
                        DataTable dt = new DataTable();
                        Debug.WriteLine("data table is:" + dt.Rows.Count);


                        sda.Fill(dt);
                        TasksList.DataSource = dt;
                        TasksList.DataBind();

                        foreach (GridViewRow row in TasksList.Rows)
                        {
                            string ServiceID = (row.FindControl("Service") as Label).Text;
                            DropDownList Technicians = (row.FindControl("Technicians") as DropDownList);

                            using (SqlCommand cmd1 = new SqlCommand("SELECT T_Fname+' '+T_lname as Technician from Technician_Table where s_id=(select serviceid from services_table where service=@sev ) ", con))
                            {
                                cmd1.Parameters.AddWithValue("@sev", ServiceID.Trim());
                                using (SqlDataAdapter sda1 = new SqlDataAdapter(cmd1))
                                {
                                    System.Diagnostics.Debug.WriteLine("shopping cart inside 2nd using");
                                    using (DataSet ds = new DataSet())
                                    {
                                        sda1.Fill(ds);
                                        Technicians.DataSource = ds;
                                        Technicians.DataTextField = "Technician";
                                        Technicians.DataValueField = "Technician";
                                        Technicians.DataBind();
                                        Debug.WriteLine("dd list is:" + Technicians.Items.Count);
                                    }





                                    //Add Default Item in the DropDownList
                                    Technicians.Items.Insert(0, new ListItem("Please select"));

                                    //Select the Country of Customer in DropDownList

                                }

                            }
                        }
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
        Button btn = (Button)sender;
        String OrdId = btn.CommandArgument.ToString();
        string connectionString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog = z1776252; Persist Security Info = True; User ID = z1776252; Password = Bw1243$h11";
        GridViewRow row = btn.NamingContainer as GridViewRow;
        DropDownList ss = TasksList.Rows[row.RowIndex].Cells[4].FindControl("Technicians") as DropDownList;
        String TechName = ss.SelectedValue;
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            try
            {
                using (SqlCommand cmd1 = new SqlCommand("select t_id from Technician_Table where t_fname+' '+T_Lname=@techname", con))
                {
                    //cmd.Parameters.AddWithValue("@car", Session["cartid"].ToString());
                    cmd1.Parameters.AddWithValue("@techname", TechName.Trim());

                    con.Open();
                    int TechID = Convert.ToInt32(cmd1.ExecuteScalar());
                    using (SqlCommand cmd = new SqlCommand("Update orders_table set status='Assigned',t_id=@techid  where ord_id=@ordid", con))
                    {
                        //cmd.Parameters.AddWithValue("@car", Session["cartid"].ToString());
                        cmd.Parameters.AddWithValue("@ordid", OrdId);
                        cmd.Parameters.AddWithValue("@techid", TechID);
                        cmd.ExecuteNonQuery();
                        this.BindListView();
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


    protected void Button2_Click(object sender, EventArgs e)
    {

        Button btn = (Button)sender;
        String OrdId = btn.CommandArgument.ToString();
        string connectionString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog = z1776252; Persist Security Info = True; User ID = z1776252; Password = Bw1243$h11";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            try
            {

                con.Open();
                using (SqlCommand cmd = new SqlCommand("Update orders_table set status='Rejected' where ord_id=@ordid", con))
                {
                    //cmd.Parameters.AddWithValue("@car", Session["cartid"].ToString());
                    cmd.Parameters.AddWithValue("@ordid", OrdId);
                    cmd.ExecuteNonQuery();
                    this.BindListView();
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
