<%@ Page Title="" Language="C#" MasterPageFile="~/master/login.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        width: 100%;
        border: 3px solid #000066;
        background-color: #FFFFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style5" style="background-color: #EFF3FB">
    <tr>
        <td colspan="3" align="center">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>  
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="4000" ontick="Timer1_Tick1">
            </asp:Timer>  
            <asp:Image ID="Image1" runat="server" Height="300px" Width="1000px" 
                    BorderColor="#000099" BorderStyle="Solid" />
            </ContentTemplate>
            </asp:UpdatePanel> 
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <hr style="border-color: #000099; border-style: solid" />
        </td>
    </tr>
    <tr>
        <td align="center" height="150" valign="top" width="400" 
            
            
            
            style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bolder">
            
            <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="Register" 
                BorderStyle="Solid" Height="150px" ImageUrl="~/image/register.jpg" 
                onclick="ImageButton1_Click" Width="150px" />
            
            <br />
            REGISTRATION</td>
        <td align="center" height="150" valign="top" width="400" 
            
            
            style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bolder; width: 300px;">
            
            <asp:ImageButton ID="ImageButton2" runat="server" AlternateText="User Login" 
                BorderStyle="Solid" Height="150px" ImageUrl="~/image/User.jpg" 
                onclick="ImageButton2_Click" Width="150px" />
            
            <br />
            USER LOGIN<br />
            </td>
        <td align="center" height="150" valign="top" width="400" 
            
            
            
            style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bolder">
            
            <asp:ImageButton ID="ImageButton4" runat="server" AlternateText="Admin Login" 
                BorderStyle="Solid" Height="150px" ImageUrl="~/image/Admin.jpg" 
                onclick="ImageButton4_Click" Width="150px" />
            
            <br />
            ADMIN LOGIN</td>
    </tr>
    <tr>
        <td colspan="3">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

