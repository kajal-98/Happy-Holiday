<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="pack.aspx.cs" Inherits="admin_pack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabuser">
        <tr><td class="tdtag" colspan="2">Select Your Work :-</td></tr>
        <tr><td></td><td></td></tr>
        <tr><td colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/pil.aspx">Pilgrim Packages</asp:HyperLink>
            </td>
        </tr>
        <tr><td></td><td></td></tr>
        <tr><td colspan="2">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/admin/spe.aspx">Special Packages</asp:HyperLink>
            </td>
        </tr>
        <tr><td></td><td></td></tr>
        <tr><td colspan="2" >
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/admin/fam.aspx">Family Packages</asp:HyperLink>
            </td>
        </tr>
        <tr><td></td><td></td></tr>
        <tr><td colspan="2">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/admin/addpack.aspx">Add New Packages</asp:HyperLink>
            </td>
        </tr>
        <tr><td></td><td></td></tr>
    </table>
</asp:Content>

