<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
        <center>
	<section id="contact">
    <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="feature_header text-center">
                            <h3 class="feature_title">Register <b>Here</b></h3></div></div></div>

         <div class="row">
             <div class="contact_full">
                <div class="col-md-6" style="margin-left:25%;">
                    <div class="left_contact">

                         <div class="form-level">
                               

                                <asp:TextBox ID="TextBox3" runat="server"  placeholder="Full Name" class="input-block" required="required"></asp:TextBox>
                                
  
     
                                <span class="form-icon fa fa-user"></span>
                            </div>
                       
                            <div class="form-level">
                               

                                <asp:TextBox ID="TextBox1" runat="server"  placeholder="Email Address" class="input-block" required="required"></asp:TextBox>
                                
  
     
                                <span class="form-icon fa fa-envelope-o"></span>
                            </div>

                            <div class="form-level">
                             

                                 <asp:TextBox ID="TextBox2" class="input-block" placeholder="Password" runat="server" required="required" TextMode="Password"></asp:TextBox>
  
                                <span class="form-icon fa fa-key"></span>
                            </div>


                         <div class="form-level">
                             

                                 <asp:TextBox ID="TextBox4" class="input-block" placeholder=" Confirm Password" runat="server" required="required" TextMode="Password"></asp:TextBox>
  
                                <span class="form-icon fa fa-key"></span><br />
                                 <strong>
<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not match" ControlToCompare="TextBox2" ControlToValidate="TextBox4" ForeColor="#CC0000"></asp:CompareValidator>
                                 </strong>
                            </div>
                        <br /><br />
                          <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click"  CssClass="btn-lg"/>
		<!--	</form>-->
		    <br />
            <br />
          
            
                    </div></div></div></div>

        </div></section>
            </center>
</strong>
</asp:Content>


