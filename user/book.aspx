<%@ Page Title="" Language="C#" MasterPageFile="~/master/user.master" AutoEventWireup="true" CodeFile="book.aspx.cs" Inherits="user_book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
        .style3
        {
        width: 29px;
        font-size: large;
    }
    .style4
    {
        font-size: large;
    }
    .style5
    {
        height: 23px;
        font-size: large;
    }
        .style6
        {
            font-size: large;
            height: 25px;
        }
        .style7
        {
            width: 29px;
            font-size: large;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="tabuser">
        <tr>
            <td colspan="5" class="tdtag">
                Book Package</td>
        </tr>
        <tr>
            <td colspan="5" class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" width="200">
                Email Id :</td>
            <td class="style1" colspan="4" style="font-size: x-large">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style5" width="200">
                Package Type :</td>
            <td class="style1" colspan="4" style="font-size: x-large">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                    <asp:ListItem>Pilgrim</asp:ListItem>
                    <asp:ListItem>Special</asp:ListItem>
                    <asp:ListItem>Family</asp:ListItem>
                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="style5" width="200">
                Package Name :</td>
            <td class="style1" colspan="4" style="font-size: x-large">
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="style5" width="200">
                Price :</td>
            <td class="style1" colspan="4" style="font-size: x-large">
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>25000</asp:ListItem>
                    <asp:ListItem>30000</asp:ListItem>
                    <asp:ListItem>35000</asp:ListItem>
                    <asp:ListItem>39000</asp:ListItem>
                    <asp:ListItem>40000</asp:ListItem>
                </asp:DropDownList>
&nbsp; <span class="style4">[including travel fare ]</span></td>
        </tr>
        <tr>
            <td class="style4" width="200">
                No of Persons :</td>
            <td class="style4" colspan="4" style="font-size: x-large">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6" width="200">
                </td>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
            <td class="style7">
                </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style4" width="200">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" width="200">
                <asp:Button ID="Button1" runat="server" Text="Confirm Trip" CssClass="but" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="style4" width="200">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

