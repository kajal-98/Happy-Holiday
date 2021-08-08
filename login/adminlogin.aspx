<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style2
        {
            font-size: large;
        }
        .style3
        {
            width: 200px;
        }
        .style4
        {
            font-size: large;
            width: 93px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="tabuser">
        <tr>
            <td class="tdtag" colspan="2">ADMIN LOGIN</td>
        </tr>
        <tr>
            <td class="style4"  >UserName :</td>
            <td style="font-size: large" class="style3">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style2"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Field is Required" ControlToValidate="TextBox1" 
                    CssClass="style2">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4"  >
                Password :</td>
            <td style="font-size: large" class="style3"  >
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="style2"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Field is Required" ControlToValidate="TextBox2" 
                    CssClass="style2">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  colspan="2">
                <asp:Label ID="Label1" runat="server" CssClass="style2"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" >
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="SignIn" CssClass="but" />
            </td>
        </tr>
    </table>
    
</asp:Content>

