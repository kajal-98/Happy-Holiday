<%@ Page Title="" Language="C#" MasterPageFile="~/master/user.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="user_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style6
        {
            font-size: large;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabuser">
        <tr><td colspan="3" bgcolor="#507CD1" style="font-size: xx-large; font-weight: 700; color: #FFFFFF; font-family: 'Arial Rounded MT Bold';" >FEEDBACK :-</td></tr>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr><td class="style6">UserName :-</td>
            <td><asp:TextBox ID="username" runat="server" CssClass="style6"></asp:TextBox></td>
            <td>&nbsp;</td></tr>
        <tr><td class="style6">Give your Feedbacks :-</td><td>
                <asp:TextBox ID="description" runat="server" TextMode="MultiLine" 
                    CssClass="style6"></asp:TextBox></td>
            <td>&nbsp;</td></tr>
        <tr><td class="style6">&nbsp;</td><td class="style6">&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td>
            <asp:Button ID="submit" runat="server"  Text="Post" Width="150px" onclick="submit_Click" 
                CssClass="but" /></td>
            <td>
                <asp:Label ID="Label1" runat="server" CssClass="style6"></asp:Label>
            </td>
            <td>&nbsp;</td></tr>
        <tr><td colspan="2">&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td class="tdtag" colspan="3">Customer&#39;s Reviews : </td></tr>
        <tr><td colspan="2">&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td colspan="2">
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
                DataSourceID="SqlDataSource1" ForeColor="#333333">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#EFF3FB" />
                <ItemTemplate>
                    Feedbacks:
                    <asp:Label ID="FeedbacksLabel" runat="server" Text='<%# Eval("Feedbacks") %>' />
                    <br />
<br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:con %>" 
                SelectCommand="SELECT [Feedbacks] FROM [feedback]"></asp:SqlDataSource>
            </td><td>&nbsp;</td></tr>
    </table>
</asp:Content>

