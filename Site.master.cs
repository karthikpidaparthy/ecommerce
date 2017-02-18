using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : MasterPage
{
    private const string AntiXsrfTokenKey = "__AntiXsrfToken";
    private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
    private string _antiXsrfTokenValue;

    protected void Page_Init(object sender, EventArgs e)
    {
        // The code below helps to protect against XSRF attacks
        var requestCookie = Request.Cookies[AntiXsrfTokenKey];
        Guid requestCookieGuidValue;
        if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
        {
            // Use the Anti-XSRF token from the cookie
            _antiXsrfTokenValue = requestCookie.Value;
            Page.ViewStateUserKey = _antiXsrfTokenValue;
        }
        else
        {
            // Generate a new Anti-XSRF token and save to the cookie
            _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
            Page.ViewStateUserKey = _antiXsrfTokenValue;

            var responseCookie = new HttpCookie(AntiXsrfTokenKey)
            {
                HttpOnly = true,
                Value = _antiXsrfTokenValue
            };
            if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
            {
                responseCookie.Secure = true;
            }
            Response.Cookies.Set(responseCookie);
        }

        Page.PreLoad += master_Page_PreLoad;
    }

    protected void master_Page_PreLoad(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Set Anti-XSRF token
            ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
            ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
        }
        else
        {
            // Validate the Anti-XSRF token
            if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
            {
                throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
            }
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
  
    }

    protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
    {
        Context.GetOwinContext().Authentication.SignOut();
    }





    protected void Page_PreRender(object sender, EventArgs e)
    {
     
       
            if ( Session["name"]== null)
        {
            Label1.Text = "Guest";
            
        }
      else
        {
            Label1.Text = Session["name"].ToString();
            HyperLink1.Visible = true;
        }
        string connectionString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog = z1776252; Persist Security Info = True; User ID = z1776252; Password = Bw1243$h11";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            try
            {
                
                con.Open();
                Debug.WriteLine("shopping cart inside try");
                using (SqlCommand cmd = new SqlCommand("select count(ord_id) from orders_table where session_id=@sessionid", con))
                {
                    cmd.Parameters.AddWithValue("@sessionid", Session["sessionid"].ToString());


                    String count = cmd.ExecuteScalar().ToString();
                    Label3.Text = count.Trim();
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