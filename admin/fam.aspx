<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="fam.aspx.cs" Inherits="admin_fam" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabuser">
        <tr><td class="tdtag">FAMILY PACKAGES :-</td></tr>
        <tr><td></td></tr>
        <tr><td align="center">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="familyid" 
                    DataSourceID="family" AllowPaging="True" CellPadding="4" 
                    ForeColor="#333333" >
                    <EditItemTemplate>
                        FamilyId:
                        <asp:Label ID="familyidLabel1" runat="server" Text='<%# Eval("familyid") %>' />
                        <br />
                        Packname:
                        <asp:TextBox ID="packnameTextBox" runat="server" Text='<%# Bind("packname") %>' />
                        <br />
                        Cost:
                        <asp:TextBox ID="costTextBox" runat="server" Text='<%# Bind("cost") %>' />
                        <br />
                        Days:
                        <asp:TextBox ID="daysTextBox" runat="server" Text='<%# Bind("days") %>' />
                        <br />
                        Place:
                        <asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
                        <br />
                        Day1:
                        <asp:TextBox ID="day1TextBox" runat="server" Text='<%# Bind("day1") %>' />
                        <br />
                        Day2:
                        <asp:TextBox ID="day2TextBox" runat="server" Text='<%# Bind("day2") %>' />
                        <br />
                        Day3:
                        <asp:TextBox ID="day3TextBox" runat="server" Text='<%# Bind("day3") %>' />
                        <br />
                        Day4:
                        <asp:TextBox ID="day4TextBox" runat="server" Text='<%# Bind("day4") %>' />
                        <br />
                        Day5:
                        <asp:TextBox ID="day5TextBox" runat="server" Text='<%# Bind("day5") %>' />
                        <br />
                        Day6:
                        <asp:TextBox ID="day6TextBox" runat="server" Text='<%# Bind("day6") %>' />
                        <br />
                        Meals:
                        <asp:TextBox ID="mealsTextBox" runat="server" Text='<%# Bind("meals") %>' />
                        <br />
                        Inclusions:
                        <asp:TextBox ID="inclusionsTextBox" runat="server" 
                            Text='<%# Bind("inclusions") %>' />
                        <br />
                        Exclusions:
                        <asp:TextBox ID="exclusionsTextBox" runat="server" 
                            Text='<%# Bind("exclusions") %>' />
                        <br />
                        Imagepath:
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
                        <asp:Image ID="Image2" runat="server" BorderColor="#000099" BorderStyle="Solid" 
                            Height="300px" Width="700px" ImageUrl='<%# Bind("imagepath") %>'/>
                        <br />
                        <table class="tabuser" align="center">
                            <tr>
                                <td  style="border: thin solid #000099" width="200">
                                    Packname:</td>
                                <td  style="border: thin solid #000099" width="300">
                                    <asp:Label ID="packnameLabel" runat="server" Text='<%# Bind("packname") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="border: thin solid #000099" width="200">
                                    Cost:</td>
                                <td style="border: thin solid #000099" width="300">
                                    <asp:Label ID="costLabel" runat="server" Text='<%# Bind("cost") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="border: thin solid #000099" width="200">
                                    Days:
                                </td>
                                <td style="border: thin solid #000099" width="300">
                                    <asp:Label ID="daysLabel" runat="server" Text='<%# Bind("days") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="border: thin solid #000099" width="200">
                                    Place:</td>
                                <td style="border: thin solid #000099" width="300">
                                    <asp:Label ID="placeLabel" runat="server" Text='<%# Bind("place") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td  style="border: thin solid #000099" width="200">
                                    Day 1:</td>
                                <td  style="border: thin solid #000099" width="300">
                                    <asp:Label ID="day1Label" runat="server" Text='<%# Bind("day1") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="border: thin solid #000099" width="200">
                                    Day 2:</td>
                                <td style="border: thin solid #000099" width="300">
                                    <asp:Label ID="day2Label" runat="server" Text='<%# Bind("day2") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="border: thin solid #000099" width="200">
                                    Day 3:
                                </td>
                                <td style="border: thin solid #000099" width="300">
                                    <asp:Label ID="day3Label" runat="server" Text='<%# Bind("day3") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="border: thin solid #000099" width="200">
                                    Day 4:
                                </td>
                                <td style="border: thin solid #000099" width="300">
                                    <asp:Label ID="day4Label" runat="server" Text='<%# Bind("day4") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="border: thin solid #000099" width="200">
                                    Day 5:</td>
                                <td style="border: thin solid #000099" width="300">
                                    <asp:Label ID="day5Label" runat="server" Text='<%# Bind("day5") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="border: thin solid #000099" width="200">
                                    Day 6:
                                </td>
                                <td style="border: thin solid #000099" width="300">
                                    <asp:Label ID="day6Label" runat="server" Text='<%# Bind("day6") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="border: thin solid #000099" width="200">
                                    Meals:</td>
                                <td style="border: thin solid #000099" width="300">
                                    <asp:Label ID="mealsLabel" runat="server" Text='<%# Bind("meals") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="border: thin solid #000099" width="200">
                                    Inclusions:</td>
                                <td style="border: thin solid #000099" width="300">
                                    <asp:Label ID="inclusionsLabel" runat="server" 
                                        Text='<%# Bind("inclusions") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="border: thin solid #000099" width="200">
                                    Exclusions:</td>
                                <td style="border: thin solid #000099" width="300">
                                    <asp:Label ID="exclusionsLabel" runat="server" 
                                        Text='<%# Bind("exclusions") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" Height="30px" 
                            Width="100px" />
                        <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" Height="30px" 
                            Width="100px" />
                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" onclick="NewButton_Click" Text="New" 
                            Height="30px" Width="100px" />
                    </ItemTemplate>
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:FormView>
                <asp:SqlDataSource ID="family" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:con %>" 
                    DeleteCommand="DELETE FROM [education] WHERE [familyid] = @familyid" 
                    SelectCommand="SELECT * FROM [education]" 
                    UpdateCommand="UPDATE [education] SET [packname] = @packname, [cost] = @cost, [days] = @days, [place] = @place, [day1] = @day1, [day2] = @day2, [day3] = @day3, [day4] = @day4, [day5] = @day5, [day6] = @day6, [meals] = @meals, [inclusions] = @inclusions, [exclusions] = @exclusions, [imagepath] = @imagepath WHERE [familyid] = @familyid">
                    <DeleteParameters>
                        <asp:Parameter Name="familyid" Type="Int32" />
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
                        <asp:Parameter Name="inclusions" Type="String" />
                        <asp:Parameter Name="exclusions" Type="String" />
                        <asp:Parameter Name="imagepath" Type="String" />
                        <asp:Parameter Name="familyid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </td></tr>
        </table>
</asp:Content>

