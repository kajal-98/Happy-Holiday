<%@ Page Title="" Language="C#" MasterPageFile="~/master/user.master" AutoEventWireup="true" CodeFile="family.aspx.cs" Inherits="user_School" %>

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
    <table class="tabuser" >
        <tr><td class="tdtag" >FAMILY PACKAGES</td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td >
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="Vertical" 
                    RepeatLayout="Flow" DataSourceID="family" DataKeyField="familyid">
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
                                        Font-Size="XX-Large" ForeColor="#FF0066" Text='<%# Eval("packname") %>' />
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
                                <td colspan="3" width="800">
                                    <asp:HyperLink ID="HyperLink1" runat="server" 
                                        NavigateUrl='<%# "~/user/fviewdetails.aspx?fdetails= " + Eval("familyid") %>'>View Details......</asp:HyperLink>
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
                <asp:SqlDataSource ID="family" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:con %>" 
                    DeleteCommand="DELETE FROM [education] WHERE [familyid] = @familyid" 
                    InsertCommand="INSERT INTO [education] ([cost], [days], [place], [imagepath], [packname]) VALUES (@cost, @days, @place, @imagepath, @packname)" 
                    SelectCommand="SELECT [cost], [days], [place], [imagepath], [packname], [familyid] FROM [education]" 
                    UpdateCommand="UPDATE [education] SET [cost] = @cost, [days] = @days, [place] = @place, [imagepath] = @imagepath, [packname] = @packname WHERE [familyid] = @familyid">
                    <DeleteParameters>
                        <asp:Parameter Name="familyid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cost" Type="String" />
                        <asp:Parameter Name="days" Type="String" />
                        <asp:Parameter Name="place" Type="String" />
                        <asp:Parameter Name="imagepath" Type="String" />
                        <asp:Parameter Name="packname" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="cost" Type="String" />
                        <asp:Parameter Name="days" Type="String" />
                        <asp:Parameter Name="place" Type="String" />
                        <asp:Parameter Name="imagepath" Type="String" />
                        <asp:Parameter Name="packname" Type="String" />
                        <asp:Parameter Name="familyid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td></tr>
        <tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
    </table>
</asp:Content>

