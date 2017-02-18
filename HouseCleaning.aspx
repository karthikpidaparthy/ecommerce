<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="HouseCleaning.aspx.cs" Inherits="HouseCleaning" %>



<%-- Add content controls here --%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<center>
    
      <section>

         
            

            <asp:ListView ID="serviceList" runat="server" 
                DataKeyNames="ServiceID" GroupItemCount="2" 
             >
        

                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table style="margin-top: 50px;margin-left:200px;">
                         
                            <tr>
                                <td>
                              
                           <image src="<%# Eval("ImagePath")%>"
                                      width="170" height="170" border="1" />
							
							
						
                                   
                                  
                     

                                    
                                </td>
                            </tr><br /><br /><br />
                            <tr>
                                <td >
                            <b>   <p  align="center">  <%# Eval("Service")%></p></b> </td></tr>
                                     
                                    <br />
                            <tr>     <td align="center">
                                       <br /><asp:Button ID="Button1" align="center" OnClick="Button1_Click" class="btn-primary" runat="server" Text="Book Now"  CommandArgument='<%# Eval("ServiceID") %>'>

                                   </asp:Button>
                                         <br /><br />       
                                                   
                                    
                                </td>
                            </tr>
                            
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
             
            </asp:ListView>
        
    </section>
    </center>

    </asp:Content>
