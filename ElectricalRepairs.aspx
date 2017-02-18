<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ElectricalRepairs.aspx.cs" Inherits="ElectricalRepairs" %>



<%-- Add content controls here --%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >

    
      <section>

         
            

            <asp:ListView ID="serviceList" runat="server" 
                DataKeyNames="ServiceID" GroupItemCount="3"  style="margin-top: 50px;">   

                <EmptyDataTemplate>
                    <table style="margin-top: 50px;">
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
                        <table style="margin-top: 50px;">
                            <tr>
                                <td>
                              
                           <image src="<%# Eval("ImagePath")%>"
                                      width="170" height="170" border="1" />
							
							
						
                                   
                                  
                     

                                    
                                </td>
                            </tr><br /><br /><br />
                            <tr>
                                <td >
                                <p  align="center">  Fix  <%# Eval("Service")%></p>  <br />

                                  
                                    

                                </td></tr>
                                     
                                    <br />
                            <tr>     <td align="center">
                                       <br />
                                  <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn-lg" OnClick="LinkButton1_Click" CommandArgument='<%# Eval("ServiceID") %>'> Book Now</asp:LinkButton>
                           


                                        
                                                   
                                    
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


    </asp:Content>
