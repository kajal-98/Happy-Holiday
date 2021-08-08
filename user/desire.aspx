<%@ Page Title="" Language="C#" MasterPageFile="~/master/user.master" AutoEventWireup="true" CodeFile="desire.aspx.cs" Inherits="user_desire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="tabuser">
        <tr>
            <td  colspan="2"  class="tdtag">
                <strong>MAKE YOUR OWN TRIP :-</strong></td>
        </tr>
        <tr><td ></td><td ></td></tr>
        <tr><td >Name :-</td>
            <td><asp:TextBox ID="name" runat="server" CssClass="style8"></asp:TextBox>
            </td></tr>
        <tr><td >Email Id :-</td>
            <td><asp:TextBox ID="email" runat="server" CssClass="style8"></asp:TextBox>
            </td></tr>
        <tr><td >Address :-</td>
            <td>
                <asp:TextBox ID="address" runat="server" TextMode="MultiLine" CssClass="style8"></asp:TextBox>
            </td></tr>
        <tr><td >Mobile No :-</td>
            <td>
                <asp:TextBox ID="mobileno" runat="server" MaxLength="10" CssClass="style8"></asp:TextBox>
            </td></tr>
        <tr><td >Select Destination you would like to visit :-</td>
            <td><asp:DropDownList ID="DropDownList1" runat="server" CssClass="style8">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Mahrashtra</asp:ListItem>
                    <asp:ListItem>Rajasthan</asp:ListItem>
                    <asp:ListItem>Kerela</asp:ListItem>
                    <asp:ListItem>Goa</asp:ListItem>
                    <asp:ListItem>Gujrat</asp:ListItem>
                    <asp:ListItem>Assam</asp:ListItem>
                    <asp:ListItem>West Bengal</asp:ListItem>
                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Jammu And Kashmir</asp:ListItem>
                    <asp:ListItem>Manipur</asp:ListItem>
                    <asp:ListItem>Nagaland</asp:ListItem>
                    <asp:ListItem>Mizoram</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                </asp:DropDownList>
            </td></tr>
        <tr><td >Type of Tour :-</td>
            <td><asp:DropDownList ID="DropDownList2" runat="server" CssClass="style8">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Educational</asp:ListItem>
                    <asp:ListItem>Ladies</asp:ListItem>
                    <asp:ListItem>Mens</asp:ListItem>
                    <asp:ListItem>Group</asp:ListItem>
                    <asp:ListItem>HoneyMoon</asp:ListItem>
                    <asp:ListItem>Pilgrim</asp:ListItem>
                    <asp:ListItem>Corporate</asp:ListItem>
                </asp:DropDownList>
            </td></tr>
        <tr><td >Select Accomodation :-</td>
            <td><asp:DropDownList ID="DropDownList3" runat="server" CssClass="style8">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Luxury Hotel</asp:ListItem>
                    <asp:ListItem>Beach Resort</asp:ListItem>
                    <asp:ListItem>Camps</asp:ListItem>
                    <asp:ListItem>Palaces &amp; Villas</asp:ListItem>
                    <asp:ListItem>House Boats</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td >
                Choose Transport :-</td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="style8">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Car</asp:ListItem>
                    <asp:ListItem>Train</asp:ListItem>
                    <asp:ListItem>bus</asp:ListItem>
                  
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td valign="top" >
                Specify Budget :-</td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" style="font-size: large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td  valign="top">From Date :-</td>
            <td  valign="top">
                <asp:TextBox ID="calender" runat="server" CssClass="style8"></asp:TextBox>
            </td></tr>
        <tr><td >Duration :-</td>
            <td ><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td></tr>
        <tr><td >Adult :-</td>
            <td><asp:TextBox ID="adult" runat="server" MaxLength="3" CssClass="style8"></asp:TextBox>
            </td></tr>
        <tr><td >Children :-</td>
            <td><asp:TextBox ID="child" runat="server" MaxLength="3" CssClass="style8"></asp:TextBox>
            </td></tr>
        <tr><td >Any other Descriptions :-</td>
            <td><asp:TextBox ID="other" runat="server" TextMode="MultiLine" CssClass="style8"></asp:TextBox>
            </td></tr>
        <tr><td >Security Text :-</td>
            <td align="left" valign="middle"><asp:Label ID="Label1" runat="server" 
                    CssClass="style8" BackColor="#FFFF66" BorderColor="#000099" BorderStyle="Solid" 
                    Font-Bold="True" Font-Italic="True" Font-Overline="True" Font-Size="X-Large" 
                    Font-Strikeout="True" Font-Underline="True" ForeColor="#663300" Height="30px" 
                    Width="100px"></asp:Label>
            </td></tr>
        <tr><td >&nbsp;</td>
            <td><asp:TextBox ID="sectext" runat="server" CssClass="style8"></asp:TextBox></td></tr>
        <tr><td >&nbsp;</td><td >&nbsp;</td></tr>
        <tr><td  colspan="2">
                <asp:Button ID="send" runat="server"  Text="Send Request" ViewStateMode="Enabled" 
                    Width="200px" CssClass="but" onclick="send_Click" />
            </td></tr>
        </table>
    
</asp:Content>

