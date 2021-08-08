<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="visit.aspx.cs" Inherits="admin_visit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabuser">
        <tr>
            <td colspan="2" class="tdtag">
                VISIT INDIA :-</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="left">
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" 
                    DataKeyNames="sid" DataSourceID="visit" ForeColor="#333333">
                    <EditItemTemplate>
                        sid:
                        <asp:Label ID="sidLabel1" runat="server" Text='<%# Eval("sid") %>' />
                        <br />
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        population:
                        <asp:TextBox ID="populationTextBox" runat="server" Text='<%# Bind("population") %>' />
                        <br />
                        food:
                        <asp:TextBox ID="foodTextBox" runat="server" Text='<%# Bind("food") %>' />
                        <br />
                        language:
                        <asp:TextBox ID="languageTextBox" runat="server" Text='<%# Bind("language") %>' />
                        <br />
                        sightseeing:
                        <asp:TextBox ID="sightseeingTextBox" runat="server" Text='<%# Bind("sightseeing") %>' />
                        <br />
                        description:
                        <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                        <br />
                        image1:
                        <asp:TextBox ID="image1TextBox" runat="server" Text='<%# Bind("image1") %>' />
                        <br />
                        image4:
                        <asp:TextBox ID="image4TextBox" runat="server" Text='<%# Bind("image4") %>' />
                        <br />
                        image3:
                        <asp:TextBox ID="image3TextBox" runat="server" Text='<%# Bind("image3") %>' />
                        <br />
                        image2:
                        <asp:TextBox ID="image2TextBox" runat="server" Text='<%# Bind("image2") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;
                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        population:
                        <asp:TextBox ID="populationTextBox" runat="server" Text='<%# Bind("population") %>' />
                        <br />
                        food:
                        <asp:TextBox ID="foodTextBox" runat="server" Text='<%# Bind("food") %>' />
                        <br />
                        language:
                        <asp:TextBox ID="languageTextBox" runat="server" Text='<%# Bind("language") %>' />
                        <br />
                        sightseeing:
                        <asp:TextBox ID="sightseeingTextBox" runat="server" Text='<%# Bind("sightseeing") %>' />
                        <br />
                        description:
                        <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                        <br />
                        image1:
                        <asp:TextBox ID="image1TextBox" runat="server" Text='<%# Bind("image1") %>' />
                        <br />
                        image4:
                        <asp:TextBox ID="image4TextBox" runat="server" Text='<%# Bind("image4") %>' />
                        <br />
                        image3:
                        <asp:TextBox ID="image3TextBox" runat="server" Text='<%# Bind("image3") %>' />
                        <br />
                        image2:
                        <asp:TextBox ID="image2TextBox" runat="server" Text='<%# Bind("image2") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table class="style1" >
                            <tr>
                                <td width="300" align="center" style="border: thin solid #000099">
                                    <asp:Image ID="Image2" ImageUrl='<%# Bind("image3") %>' runat="server" 
                                        BorderColor="#000099" BorderStyle="Solid" Height="200px" Width="250px" />
                                </td>
                                <td width="300" align="center" style="border: thin solid #000099">
                                    <asp:Image ID="Image3" ImageUrl='<%# Bind("image2") %>' runat="server" 
                                        BorderColor="#000099" BorderStyle="Solid" Height="200px" Width="250px" />
                                </td>
                                <td align="center" style="border: thin solid #000099" width="300">
                                    <asp:Image ID="Image5" runat="server" BorderColor="#000099" BorderStyle="Solid" 
                                        Height="200px" ImageUrl='<%# Bind("image1") %>' Width="250px" />
                                </td>
                                <td align="center" style="border: thin solid #000099" width="300">
                                    <asp:Image ID="Image4" runat="server" BorderColor="#000099" BorderStyle="Solid" 
                                        Height="200px" ImageUrl='<%# Bind("image4") %>' Width="250px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="border: thin solid #000099" colspan="4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td width="300" style="border: thin solid #000099">
                                    Sid:</td>
                                <td style="border: thin solid #000099; width: 600px;" colspan="3">
                                    <asp:Label ID="sidLabel" runat="server" Text='<%# Eval("sid") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="300" style="border: thin solid #000099">
                                    Name:</td>
                                <td style="border: thin solid #000099; width: 600px;" colspan="3">
                                    <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="300" style="border: thin solid #000099">
                                    Population:</td>
                                <td style="border: thin solid #000099; width: 600px;" colspan="3">
                                    <asp:Label ID="populationLabel" runat="server" 
                                        Text='<%# Bind("population") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="300" style="border: thin solid #000099">
                                    Food:
                                </td>
                                <td style="border: thin solid #000099; width: 600px;" colspan="3">
                                    <asp:Label ID="foodLabel" runat="server" Text='<%# Bind("food") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="300" style="border: thin solid #000099">
                                    Language:
                                </td>
                                <td style="border: thin solid #000099; width: 600px;" colspan="3">
                                    <asp:Label ID="languageLabel" runat="server" Text='<%# Bind("language") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="300" style="border: thin solid #000099">
                                    Sightseeing:
                                </td>
                                <td style="border: thin solid #000099; width: 600px;" colspan="3">
                                    <asp:Label ID="sightseeingLabel" runat="server" 
                                        Text='<%# Bind("sightseeing") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="300" style="border: thin solid #000099">
                                    Description:
                                </td>
                                <td style="border: thin solid #000099; width: 600px;" colspan="3">
                                    <asp:Label ID="descriptionLabel" runat="server" 
                                        Text='<%# Bind("description") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="border: thin solid #000099" colspan="4">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                    </ItemTemplate>
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:FormView>
                <asp:SqlDataSource ID="visit" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:con %>" 
                    DeleteCommand="DELETE FROM [searchinfo] WHERE [sid] = @sid" 
                    InsertCommand="INSERT INTO [searchinfo] ([image4], [image3], [image2], [name], [population], [food], [language], [sightseeing], [description], [image1]) VALUES (@image4, @image3, @image2, @name, @population, @food, @language, @sightseeing, @description, @image1)" 
                    SelectCommand="SELECT [image4], [image3], [image2], [sid], [name], [population], [food], [language], [sightseeing], [description], [image1] FROM [searchinfo]" 
                    UpdateCommand="UPDATE [searchinfo] SET [image4] = @image4, [image3] = @image3, [image2] = @image2, [name] = @name, [population] = @population, [food] = @food, [language] = @language, [sightseeing] = @sightseeing, [description] = @description, [image1] = @image1 WHERE [sid] = @sid">
                    <DeleteParameters>
                        <asp:Parameter Name="sid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="image4" Type="String" />
                        <asp:Parameter Name="image3" Type="String" />
                        <asp:Parameter Name="image2" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="population" Type="String" />
                        <asp:Parameter Name="food" Type="String" />
                        <asp:Parameter Name="language" Type="String" />
                        <asp:Parameter Name="sightseeing" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="image1" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="image4" Type="String" />
                        <asp:Parameter Name="image3" Type="String" />
                        <asp:Parameter Name="image2" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="population" Type="String" />
                        <asp:Parameter Name="food" Type="String" />
                        <asp:Parameter Name="language" Type="String" />
                        <asp:Parameter Name="sightseeing" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="image1" Type="String" />
                        <asp:Parameter Name="sid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

