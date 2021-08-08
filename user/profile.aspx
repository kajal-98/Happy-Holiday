<%@ Page Title="" Language="C#" MasterPageFile="~/master/user.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="user_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabuser">
        <tr><td class="tdtag"  colspan="4"><strong>PERSONAL DETAILS</strong></td></tr>
        <tr><td colspan="4"></td></tr>
        <tr><td >Emai Id :</td>
            <td ><asp:TextBox ID="emailid" runat="server"></asp:TextBox></td>
            <td colspan="2" ><asp:Button ID="get" runat="server" Text="Get Details" onclick="get_Click" CssClass="but" Width="150px" /></td>
         </tr>
        <tr><td >Full Name :</td>
            <td ><asp:TextBox ID="fullname" runat="server"></asp:TextBox></td>
            <td colspan="2" rowspan="5" ><asp:Label ID="Label1" runat="server"></asp:Label>
            </td></tr>
        <tr><td >Gender :-</td>
            <td ><asp:TextBox ID="gender" runat="server"></asp:TextBox></td>
            </tr>
        <tr><td >Mobile No :-</td>
            <td ><asp:TextBox ID="mobileno" runat="server" MaxLength="10"></asp:TextBox></td>
            </tr>
        <tr><td >&nbsp;</td><td >&nbsp;</td></tr><tr>
        <td></td>
            <td >
            <asp:Button ID="update" runat="server" Text="Update Details" onclick="update_Click" CssClass="but" Width="200px" /></td></tr>
        <tr><td colspan="3" >&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td class="tdtag" colspan="4" >PASSWORD DETAILS </td></tr>
        <tr><td colspan="4" >&nbsp;</td></tr>
        <tr><td class="style1" >Old Password :-</td>
            <td class="style1" ><asp:TextBox ID="old" runat="server" TextMode="Password"></asp:TextBox></td>
            <td colspan="2" rowspan="4" ><asp:Label ID="Label2" runat="server"></asp:Label></td></tr>
        <tr><td >New Password :-</td><td>
            <asp:TextBox ID="newpass" runat="server" TextMode="Password"></asp:TextBox></td></tr>
        <tr><td >&nbsp;</td><td >&nbsp;</td></tr><tr><td >&nbsp;</td>
            <td ><asp:Button ID="change" runat="server" Text="Change Password" onclick="change_Click" CssClass="but" Width="200px" /></td></tr>
        <tr><td colspan="3">&nbsp;</td><td>&nbsp;</td></tr>
    </table>
</asp:Content>

