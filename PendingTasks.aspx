<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.master" AutoEventWireup="true" CodeFile="PendingTasks.aspx.cs" Inherits="PendingTasks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
       <link rel="stylesheet" href="css/tablestyle.css"/>
    Welcome!! Here are your pending tasks.
    <asp:GridView ID="TasksList" runat="Server" AutoGenerateColumns="False" ShowFooter="True" GridLines="Vertical" CellPadding="4"
        
      CssClass="table table-striped table-hover" style="margin-top: 100px;"> 
           <Columns>

                <asp:TemplateField   HeaderText="Order ID">
                    <ItemTemplate>
                      
                      
                        <asp:Label ID="OrdID" Text='<%#: Eval("Ord_ID") %>' runat="server"></asp:Label>
                </ItemTemplate>  
                    </asp:TemplateField> 
            
                <asp:TemplateField   HeaderText="Service">
                    <ItemTemplate>
                          <asp:Label ID="Service" Text='<%#: Eval("Service") %>' runat="server"></asp:Label>
                  
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


                 <asp:TemplateField   HeaderText="Technician to be Assigned">
                    <ItemTemplate>

                    
                       
                           

                                     <asp:DropDownList ID="Technicians" runat="server">
                </asp:DropDownList>
                                     
           
                </ItemTemplate>  
                    </asp:TemplateField> 

              
<asp:TemplateField   HeaderText="Take an action">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" Text="Assign Technician"  CssClass="btn btn-success" CommandArgument='<%# Eval("ord_id") %>' OnClick="Button1_Click"/>
                         <asp:Button ID="Button2" runat="server" Text="Reject"  CssClass="btn btn-danger" CommandArgument='<%# Eval("ord_id") %>' OnClick="Button2_Click"/>
                </ItemTemplate>  
                    </asp:TemplateField> 


             
               </Columns> 
         </asp:GridView>
</asp:Content>

