<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="addpack.aspx.cs" Inherits="admin_addpack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    
    
    <style type="text/css">
        .style2
        {
            height: 57px;
        }
        .style3
        {
            font-size: large;
        }
        .style4
        {
            height: 25px;
            width: 1090px;
            font-size: large;
        }
    </style>
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabuser">
        <tr>
            <td class="tdtag" colspan="3">ADD NEW PACKAGE :-</td>
        </tr>
        <tr>
            <td width="200" >
                Package
                Name :</td>
            <td width="500" height="50">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style4" Width="300px"></asp:TextBox>
            </td>
            <td width="500" rowspan="3">
                <asp:Image ID="Image3" runat="server" Height="200px" ImageUrl="~/image/goa.jpg" 
                    Width="300px" />
            </td>
        </tr>
        <tr>
            <td width="200" >
                Cost :</td>
            <td width="500" height="50">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style4" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="200" >
                Days :</td>
            <td width="500" height="50">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="style4" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="200" >
                Place :</td>
            <td width="500" height="50">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="style4" Width="200px" 
                    ontextchanged="TextBox4_TextChanged"></asp:TextBox>
            </td>
            <td width="600" rowspan="4">
                <asp:Image ID="Image4" runat="server" Height="200px" ImageUrl="~/states/k3.jpg" 
                    Width="300px" />
            </td>
        </tr>
        <tr>
            <td width="200" >
                Package Type :</td>
            <td width="500" height="60">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" 
                    CssClass="style3">
                    <asp:ListItem>Pilgrim</asp:ListItem>
                    <asp:ListItem>Family</asp:ListItem>
                    <asp:ListItem>Special</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td width="200" >
                Day 1 :</td>
            <td width="500" height="50">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="style1" 
                    TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="200" >
                Day 2 :</td>
            <td width="500">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="style1" 
                    TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="200" >
                Day 3 :</td>
            <td width="500">
                <asp:TextBox ID="TextBox7" runat="server" CssClass="style1" 
                    TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
            </td>
            <td width="600" height="150" rowspan="4">
                <asp:Image ID="Image5" runat="server" Height="200px" 
                    ImageUrl="~/image/honey.jpg" Width="300px" />
            </td>
        </tr>
        <tr>
            <td width="200" >
                Day 4:</td>
            <td width="500">
                <asp:TextBox ID="TextBox8" runat="server" CssClass="style1" 
                    TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="200" class="style2" >
                Day 5 :</td>
            <td width="500" class="style2">
                <asp:TextBox ID="TextBox9" runat="server" CssClass="style1" 
                    TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="200" >
                Day 6:</td>
            <td width="500">
                <asp:TextBox ID="TextBox10" runat="server" CssClass="style1" 
                    TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="200" >
                Meals On Tour :</td>
            <td width="500">
                <asp:TextBox ID="TextBox11" runat="server" CssClass="style1" 
                    TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
            </td>
            <td width="600" height="150" rowspan="4">
                <asp:Image ID="Image6" runat="server" Height="200px" 
                    ImageUrl="~/states/ke2.jpg" Width="300px" />
            </td>
        </tr>
        <tr>
            <td width="200" >
                Inclusions :</td>
            <td width="500">
                <asp:TextBox ID="TextBox12" runat="server" CssClass="style1" 
                    TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="200" >
                Exclusions :</td>
            <td width="500">
                <asp:TextBox ID="TextBox13" runat="server" CssClass="style1" 
                    TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" width="200">
                Image :</td>
            <td width="500">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="style1" 
                    Width="300px" />
            </td>
        </tr>
        <tr>
            <td colspan="2" width="500">
                &nbsp;</td>
            <td width="500">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" width="500">
                <asp:Button ID="Button3" runat="server" CssClass="but" Text="Add" 
                    onclick="Button3_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td width="500">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

