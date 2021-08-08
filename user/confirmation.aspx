<%@ Page Title="" Language="C#" MasterPageFile="~/master/user.master" AutoEventWireup="true" CodeFile="confirmation.aspx.cs" Inherits="user_confirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabuser">
        <tr>
            <td class="tdtag">
                Confirmation Message :-</td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <br />
                    Thank You For Your Request........<br />
                    <br />
                    We will Contact You Within 2 Days.......<br />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/user/feedback.aspx">Your Feedback.....</asp:HyperLink>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

