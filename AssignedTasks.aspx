<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.master" AutoEventWireup="true" CodeFile="AssignedTasks.aspx.cs" Inherits="AssignedTasks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <link rel="stylesheet" href="css/tablestyle.css"/>
    <asp:GridView ID="AssignedTasksList" runat="Server" AutoGenerateColumns="False" ShowFooter="True" GridLines="Vertical" CellPadding="4"
        
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


                 <asp:TemplateField   HeaderText="Technician Assigned">
                    <ItemTemplate>

                    
                       
                           
    <asp:Label ID="Techni" Text='<%#: Eval("Technician_Name") %>' runat="server"></asp:Label>    
                                
                                     
           
                </ItemTemplate>  
                    </asp:TemplateField> 
               </Columns>
               </asp:GridView>
</asp:Content>

