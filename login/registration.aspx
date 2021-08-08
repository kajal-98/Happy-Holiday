<%@ Page Title="" Language="C#" MasterPageFile="~/master/login.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
            border: 4px solid #000080;
        }
        .style9
        {
            font-family: "Arial Rounded MT Bold";
            font-size: xx-large;
            color: #FFFFFF;
            background-color: #507CD1;
        }
        .style10
        {
            color: #FF0000;
        }
        .style12
        {
            font-size: large;
        }
        .style13
        {
            height: 26px;
            font-size: large;
            width: 158px;
        }
        .style15
        {
            height: 26px;
            width: 375px;
        }
        .style16
        {
            font-size: large;
            width: 158px;
        }
        .style17
        {
            width: 158px;
        }
        .style18
        {
            font-size: large;
            width: 207px;
        }
        .style19
        {
            width: 207px;
        }
        .style20
        {
            height: 26px;
            width: 207px;
        }
        .style21
        {
            width: 375px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table align="center" bgcolor="#EFF3FB" class="style8">
        <tr>
            <td class="style9" colspan="3">
                <strong >Registration Details</strong></td>
        </tr>
        <tr>
            <td colspan="3">
                <hr style="border-style: solid" />
            </td>
        </tr>
        <tr>
            <td align="left" class="style16">
                FullName :</td>
            <td class="style21">
                <asp:TextBox ID="username" runat="server" CssClass="style12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="username" ErrorMessage="Full Name should not be blank" 
                    CssClass="style10" Display="Dynamic"> *</asp:RequiredFieldValidator>
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style16">
                Email Id :
            </td>
            <td class="style21">
                <asp:TextBox ID="emailid" runat="server" ontextchanged="emailid_TextChanged" 
                    CssClass="style12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="emailid" ErrorMessage="Email Id should not be blank" 
                    CssClass="style10">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="emailid" ErrorMessage="Enter Valid Email Id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    CssClass="style10">*</asp:RegularExpressionValidator>
            </td>
            <td class="style19">
                <asp:Label ID="confirmemail" runat="server" CssClass="style12"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" class="style13">
                Password :</td>
            <td class="style15">
                <asp:TextBox ID="password" runat="server" TextMode="Password" 
                    CssClass="style12" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="password" CssClass="style10" 
                    ErrorMessage="Password should not be blank">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="password" 
                    ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,10}$" 
                    ErrorMessage="min 8 digits required"></asp:RegularExpressionValidator>
            </td>
            <td class="style20">
                </td>
        </tr>
        <tr>
            <td align="left" class="style13">
                Confirm Password :</td>
            <td class="style15">
                <asp:TextBox ID="confirmpass" runat="server" TextMode="Password" 
                    CssClass="style12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="confirmpass" ErrorMessage="Confirm Password should not be blank" 
                    CssClass="style10">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="password" ControlToValidate="confirmpass" 
                    ErrorMessage="Enter Correct Password" CssClass="style10">*</asp:CompareValidator>
            </td>
            <td class="style20">
                </td>
        </tr>
        <tr>
            <td align="left" class="style16">
                Gender :</td>
            <td class="style21">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Gender should not be blank" 
                    CssClass="style10">*</asp:RequiredFieldValidator>
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style16">
                Mobile No :</td>
            <td class="style21">
                <asp:TextBox ID="Mobileno" runat="server" MaxLength="10" CssClass="style12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Mobileno" ErrorMessage="Mobile No should not be blank" 
                    CssClass="style10">*</asp:RequiredFieldValidator>
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style16">
                Security Text :</td>
            <td class="style21">
                <asp:Label ID="sectext" runat="server" BackColor="#FFFFCC" CssClass="style12" 
                    Font-Bold="True" Font-Italic="True" Font-Names="Berlin Sans FB" 
                    Font-Overline="True" Font-Size="XX-Large" Font-Strikeout="True" 
                    Font-Underline="True" ForeColor="Blue" BorderStyle="Solid" Width="200px"></asp:Label>
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style16">
                &nbsp;</td>
            <td class="style21">
                <asp:TextBox ID="text" runat="server" CssClass="style12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="text" ErrorMessage="Security Text should not be blank" 
                    CssClass="style10">*</asp:RequiredFieldValidator>
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td class="style21">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="create" runat="server" Text="Create" onclick="create_Click" 
                    CssClass="but" />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/login/userlogin.aspx">Login Page</asp:HyperLink>

                </td>
        </tr>
    </table>
    
</asp:Content>

