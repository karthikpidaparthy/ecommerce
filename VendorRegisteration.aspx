<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="VendorRegisteration.aspx.cs" Inherits="VendorRegisteration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

        <link rel="stylesheet" href="css/forms.css"/>

    <div class="container"  style="margin-top: 100px;margin-left:25%;">
	<div class="row">
		<div class="col-md-8">
		<div class="contact-left-box">
            <center>
		<h3><b>VENDOR REGISTRATION</b></h3><br/>
																		
			<div class="my-form" >
				
					<section>
						<label class="label">Name</label>
						<label class="input">
							<i class="icon-prepend fa fa-user"></i>
							 <input type="text" name="txtvendorName" value="" id="txtvendorName" placeholder="Vendor Name" maxlength="45" autocomplete="off"  />							<span class="validate_error"> </span>
						</label>
					</section>
					<div class="row">
					<section class="col col-6">
						<label class="label">Mobile</label>
						<label class="input">
							<i class="icon-prepend fa fa-phone"></i>
							<input type="text" name="companyMobileNumber" value="" id="companyMobileNumber" placeholder="Mobile Number" maxlength="15" autocomplete="off"  /> 
							<span class="validate_error"> </span>
						</label>
					</section>                    
					<section class="col col-6">
						<label class="label">Email</label>
						<label class="input">
							<i class="icon-prepend fa fa-envelope"></i>
							<input type="text" name="businessEmail" value="" id="businessEmail" placeholder="Email Address" maxlength="45" autocomplete="off"  /> 
							<span class="validate_error"> </span>
						</label>
					</section> 
					</div>				
				             
				
				<section>
					<label class="label">Company Name</label>
					<label class="input">
						<i class="icon-prepend fa fa-info"></i>
						<input type="text" name="companyName" value="" id="companyName" placeholder="Company Name" maxlength="100" autocomplete="off"  />						<span class="validate_error"></span>
					</label>
				</section>       
                                
                                <section>
					<label class="label"> Office Address</label>
					<label class="textarea">
						<i class="icon-prepend fa fa-location-arrow"></i>
						<textarea name="officeAddress" cols="40" rows="5" id="officeAddress" placeholder="Address" autocomplete="off" ></textarea>						<span class="validate_error"></span>
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
				  <button name="btnSendMsg" type="submit" id="btnSendMsg" class="btn btn-lg btn-sb-blue btn-circle-lg" value="Send" style="width: 136px" >Submit</button>				</p>
								<!--END CONTACT FORM-->
					</div>	
                </center>
		</div>
		</div>
        </div></div>
</asp:Content>

