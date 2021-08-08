<%@ Page Title="" Language="C#" MasterPageFile="~/master/user.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="user_search" %>

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
    <table class="tabuser">
        <tr><td class="tdtag">KNOW YOUR COUNTRY :-</td></tr>
        <tr><td ></td></tr>
        <tr><td align="center" 
                style="font-family: Arial, Helvetica, sans-serif; color: #FF0066">
            
            Select The State You Want To Visit :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" 
                AutoPostBack="True" Font-Size="Large">
            </asp:DropDownList>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:con %>" 
                SelectCommand="SELECT * FROM [searchinfo]"></asp:SqlDataSource>
            
            </td></tr>
        <tr><td align="center" 
                style="font-family: Arial, Helvetica, sans-serif; color: #FF0066">
            
            <hr style="border-width: medium; border-color: #000080" />
            </td></tr>
        <tr><td>
            <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="sid"  
                DataSourceID="SqlDataSource2" ForeColor="#333333">
                <EditItemTemplate>
                    sid:
                    <asp:Label ID="sidLabel1" runat="server" Text='<%# Eval("sid") %>' />
                    <br />
                    name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    population:
                    <asp:TextBox ID="populationTextBox" runat="server" 
                        Text='<%# Bind("population") %>' />
                    <br />
                    food:
                    <asp:TextBox ID="foodTextBox" runat="server" Text='<%# Bind("food") %>' />
                    <br />
                    language:
                    <asp:TextBox ID="languageTextBox" runat="server" 
                        Text='<%# Bind("language") %>' />
                    <br />
                    sightseeing:
                    <asp:TextBox ID="sightseeingTextBox" runat="server" 
                        Text='<%# Bind("sightseeing") %>' />
                    <br />
                    description:
                    <asp:TextBox ID="descriptionTextBox" runat="server" 
                        Text='<%# Bind("description") %>' />
                    <br />
                    image1:
                    <asp:TextBox ID="image1TextBox" runat="server" Text='<%# Bind("image1") %>' />
                    <br />
                    image2:
                    <asp:TextBox ID="image2TextBox" runat="server" Text='<%# Bind("image2") %>' />
                    <br />
                    image3:
                    <asp:TextBox ID="image3TextBox" runat="server" Text='<%# Bind("image3") %>' />
                    <br />
                    image4:
                    <asp:TextBox ID="image4TextBox" runat="server" Text='<%# Bind("image4") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    population:
                    <asp:TextBox ID="populationTextBox" runat="server" 
                        Text='<%# Bind("population") %>' />
                    <br />
                    food:
                    <asp:TextBox ID="foodTextBox" runat="server" Text='<%# Bind("food") %>' />
                    <br />
                    language:
                    <asp:TextBox ID="languageTextBox" runat="server" 
                        Text='<%# Bind("language") %>' />
                    <br />
                    sightseeing:
                    <asp:TextBox ID="sightseeingTextBox" runat="server" 
                        Text='<%# Bind("sightseeing") %>' />
                    <br />
                    description:
                    <asp:TextBox ID="descriptionTextBox" runat="server" 
                        Text='<%# Bind("description") %>' />
                    <br />
                    image1:
                    <asp:TextBox ID="image1TextBox" runat="server" Text='<%# Bind("image1") %>' />
                    <br />
                    image2:
                    <asp:TextBox ID="image2TextBox" runat="server" Text='<%# Bind("image2") %>' />
                    <br />
                    image3:
                    <asp:TextBox ID="image3TextBox" runat="server" Text='<%# Bind("image3") %>' />
                    <br />
                    image4:
                    <asp:TextBox ID="image4TextBox" runat="server" Text='<%# Bind("image4") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:Image ID="Image2" runat="server" Height="200px" Width="200px" ImageUrl='<%#Bind("image1") %>' />
                            </td>
                            <td>
                                <asp:Image ID="Image3" runat="server" Height="200px" Width="200px" ImageUrl='<%#Bind("image2") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <hr style="border-width: thin; border-color: #000080" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="nameLabel" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    ForeColor="#FF0066" Text='<%# Bind("name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td width="200">
                                Population :</td>
                            <td width="500">
                                <asp:Label ID="populationLabel" runat="server" 
                                    Text='<%# Bind("population") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td width="200">
                                Food :</td>
                            <td width="500">
                                <asp:Label ID="foodLabel" runat="server" Text='<%# Bind("food") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td width="200">
                                Language :</td>
                            <td width="500">
                                <asp:Label ID="languageLabel" runat="server" Text='<%# Bind("language") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td width="200">
                                Sightseeing :</td>
                            <td width="500">
                                <asp:Label ID="sightseeingLabel" runat="server" 
                                    Text='<%# Bind("sightseeing") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td width="200">
                                Description :</td>
                            <td width="500">
                                <asp:Label ID="descriptionLabel" runat="server" 
                                    Text='<%# Bind("description") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td width="200" colspan="2" style="width: 700px">
                                <hr style="border-width: thin; border-color: #000080" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image5" runat="server" Height="200px" 
                                    ImageUrl='<%#Bind("image4") %>' Width="200px" />
                            </td>
                            <td>
                                <asp:Image ID="Image4" runat="server" Height="200px" 
                                    ImageUrl='<%#Bind("image3") %>' Width="200px" />
                            </td>
                        </tr>
                    </table>
                    <br />

                </ItemTemplate>
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:FormView>
            </td></tr>
            <tr><td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:con %>" 
                    SelectCommand="SELECT * FROM [searchinfo] WHERE ([name] = @name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="name" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td></tr>
        
        </table>

</asp:Content>

