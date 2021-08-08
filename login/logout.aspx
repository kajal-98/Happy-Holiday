<%@ Page Title="" Language="C#" MasterPageFile="~/master/login.master" AutoEventWireup="true" CodeFile="logout.aspx.cs" Inherits="logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#0000CC" height="300" 
                style="font-size: x-large; font-weight: bolder; font-family: Arial, Helvetica, sans-serif; font-style: normal; color: #FFFFFF">
                Your Sesssion has been expired. Redirect to
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF0066" 
                    NavigateUrl="~/login/homepage.aspx">Home Page</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

