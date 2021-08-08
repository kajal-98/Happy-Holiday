<%@ Page Title="" Language="C#" MasterPageFile="~/master/user.master" AutoEventWireup="true" CodeFile="viewdetails.aspx.cs" Inherits="user_viewdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabuser" >
        <tr><td class="tdtag">PACKAGE DETAILS</td></tr><tr><td>&nbsp;</td></tr>
        <tr><td>
                <asp:FormView ID="FormView1" runat="server" CellPadding="4" 
                ForeColor="#333333">
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate><table class="style2">
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Image ID="Image2" ImageUrl='<%#Eval("imagepath") %>' runat="server" 
                                        Height="300px" Width="700px" BorderColor="#000099" BorderStyle="Solid" />
                                </td>
                            </tr>
                            <tr><td colspan="2" style="border: thin solid #000099"><asp:Label ID="name" 
                                    Text='<%# Eval("packname") %>' runat="server" Font-Size="XX-Large" 
                                    ForeColor="#FF0066"></asp:Label></td></tr>
                            <tr><td style="border: thin solid #000099" width="200">Cost :</td>
                                <td style="border: thin solid #000099" width="500"><asp:Label ID="Label2"  Text='<%#Eval("cost") %>' runat="server"></asp:Label></td></tr>
                            <tr><td style="border: thin solid #000099" width="200">Days :</td>
                                <td style="border: thin solid #000099" width="500"><asp:Label ID="Label3" Text='<%#Eval("days") %>' runat="server"></asp:Label></td></tr>
                            <tr><td style="border: thin solid #000099" width="200">Place :</td>
                                <td style="border: thin solid #000099" width="500"><asp:Label ID="Label4" Text='<%#Eval("place") %>' runat="server"></asp:Label></td></tr>
                            <tr><td style="border: thin solid #000099" width="200">Day 1:</td>
                                <td style="border: thin solid #000099" width="500"><asp:Label ID="Label5" Text='<%#Eval("day1") %>' runat="server"></asp:Label></td></tr>
                            <tr><td style="border: thin solid #000099" width="200">Day 2:</td>
                                <td style="border: thin solid #000099" width="500"><asp:Label ID="Label6" Text='<%#Eval("day2") %>' runat="server"></asp:Label></td></tr>
                            <tr><td style="border: thin solid #000099" width="200">Day 3:</td>
                                <td style="border: thin solid #000099" width="500"><asp:Label ID="Label7" Text='<%#Eval("day3") %>' runat="server"></asp:Label></td></tr>
                            <tr><td style="border: thin solid #000099" width="200">Day 4:</td>
                                <td style="border: thin solid #000099" width="500"><asp:Label ID="Label8" Text='<%#Eval("day4") %>' runat="server"></asp:Label></td></tr>
                            <tr><td style="border: thin solid #000099" width="200">Day 5:</td>
                                <td style="border: thin solid #000099" width="500"><asp:Label ID="Label9" Text='<%#Eval("day5") %>' runat="server"></asp:Label></td></tr>
                            <tr><td style="border: thin solid #000099" width="200">Day 6:</td>
                                <td style="border: thin solid #000099" width="500"><asp:Label ID="Label10" Text='<%#Eval("day6") %>' runat="server"></asp:Label></td></tr>
                            <tr><td style="border: thin solid #000099" width="200">Meals on Tour :</td>
                                <td style="border: thin solid #000099" width="500"><asp:Label ID="Label11" Text='<%#Eval("meals") %>' runat="server"></asp:Label></td></tr>
                            <tr><td style="border: thin solid #000099" width="200">Inclusions :</td>
                                <td style="border: thin solid #000099" width="500"><asp:Label ID="Label13" Text='<%#Eval("inclusions") %>' runat="server"></asp:Label></td></tr>
                            <tr><td style="border: thin solid #000099" width="200">Exclusions :</td>
                                <td style="border: thin solid #000099" width="500"><asp:Label ID="Label14" Text='<%#Eval("exclusions") %>' runat="server"></asp:Label></td></tr>
                            <tr><td colspan="2" style="border: thin solid #000099; width: 700px;" width="200">&nbsp;</td></tr>
                            <tr><td colspan="2" style="border: thin solid #000099">
                                <asp:Button ID="Button1" runat="server" CssClass="but" Text="Book" 
                                    Width="200px" onclick="Button1_Click" PostBackUrl="~/user/book.aspx" />
                                </td>
                                </tr>
                        </table></ItemTemplate>
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" /></asp:FormView></td></tr>
        </table>
</asp:Content>

