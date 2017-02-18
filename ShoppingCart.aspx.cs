using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingCart : System.Web.UI.Page
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
                if (Session["sessionid"] == null)
                {
                    Label8.Visible = true;
                }
                else
                {
                    Label4.Visible = true;
                    Label5.Visible = true;
                    using (SqlCommand cmd = new SqlCommand("SELECT o.ord_id,s.service,o.address,o.order_amount from orders_table o,services_table s where s.serviceid=o.s_id and o.session_id=@sessid", con))
                    {
                        Debug.WriteLine("shopping cart inside using try");

                        cmd.Parameters.AddWithValue("@sessid", Session["sessionid"].ToString());
                        Debug.WriteLine("cart id in sc is:" + Session["sessionid"].ToString());
                        Debug.WriteLine("shopping cart before using");
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            Debug.WriteLine("shopping cart inside 2nd using");
                            DataTable dt = new DataTable();
                            Debug.WriteLine("data table is:" + dt.Rows.Count);


                            sda.Fill(dt);
                            CartList.DataSource = dt;
                            CartList.DataBind();

                            Debug.WriteLine("shopping cart data table2 is:" + dt.Rows.Count);
                           decimal total = dt.AsEnumerable().Sum(row => row.Field<decimal>("Order_Amount") );
                            Session["totalPrice"] = null;
                            Session["totalPrice"] = total.ToString();
                            /*CartList.FooterRow.Cells[1].Text = "Your Grand Total";
                            CartList.FooterRow.Cells[1].HorizontalAlign = HorizontalAlign.Right;
                            CartList.FooterRow.Cells[2].Text = total.ToString("N2");*/
                            Label5.Text = total.ToString("N2");
                          /*  if (Button2.Visible == false)
                            {
                                Button2.Visible = true;
                            }*/


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
        String id = btn.CommandArgument.ToString();

        string connectionString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog = z1776252; Persist Security Info = True; User ID = z1776252; Password = Bw1243$h11";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            try
            {
                Debug.WriteLine("shopping cart delete before try");
                con.Open();
                Debug.WriteLine("shopping cart delete inside try");
                using (SqlCommand cmd = new SqlCommand("Delete From orders_table where ord_id=@ordid", con))
                {
                    //cmd.Parameters.AddWithValue("@car", Session["cartid"].ToString());
                    cmd.Parameters.AddWithValue("@ordid", id);
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

  

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }
}