﻿ using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TechnicianHome : System.Web.UI.Page
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

                using (SqlCommand cmd = new SqlCommand("SELECT o.ord_id,o.cus_fullname,o.address,o.order_date,o.order_time  from orders_table o where o.status='Assigned' and o.t_id=@tid", con))
                {

                    Debug.WriteLine("admin inside using try");
                    cmd.Parameters.AddWithValue("@tid", Session["tid"].ToString());

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        Debug.WriteLine("shopping cart inside 2nd using");
                        DataTable dt = new DataTable();
                        Debug.WriteLine("data table is:" + dt.Rows.Count);


                        sda.Fill(dt);
                        TechTasksList.DataSource = dt;
                        TechTasksList.DataBind();
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
       /* GridViewRow row = btn.NamingContainer as GridViewRow;
        DropDownList ss = TasksList.Rows[row.RowIndex].Cells[4].FindControl("Technicians") as DropDownList;
        String TechName = ss.SelectedValue;*/
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            try
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("Update orders_table set status='Completed' where ord_id=@ordid", con))
                    {
                    //cmd.Parameters.AddWithValue("@car", Session["cartid"].ToString());
                    cmd.Parameters.AddWithValue("@ordid", OrdId);
                       // cmd.Parameters.AddWithValue("@techid", TechID);
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