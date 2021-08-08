<%@ Page Title="" Language="C#" MasterPageFile="~/master/login.master" AutoEventWireup="true" CodeFile="forgot.aspx.cs" Inherits="login_forgot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tab">
        <tr>
            <td colspan="2" class="tdtag">FORGOT PASSWORD</td>
        </tr>
        <tr><td ></td><td ></td></tr>
        <tr>
            <td >Email Id :</td>
            <td><asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox></td>
        </tr>
        <tr><td ></td><td ></td></tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Get Password" CssClass="but" 
                    onclick="Button1_Click" Width="200px"/>
            </td>
        </tr>
        <tr><td ></td><td ></td></tr>
        <tr>
            <td colspan="2" >Your Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                <asp:Label ID="Label1" runat="server" CssClass="style1" Font-Bold="True" 
                    Font-Italic="True" Font-Underline="True"></asp:Label>
            </td>
        </tr>
        <tr><td ></td><td ></td></tr>
        <tr><td >
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/login/userlogin.aspx">go back.........</asp:HyperLink>
            </td><td >&nbsp;</td></tr>
    </table>
</asp:Content>

