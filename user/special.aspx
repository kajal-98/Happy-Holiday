<%@ Page Title="" Language="C#" MasterPageFile="~/master/user.master" AutoEventWireup="true" CodeFile="special.aspx.cs" Inherits="user_group" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="tabuser">
        <tr><td bgcolor="#507CD1" 
                style="font-size: xx-large; font-family: Arial Rounded MT Bold; font-weight: 700; color: #FFFFFF">
            SPECIAL TOURS :-</td></tr>
        <tr><td> &nbsp;</td></tr>
        <tr><td align="left">
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="Vertical" 
                    RepeatLayout="Flow" DataSourceID="group" DataKeyField="spelid">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EFF3FB" />
                    <ItemTemplate>
                        <table class="style1">
                            <tr>
                                <td colspan="3">
                                    <hr style="border: thin solid #0000FF" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2" colspan="3" width="800">
                                    <asp:Label ID="packnameLabel" runat="server" Font-Bold="True" 
                                        Font-Size="X-Large" ForeColor="#FF0066" Text='<%# Eval("packname") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="100" style="color: #0000FF">
                                    Cost:</td>
                                <td width="400" style="color: #0000FF">
                                    <asp:Label ID="costLabel" runat="server" Text='<%# Eval("cost") %>' />
                                </td>
                                <td rowspan="3">
                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("imagepath") %>' 
                                        Height="200px" Width="300px" BorderColor="#000099" BorderStyle="Solid" />
                                </td>
                            </tr>
                            <tr>
                                <td width="100" style="color: #0000FF">
                                    Days:
                                </td>
                                <td width="400" style="color: #0000FF">
                                    <asp:Label ID="daysLabel" runat="server" Text='<%# Eval("days") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="100" style="color: #0000FF">
                                    Place:</td>
                                <td width="400" style="color: #0000FF">
                                    <asp:Label ID="placeLabel" runat="server" Text='<%# Eval("place") %>' />
                                </td>
                            </tr>
                             <tr>
                                <td width="100" style="color: #0000FF">
                                    Type:</td>
                                <td width="400" style="color: #0000FF">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("type") %>' /><br />
                                </td>
                            </tr>
                            <br />
                            <tr>
                                <td colspan="3" width="800">
                                    <asp:HyperLink ID="HyperLink1" runat="server" 
                                        NavigateUrl='<%# "~/user/spviewdetails.aspx?sdetails= " + Eval("spelid") %>'>View Details......</asp:HyperLink>
                                </td>
                            </tr>

                            <tr>
                                <td colspan="3">
                                    <hr style="border: thin solid #0000FF" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
                <asp:SqlDataSource ID="group" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:con %>" 
                    SelectCommand="SELECT [packname], [cost], [days], [place], [type], [imagepath], [spelid] FROM [special]">
                </asp:SqlDataSource>
            </td></tr>
        </table>
</asp:Content>

