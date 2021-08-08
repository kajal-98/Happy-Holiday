<%@ Page Title="" Language="C#" MasterPageFile="~/master/user.master" AutoEventWireup="true" CodeFile="pilgrim.aspx.cs" Inherits="user_justmarried" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabuser">
        <tr><td class="tdtag"  >PILGRIM PACKAGES</td></tr>
        <tr><td></td></tr>
        <tr><td>
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" onselectedindexchanged="DataList1_SelectedIndexChanged" 
                    RepeatLayout="Flow" DataKeyField="pilid" DataSourceID="pilgrim" 
                onitemcommand="DataList1_ItemCommand" BackColor="#EFF3FB" 
                BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                GridLines="Both">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <ItemStyle BackColor="White" ForeColor="#003399" />
                    <ItemTemplate>
                        <table class="style1" bgcolor="#EFF3FB" >
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
                                <td style="color: #0000FF">
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
                                        NavigateUrl='<%# "~/user/viewdetails.aspx?pdetails= " + Eval("pilid") %>'>Read More......</asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <hr style="border: thin solid #0000FF" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:DataList>
            <asp:SqlDataSource ID="pilgrim" runat="server" 
                ConnectionString="<%$ ConnectionStrings:con %>" 
                
                SelectCommand="SELECT [packname], [cost], [days], [place], [imagepath], [pilid] FROM [pilgrim]" 
                DeleteCommand="DELETE FROM [pilgrim] WHERE [pilid] = @pilid" 
                InsertCommand="INSERT INTO [pilgrim] ([packname], [cost], [days], [place], [imagepath]) VALUES (@packname, @cost, @days, @place, @imagepath)" 
                
                UpdateCommand="UPDATE [pilgrim] SET [packname] = @packname, [cost] = @cost, [days] = @days, [place] = @place, [imagepath] = @imagepath WHERE [pilid] = @pilid">
                <DeleteParameters>
                    <asp:Parameter Name="pilid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="packname" Type="String" />
                    <asp:Parameter Name="cost" Type="String" />
                    <asp:Parameter Name="days" Type="String" />
                    <asp:Parameter Name="place" Type="String" />
                    <asp:Parameter Name="imagepath" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="packname" Type="String" />
                    <asp:Parameter Name="cost" Type="String" />
                    <asp:Parameter Name="days" Type="String" />
                    <asp:Parameter Name="place" Type="String" />
                    <asp:Parameter Name="imagepath" Type="String" />
                    <asp:Parameter Name="pilid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

