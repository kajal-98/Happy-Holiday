<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="spe.aspx.cs" Inherits="admin_spe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style2
        {
            width: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabuser">
        <tr>
            <td class="tdtag">SPECIAL PACKAGES :-</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:FormView ID="FormView1" runat="server" CellPadding="4" 
                    DataKeyNames="spelid" DataSourceID="special" ForeColor="#333333" 
                    AllowPaging="True"  >
                    <EditItemTemplate>
                        spelid:
                        <asp:Label ID="spelidLabel1" runat="server" Text='<%# Eval("spelid") %>' />
                        <br />
                        packname:
                        <asp:TextBox ID="packnameTextBox" runat="server" 
                            Text='<%# Bind("packname") %>' />
                        <br />
                        cost:
                        <asp:TextBox ID="costTextBox" runat="server" Text='<%# Bind("cost") %>' />
                        <br />
                        days:
                        <asp:TextBox ID="daysTextBox" runat="server" Text='<%# Bind("days") %>' />
                        <br />
                        place:
                        <asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
                        <br />
                        day1:
                        <asp:TextBox ID="day1TextBox" runat="server" Text='<%# Bind("day1") %>' />
                        <br />
                        day2:
                        <asp:TextBox ID="day2TextBox" runat="server" Text='<%# Bind("day2") %>' />
                        <br />
                        day3:
                        <asp:TextBox ID="day3TextBox" runat="server" Text='<%# Bind("day3") %>' />
                        <br />
                        day4:
                        <asp:TextBox ID="day4TextBox" runat="server" Text='<%# Bind("day4") %>' />
                        <br />
                        day5:
                        <asp:TextBox ID="day5TextBox" runat="server" Text='<%# Bind("day5") %>' />
                        <br />
                        day6:
                        <asp:TextBox ID="day6TextBox" runat="server" Text='<%# Bind("day6") %>' />
                        <br />
                        meals:
                        <asp:TextBox ID="mealsTextBox" runat="server" Text='<%# Bind("meals") %>' />
                        <br />
                        type:
                        <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                        <br />
                        inclusions:
                        <asp:TextBox ID="inclusionsTextBox" runat="server" 
                            Text='<%# Bind("inclusions") %>' />
                        <br />
                        exclusions:
                        <asp:TextBox ID="exclusionsTextBox" runat="server" 
                            Text='<%# Bind("exclusions") %>' />
                        <br />
                        imagepath:
                        <asp:TextBox ID="imagepathTextBox" runat="server" 
                            Text='<%# Bind("imagepath") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="300px" 
                            ImageUrl='<%# Bind("imagepath") %>' Width="700px" BorderColor="#000099" 
                            BorderStyle="Solid" />
                        <br />
                        <table class="tabuser" width="700">
                            <tr>
                                <td width="200" style="border: thin solid #000099" valign="top">
                                    Packname:</td>
                                <td width="400" style="border: thin solid #000099">
                                    <asp:Label ID="packnameLabel1" runat="server" Text='<%# Bind("packname") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="200" style="border: thin solid #000099" valign="top">
                                    Cost:</td>
                                <td width="400" style="border: thin solid #000099">
                                    <asp:Label ID="costLabel" runat="server" Text='<%# Bind("cost") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="200" style="border: thin solid #000099" valign="top">
                                    Days:
                                </td>
                                <td width="400" style="border: thin solid #000099">
                                    <asp:Label ID="daysLabel" runat="server" Text='<%# Bind("days") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="200" style="border: thin solid #000099" valign="top">
                                    Place:</td>
                                <td width="400" style="border: thin solid #000099">
                                    <asp:Label ID="placeLabel" runat="server" Text='<%# Bind("place") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="200" style="border: thin solid #000099" valign="top">
                                    Day 1:</td>
                                <td width="400" style="border: thin solid #000099">
                                    <asp:Label ID="day1Label" runat="server" Text='<%# Bind("day1") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="200" style="border: thin solid #000099" valign="top">
                                    Day 2:
                                </td>
                                <td width="400" style="border: thin solid #000099">
                                    <asp:Label ID="day2Label" runat="server" Text='<%# Bind("day2") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="200" style="border: thin solid #000099" valign="top">
                                    Day 3:
                                </td>
                                <td width="400" style="border: thin solid #000099">
                                    <asp:Label ID="day3Label" runat="server" Text='<%# Bind("day3") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="200" class="style2" style="border: thin solid #000099" valign="top">
                                    Day 4:
                                </td>
                                <td width="400" style="border: thin solid #000099">
                                    <asp:Label ID="day4Label" runat="server" Text='<%# Bind("day4") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="200" style="border: thin solid #000099" valign="top">
                                    Day 5:
                                </td>
                                <td width="400" style="border: thin solid #000099">
                                    <asp:Label ID="day5Label" runat="server" Text='<%# Bind("day5") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="200" style="border: thin solid #000099" valign="top">
                                    Day 6:</td>
                                <td width="400" style="border: thin solid #000099">
                                    <asp:Label ID="day6Label" runat="server" Text='<%# Bind("day6") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="200" style="border: thin solid #000099" valign="top">
                                    Meals:
                                </td>
                                <td width="400" style="border: thin solid #000099">
                                    <asp:Label ID="mealsLabel" runat="server" Text='<%# Bind("meals") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="200" style="border: thin solid #000099" valign="top">
                                    Type:
                                </td>
                                <td width="400" style="border: thin solid #000099">
                                    <asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="200" style="border: thin solid #000099" valign="top">
                                    Inclusions:
                                </td>
                                <td width="400" style="border: thin solid #000099">
                                    <asp:Label ID="inclusionsLabel" runat="server" 
                                        Text='<%# Bind("inclusions") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="200" style="border: thin solid #000099" valign="top">
                                    Exclusions:
                                </td>
                                <td width="400" style="border: thin solid #000099">
                                    <asp:Label ID="exclusionsLabel" runat="server" 
                                        Text='<%# Bind("exclusions") %>' />
                                </td>
                            </tr>
                            </table>
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                            
                            <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                            
                            
                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" onclick="NewButton_Click"  />
                            
                        
                    </ItemTemplate>
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:FormView>
                <asp:SqlDataSource ID="special" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:con %>" 
                    DeleteCommand="DELETE FROM [special] WHERE [spelid] = @spelid" 
                    SelectCommand="SELECT * FROM [special] ORDER BY [spelid]" 
                    UpdateCommand="UPDATE [special] SET [packname] = @packname, [cost] = @cost, [days] = @days, [place] = @place, [day1] = @day1, [day2] = @day2, [day3] = @day3, [day4] = @day4, [day5] = @day5, [day6] = @day6, [meals] = @meals, [type] = @type, [inclusions] = @inclusions, [exclusions] = @exclusions, [imagepath] = @imagepath WHERE [spelid] = @spelid">
                    <DeleteParameters>
                        <asp:Parameter Name="spelid" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="packname" Type="String" />
                        <asp:Parameter Name="cost" Type="String" />
                        <asp:Parameter Name="days" Type="String" />
                        <asp:Parameter Name="place" Type="String" />
                        <asp:Parameter Name="day1" Type="String" />
                        <asp:Parameter Name="day2" Type="String" />
                        <asp:Parameter Name="day3" Type="String" />
                        <asp:Parameter Name="day4" Type="String" />
                        <asp:Parameter Name="day5" Type="String" />
                        <asp:Parameter Name="day6" Type="String" />
                        <asp:Parameter Name="meals" Type="String" />
                        <asp:Parameter Name="type" Type="String" />
                        <asp:Parameter Name="inclusions" Type="String" />
                        <asp:Parameter Name="exclusions" Type="String" />
                        <asp:Parameter Name="imagepath" Type="String" />
                        <asp:Parameter Name="spelid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

