using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections;


public partial class ProductDetails : System.Web.UI.Page
{

    public const string CartSessionKey = "CartId";
    public string ShoppingCartId { get; set; }
    public int Quantity { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!(Request.QueryString["id"] == null))
        {
            String ServiceID = Request.QueryString["id"];
            Debug.WriteLine("service id is:" + ServiceID);
            if (ServiceID == "1" || ServiceID == "2")
            {


                lights.Visible = true;
            }

        }
    }



    protected void Button1_Click2(object sender, EventArgs e)
    {
        
        if (!(Request.QueryString["id"] == null))
        {
            String ServiceID = Request.QueryString["id"];
            string connectionString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog = z1776252; Persist Security Info = True; User ID = z1776252; Password = Bw1243$h11";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    Debug.WriteLine("before try");
                    con.Open();
                    Debug.WriteLine("inside try");
                    using (SqlCommand cmd = new SqlCommand("SELECT Price FROM Services_Table where ServiceID=@serviceid", con))
                    {
                        cmd.Parameters.AddWithValue("@serviceid", ServiceID);



                        Debug.WriteLine("before using");
                        int price = Convert.ToInt32(cmd.ExecuteScalar());
                        Debug.WriteLine("price is:" + price);
                        int TotalAmount = 0;
                        /*int OPrice = Int32.Parse("price");
                        Debug.WriteLine("formatted price is:" + OPrice);*/
                        if (ServiceID == "1" || ServiceID == "2")
                        {
                            int quantity = Convert.ToInt32(DropDownList1.SelectedValue);

                            Debug.WriteLine("quantity is:" + quantity);

                            TotalAmount = price * quantity;
                        }
                        else
                        {
                            TotalAmount = price;
                        }
                        Debug.WriteLine("totalamount is:" + TotalAmount);
                        Label2.Text = TotalAmount.ToString();
                        double tax = 0.15 * TotalAmount;
                        Debug.WriteLine("tax is:" + tax);
                        Label4.Text = tax.ToString();
                        double CompleteAmount = TotalAmount + tax;
                        Label6.Text = CompleteAmount.ToString();
                        Debug.WriteLine("ca is:" + CompleteAmount);
                        Label1.Visible = true;
                        Label2.Visible = true;
                        Label3.Visible = true;
                        Label4.Visible = true;
                        Label5.Visible = true;
                        Label6.Visible = true;
                        Button2.Visible = true;
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label7.Visible = true;
        Button3.Visible = true;
        if (!(Session["email"] == null))
        {
            Debug.WriteLine("emailin session is:" + Session["email"].ToString());
            String ServiceID = Request.QueryString["id"];
            string connectionString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog = z1776252; Persist Security Info = True; User ID = z1776252; Password = Bw1243$h11";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    Debug.WriteLine("before try");
                    con.Open();
                    int custid = 0;
                    String custname = null;
                    using (SqlCommand cmd = new SqlCommand("SELECT cus_id,cus_fullname FROM Customer_Table where cus_email=@emailid", con))
                    {
                        cmd.Parameters.AddWithValue("@emailid", Session["email"].ToString());
                        SqlDataReader reader = cmd.ExecuteReader();
                        while (reader.Read())
                        {
                            custid = (int)reader[0];
                            custname = reader[1].ToString();
                        }
                        reader.Close();

                        if (!(Request.QueryString["id"] == null))
                        {
                            String ServID = Request.QueryString["id"];
                            using (SqlCommand cmd1 = new SqlCommand("insert into orders_table (cus_id,cus_fullname,s_id,session_id,address,order_amount,order_date,order_time) values(@cid,@fullname,@sid,@sessid,@addr,@amount,@date,@time)", con))
                            {
                                cmd1.Parameters.AddWithValue("@cid", custid);
                                cmd1.Parameters.AddWithValue("@fullname", custname);
                                cmd1.Parameters.AddWithValue("@sid", ServID);
                                cmd1.Parameters.AddWithValue("@sessid", custid);
                                cmd1.Parameters.AddWithValue("@addr", Address.Text);

                                cmd1.Parameters.AddWithValue("@amount", Label6.Text);
                                cmd1.Parameters.AddWithValue("@date", date.Value);
                                cmd1.Parameters.AddWithValue("@time", DropDownList2.SelectedValue);

                                cmd1.ExecuteNonQuery();
                                Session["sessionid"] = custid;
                                Session["UserName"] = custname;
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

        else
        {
            ShoppingCartId = GetCartId();
            Session["sessionid"] = ShoppingCartId;
            String ServiceID = Request.QueryString["id"];
            String CustName = TextBox1.Text;
            string connectionString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog = z1776252; Persist Security Info = True; User ID = z1776252; Password = Bw1243$h11";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd1 = new SqlCommand("insert into orders_table (cus_id,cus_fullname,s_id,session_id,address,order_amount,order_date,order_time) values(@cid,@fullname,@sid,@sessid,@address,@amount,@date,@time)", con))
                    {
                        cmd1.Parameters.AddWithValue("@cid", 0);
                        cmd1.Parameters.AddWithValue("@fullname", CustName);
                        cmd1.Parameters.AddWithValue("@sid", ServiceID);
                        cmd1.Parameters.AddWithValue("@sessid", ShoppingCartId);
                        cmd1.Parameters.AddWithValue("@address", Address.Text);
                        cmd1.Parameters.AddWithValue("@amount", Label6.Text);
                        cmd1.Parameters.AddWithValue("@date", date.Value);
                        cmd1.Parameters.AddWithValue("@time", DropDownList2.SelectedValue);


                        cmd1.ExecuteNonQuery();
                        Session["UserName"] = CustName;
                        Debug.WriteLine("naame in session is:" + Session["UserName"].ToString());

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

         public string GetCartId()
    {
        Debug.WriteLine("inside getcartid");
        Debug.WriteLine("the pain value is:" + HttpContext.Current.Session[CartSessionKey]);

        if (HttpContext.Current.Session[CartSessionKey] == null)
        {
            Debug.WriteLine("inside if of getcartid");
            if (!string.IsNullOrWhiteSpace(HttpContext.Current.User.Identity.Name))
            {
                Debug.WriteLine("inside 2nd if of getcartid");
                HttpContext.Current.Session[CartSessionKey] = HttpContext.Current.User.Identity.Name;
            }
            else
            {
                Debug.WriteLine("obviously inside else");
                // Generate a new random GUID using System.Guid class.     
                Guid tempCartId = Guid.NewGuid();
                Debug.WriteLine("temp cart id is:" + tempCartId);
                HttpContext.Current.Session[CartSessionKey] = tempCartId.ToString();

            }
        }
        return HttpContext.Current.Session[CartSessionKey].ToString();
    }


}