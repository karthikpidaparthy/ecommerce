<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

     <section id="service">
        <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="feature_header text-center">
                            <h3 class="feature_title">Our <b>Services</b></h3>
                         <!--   <h4 class="feature_sub">Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br>Iusto provident non voluptatibus animi quidem incidunt eum, eligendi doloribus dicta.</h4>-->
                            <div class="divider"></div>
                        </div>
                    </div>  <!-- Col-md-12 End -->
                </div>
                <div class="row">
                    <div class="main_feature text-center">
                        <div class="col-md-4 col-xs-12 col-sm-6">
                                <div class="feature_content">
<i class="fa fa-lightbulb-o"></i> 
                                                                     <h5>Electrical Works</h5>
                                    <p>Our professional electricians are experts in all kinds of electrical work.</p>
                                  
                                    <asp:Button ID="Button1" class="btn btn-main" runat="server" Text="Book Now" PostBackUrl="~/ElectricalRepairs.aspx" />
                                </div>
                            </div>
                        <div class="col-md-4 col-xs-12 col-sm-6">
                                <div class="feature_content">
                                  <i class="fa fa-home" ></i>
                                    <h5>House Cleaning</h5>
                                    <p>Our cleaning experts can help you make your house look pure. </p>
                                   <asp:Button ID="Button2" class="btn btn-main" runat="server" Text="Book Now" PostBackUrl="~/HouseCleaning.aspx" />
                                </div>
                        </div> <!-- Col-md-4 Single_feature End -->
                        <div class="col-md-4 col-xs-12 col-sm-6">
                                 <div class="feature_content">
                              <i class="fa fa-tint" ></i>
                                     <h5>Plumbing Works</h5>
                                    <p>Our plumbers can help you fix any kind of leakages in your bathrooms </p>
 <asp:Button ID="Button3" class="btn btn-main" runat="server" Text="Book Now" PostBackUrl="~/Plumbing.aspx" />
                                </div>
                        </div> <!-- Col-md-4 Single_feature End -->
                       <!-- Col-md-4 Single_feature End -->
                        <!-- <button class="btn btn-main"> Read More</button> -->
                    </div>
            </div>  <!-- Row End -->
        </div>  <!-- Container End -->
    </section>
</asp:Content>

