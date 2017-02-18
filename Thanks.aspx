<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Thanks.aspx.cs" Inherits="Thanks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div class="container" style="margin-top: 10%;">
        <div class="row">		
            <div class="col-md-12">
                <div class="content sb-offers-head"><center>
                                        <h4 class="offer-head mobile-mid-font">Dear <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                            
                                            ,Thanks for shopping with us. Our team will contact you by Email.</h4></center>
                </div>
            </div></div>

     <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="feature_header text-center">
                            <h3 class="feature_title">Order <b>Summary</b></h3>
                         <!--   <h4 class="feature_sub">Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br>Iusto provident non voluptatibus animi quidem incidunt eum, eligendi doloribus dicta.</h4>-->
                            <div class="divider"></div>
                        </div>
                    </div>  <!-- Col-md-12 End -->
                </div>
    <asp:GridView ID="SummaryList" runat="Server" AutoGenerateColumns="False" ShowFooter="True" GridLines="None" CellPadding="4"
        
      CssClass="table table-striped table-hover" style="margin-top: 135px;"   > 
           <Columns>

                <asp:TemplateField   HeaderText="ORDER NUMBER">
                    <ItemTemplate>
                      
                      
                        <asp:Label ID="Service" Text='<%#: Eval("ord_id") %>' runat="server"></asp:Label>
                </ItemTemplate>  
                    </asp:TemplateField> 
            
                <asp:TemplateField   HeaderText="SERVICE">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%#: Eval("service") %>' ></asp:Label>
                        
                  
                </ItemTemplate>  
                    </asp:TemplateField>  

               <asp:TemplateField   HeaderText="ADDRESS">
                    <ItemTemplate>

                    
                    <asp:Label ID="Address" Text='<%#: Eval("Address") %>' runat="server"></asp:Label>    
                </ItemTemplate>  
                    </asp:TemplateField> 

                <asp:TemplateField   HeaderText="ORDER DATE">
                    <ItemTemplate>
                     <asp:Label ID="date" Text='<%#: Eval("order_date") %>' runat="server"></asp:Label>   
                </ItemTemplate>  
                    </asp:TemplateField> 



                <asp:TemplateField   HeaderText="ORDER TIME">
                    <ItemTemplate>
                     <asp:Label ID="time" Text='<%#: Eval("order_time") %>' runat="server"></asp:Label>   
                </ItemTemplate>  
                    </asp:TemplateField> 
               </Columns> 
         </asp:GridView> 

 </div>
</asp:Content>

