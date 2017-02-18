<%@ Page Title="" Language="C#" MasterPageFile="~/TechnicianMasterPage.master" AutoEventWireup="true" CodeFile="CompletedOrders.aspx.cs" Inherits="CompletedOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


    
     <asp:GridView ID="TechTasksList" runat="Server" AutoGenerateColumns="False" ShowFooter="True" GridLines="Vertical" CellPadding="4"
        
      CssClass="table table-striped table-hover"  style="margin-top: 100px;" > 
           <Columns>
               
                <asp:TemplateField   HeaderText="Order ID">
                    <ItemTemplate>
                      
                      
                        <asp:Label ID="CustName" Text='<%#: Eval("Ord_Id") %>' runat="server"></asp:Label>
                </ItemTemplate>  
                    </asp:TemplateField> 
                <asp:TemplateField   HeaderText="Customer Name">
                    <ItemTemplate>
                      
                      
                        <asp:Label ID="CustName" Text='<%#: Eval("Cus_Fullname") %>' runat="server"></asp:Label>
                </ItemTemplate>  
                    </asp:TemplateField> 
            
                <asp:TemplateField   HeaderText="Address">
                    <ItemTemplate>
                          <asp:Label ID="Address" Text='<%#: Eval("Address") %>' runat="server"></asp:Label>
                  
                </ItemTemplate>  
                    </asp:TemplateField>  

               <asp:TemplateField   HeaderText="Date of Order">
                    <ItemTemplate>

                    
                    <asp:Label ID="Date" Text='<%#: Eval("Order_Date") %>' runat="server"></asp:Label>    
                </ItemTemplate>  
                    </asp:TemplateField> 

                 <asp:TemplateField   HeaderText="Time of Order">
                    <ItemTemplate>

                    
                    <asp:Label ID="Time" Text='<%#: Eval("Order_Time") %>' runat="server"></asp:Label>    
                </ItemTemplate>  
                    </asp:TemplateField> 

              


             
               </Columns> 
         </asp:GridView>
</asp:Content>

