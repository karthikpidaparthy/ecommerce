<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<div id="wrapper">
		<center>
	<section id="contact">
	<div class="container">
		<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="feature_header text-center">
							<h3 class="feature_title">Login <b>Here</b></h3></div></div></div>

		 <div class="row">
			 <div class="contact_full">
				<div class="col-md-6 " style="margin-left:25%;">
					<div class="left_contact">
					   
							<div class="form-level">
							   

								<asp:TextBox ID="TextBox1" runat="server"  placeholder="Email Address" class="input-block" required="required"></asp:TextBox>
								
  
	 
								<span class="form-icon fa fa-user"></span>
							</div>

							<div class="form-level">
							 

								 <asp:TextBox ID="TextBox2" class="input-block" placeholder="Password" runat="server" required="required" TextMode="Password"></asp:TextBox>
  
								<span class="form-icon fa fa-key"></span>
							</div>
						<br /><br />
						  <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"  CssClass="btn btn-lg btn-sb-blue btn-circle-lg"/>
		<!--	</form>-->
			<br />
			<br />
			<strong>
			<asp:Label ID="Label1" runat="server" ForeColor="#CC0000" Text="Invalid Credentials" Visible="False"></asp:Label>
					</div></div></div></div>

		</div></section>
			</center>
</strong>
		</div>
</asp:Content>
