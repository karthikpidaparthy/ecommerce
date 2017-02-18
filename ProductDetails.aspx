<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="ProductDetails" %>
 <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  
 

<section id="contact">
    <div class="container">
        <div class="row">
  			<div class="col-md-12 col-sm-12 col-xs-12 ">
                <div class="feature_header text-center">
                    <h3 class="feature_title">Book Your<b> Appointment</b></h3>
                    <h4 class="feature_sub">Fill in the necessary details to get going!</h4>
                    <div class="divider"></div>
                </div>
  			</div>
        </div>
        <div class="row">
             <div class="contact_full">
                <div class="col-md-6 left"> 
                    <div class="left_contact">
                       
                            <div class="form-level">
                               

                                <asp:TextBox ID="TextBox1" runat="server"  placeholder="Full Name" class="input-block" required="required"></asp:TextBox>
                                
  
     
                                <span class="form-icon fa fa-user"></span>
                            </div>

                            <div class="form-level">
                             

                                 <asp:TextBox ID="TextBox3" class="input-block" placeholder="Email" runat="server" required="required"></asp:TextBox>
  
                                <span class="form-icon fa fa-envelope-o"></span>
                            </div>


                            <div class="form-level">
                       
                                <asp:TextBox ID="Address" class="input-block" placeholder="Postal Address" required="required" runat="server" TextMode="MultiLine"></asp:TextBox>
                                 <span class="form-icon fa fa-pencil"></span>
                    </div>
                        
                    </div>
                </div>

                <div class="col-md-6 right">
                       
                <div class="form-level">
<input ID="date" class="input-block" placeholder="Date of appointment" runat="server" required="required" type="date" />
                   
                                <span class="form-icon fa fa-calendar-o"></span>
                            </div>


                    <div class="form-level">


                       Time of Appointment:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList2" runat="server" class="input-block">
          <asp:ListItem>10:00 AM</asp:ListItem>
          <asp:ListItem>10:30 AM</asp:ListItem>
          <asp:ListItem>11:00 AM</asp:ListItem>
          <asp:ListItem>11:30 AM</asp:ListItem>
          <asp:ListItem>12:00 PM</asp:ListItem>
          <asp:ListItem>12:30 PM </asp:ListItem>
          <asp:ListItem>01:00 PM</asp:ListItem>
          <asp:ListItem>01:30 PM</asp:ListItem>
          <asp:ListItem>02:00 PM</asp:ListItem>
          <asp:ListItem>02:30 PM</asp:ListItem>
          <asp:ListItem>03:00 PM</asp:ListItem>
          <asp:ListItem>03:30 PM</asp:ListItem>
          <asp:ListItem>04:00 PM</asp:ListItem>
          <asp:ListItem>04:30 PM</asp:ListItem>
          <asp:ListItem>05:00 PM</asp:ListItem>
          <asp:ListItem>05:30 PM</asp:ListItem>
          <asp:ListItem>06:00 PM</asp:ListItem>
          <asp:ListItem>06:30 PM</asp:ListItem>
          <asp:ListItem>07:00 PM</asp:ListItem>
          <asp:ListItem>07:30 PM</asp:ListItem>
          <asp:ListItem>08:00 PM</asp:ListItem>
          <asp:ListItem>08:30 PM</asp:ListItem>
          <asp:ListItem>09:00 PM</asp:ListItem>
      </asp:DropDownList>
                    
                             
                            </div>
<div id="lights" class="form-level"  runat="server" visible="false">

    <br />
    Quantity to be installed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:DropDownList ID="DropDownList1" runat="server" class="input-block" >
          <asp:ListItem>1</asp:ListItem>
          <asp:ListItem>2</asp:ListItem>
          <asp:ListItem>3</asp:ListItem>
          <asp:ListItem>4</asp:ListItem>
          <asp:ListItem>5</asp:ListItem>
          <asp:ListItem>6</asp:ListItem>
          <asp:ListItem>7</asp:ListItem>
          <asp:ListItem>8</asp:ListItem>
          <asp:ListItem>9</asp:ListItem>
          <asp:ListItem>10</asp:ListItem>
      </asp:DropDownList>
    </div>



                    </div>

                </div>
                <div class="col-md-12 text-center">
                    
                    <asp:Button ID="Button1" runat="server" Text="Get Estimted Price" CssClass="btn-dark" OnClick="Button1_Click2" />
                    <br />
                    <br />
                    </div>
            <br /><br />
              <div class="col-md-12 text-center" >
      
                  <strong>
      
                  <asp:Label ID="Label1" runat="server" Text="Service Charges:$" Visible="False" style="font-size: large"></asp:Label><asp:Label ID="Label2" runat="server" Visible="False" style="color: #0000CC !important; font-size: large"></asp:Label></strong>
                  <br />
                  <br />
                   <strong>
                   <asp:Label ID="Label3" runat="server" Text="Tax Charges(15%):$" Visible="False" style="font-size: large"></asp:Label><asp:Label ID="Label4" runat="server" Visible="False" style="color: #0000CC !important; font-size: large"></asp:Label></strong>
                  <br />
                  <br />
                  <strong>
                  <asp:Label ID="Label5" runat="server" Text="Total Price:$" Visible="False" style="font-size: large"></asp:Label>
                  <asp:Label ID="Label6" runat="server" Visible="False" style="color: #0000CC !important; font-size: large"></asp:Label>
                  </strong></div>
                <br /><br />
            <div class="col-md-12 text-center">
                    
                    <asp:Button ID="Button2" runat="server" Text="Add to cart" CssClass="btn-dark" OnClick="Button2_Click" Visible="False" />
                    <br />
                    <br />
                    </div>

            <div class="col-md-12 text-center">
                    
                <strong>
                    
                <asp:Label ID="Label7" runat="server" Text="Added to Cart!!!!" Visible="False" style="color: #339933 !important" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </strong>
                    <br />
                <br />
                    </div>
            <div class="col-md-12 text-center">
                    
                    <asp:Button ID="Button3" runat="server" Text="Explore more services" CssClass="btn-success"  Visible="False" PostBackUrl="~/Services.aspx" Height="55px" />
                    </div>
            </div>
        </div>
    
</section>
 
     </asp:Content>