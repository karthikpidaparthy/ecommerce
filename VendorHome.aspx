<%@ Page Title="" Language="C#" MasterPageFile="~/VendorMasterPage.master" AutoEventWireup="true" CodeFile="VendorHome.aspx.cs" Inherits="VendorHome" %>


    <asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

        <link rel="stylesheet" href="css/forms.css"/>

    <div class="container"  style="margin-top: 100px;margin-left:25%;">
	<div class="row">
		<div class="col-md-8">
		<div class="contact-left-box">
            <center>
		<h3><b>VENDOR SUPPLY</b></h3><br/>
																		
			<div class="my-form" >
                <section>
						<label class="label">Type of Service</label>
						<label class="select">
							<i class="icon-prepend fa fa-user"></i>
							
                            	<asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>ELectrical Repairs</asp:ListItem>
                                    <asp:ListItem>Plumbing Works</asp:ListItem>
                                    <asp:ListItem>House Cleaning</asp:ListItem>
                        </asp:DropDownList>						
                            <span class="validate_error"> </span>
						</label>
					</section>


<section>
						<label class="label">Number of Tecnicians to be provided</label>
						<label class="input">
							<i class="icon-prepend fa fa-user"></i>
							
                            						<asp:TextBox ID="TextBox1" runat="server" required="required"></asp:TextBox>
                            <span class="validate_error"> </span>

						</label>
					</section>

<section>
						<label class="label">Number of Labor hours</label>
						<label class="input">
							<i class="icon-prepend fa fa-user"></i>
							
                            						<asp:TextBox ID="TextBox2" runat="server" required="required"></asp:TextBox>
                            <span class="validate_error"> </span>

						</label>
					</section>

                <section>
					<label class="label">Message</label>
					<label class="textarea">
						<i class="icon-prepend fa fa-comment"></i>
						<textarea name="vendorComments" cols="40" rows="5" id="vendorComments" placeholder="Message" autocomplete="off" ></textarea>						<span class="validate_error"></span>
					</label>
				</section>
				<br/>
				<p class="mobile-center text-center">
				 

<asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-lg btn-sb-blue btn-circle-lg" style="width: 136px" PostBackUrl="~/ThanksVendor.aspx"></asp:Button>
				</p>
           </div>     </center></div></div></div></div>

</asp:Content>



