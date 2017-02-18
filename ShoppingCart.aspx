<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server"  >
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="feature_header text-center">
                            <h3 class="feature_title">Your <b>Cart</b></h3></div></div></div>
    <asp:Label ID="Label8" runat="server" Text="There are no items present in your cart." ForeColor="#6600CC" Visible="False"></asp:Label>
     <asp:GridView ID="CartList" runat="Server" AutoGenerateColumns="False" ShowFooter="True" GridLines="Vertical" CellPadding="4"
        
      CssClass="table table-striped table-hover" style="margin-top: 135px;"  > 
           <Columns>

                <asp:TemplateField   HeaderText="SERVICE">
                    <ItemTemplate>
                      
                      
                        <asp:Label ID="Service" Text='<%#: Eval("Service") %>' runat="server"></asp:Label>
                </ItemTemplate>  
                    </asp:TemplateField> 
            
                <asp:TemplateField   HeaderText="PRICE">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text="$"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text='<%#: String.Format("{0}", Convert.ToDouble(Eval("Order_Amount"))) %>' ></asp:Label>
                  
                </ItemTemplate>  
                    </asp:TemplateField>  

               <asp:TemplateField   HeaderText="ADDRESS">
                    <ItemTemplate>

                    
                    <asp:Label ID="Address" Text='<%#: Eval("Address") %>' runat="server"></asp:Label>    
                </ItemTemplate>  
                    </asp:TemplateField> 

              



                <asp:TemplateField   HeaderText="">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" Text="Remove"  CssClass="btn btn-danger" CommandArgument='<%# Eval("ord_id") %>' OnClick="Button1_Click"/>
                </ItemTemplate>  
                    </asp:TemplateField> 
               </Columns> 
         </asp:GridView>
    <center>
        <strong>
        <asp:Label ID="Label4" runat="server" Text="Estimated total is : $" ForeColor="#666699" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label><asp:Label ID="Label5" runat="server" ForeColor="#666699" Visible="False" Font-Size="Large"></asp:Label>

        <br />
        <br />
        </strong>

        <br />

    
     
        <strong>

    
     
        <asp:Button ID="Button2" runat="server" Text="Proceed for Payment" OnClick="Button2_Click1" Font-Bold="True" />

    
     
        </strong>

    
     
        <br />
        <br />

    
    <br />

  <!--<a href="Default.aspx" class="btn btn-info"><< CONTINUE SHOPPING</a>
  <a href="#" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span></a>
  <ul class="dropdown-menu">
    <li><a href="TennisItems.aspx">Tennis</a></li>
    <li><a href="SoccerItems.aspx">Soccer</a></li>
    <li><a href="CricketItems.aspx">Cricket</a></li> 
    
    <li><a href="BasketBallItems.aspx">Basket Ball</a></li>
  </ul>

        <br />
        <br />
       -->


  
        </center>
</asp:Content>

