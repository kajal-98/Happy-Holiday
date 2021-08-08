<%@ Page Title="" Language="C#" MasterPageFile="~/master/login.master" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 204px;
        }
        .style2
        {
            width: 204px;
            font-size: large;
        }
        .style3
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table class="tabuser">
        <tr><td colspan="3" class="tdtag">USER LOGIN</td></tr>
        <tr><td colspan="3"></td></tr>
        <tr><td align="left" class="style2">Email Id :</td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style3" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style2" >
                Password :</td>
            <td class="style1">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="style3" 
                    ontextchanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" CssClass="style3"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style1">
                <asp:Button ID="Button1" CssClass="but" runat="server" onclick="Button1_Click" Text="SignIn" />
            </td>
            <td class="style1">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large" 
                    NavigateUrl="~/login/forgot.aspx">Forgot Password</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   
</asp:Content>

