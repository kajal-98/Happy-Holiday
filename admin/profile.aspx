<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="admin_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    
    
    <style type="text/css">
        .style1
        {
            height: 25px;
        }
        .style2
        {
            font-size: large;
        }
    </style>
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabuser">
        <tr>
            <td class="tdtag">
                WELCOME BACK 
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                ......!!!!!!</td>
        </tr>
        <tr>
            <td >
                <br />
            </td>
        </tr>
        <tr>
            <td class="tdtag"  >
                Edit Details :-</td>
        </tr>
        <tr>
            <td >
                </td>
        </tr>
        <tr>
            <td align="left" >
                Name :&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style2"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >
                Password :&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style2" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Button ID="Button3" runat="server" CssClass="but" Text="Update" 
                    onclick="Button3_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

