<%@ Page Title="" Language="C#" MasterPageFile="~/master/user.master" AutoEventWireup="true" CodeFile="cancelreq.aspx.cs" Inherits="user_cancelreq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="tabuser">
        <tr><td colspan="2" class="tdtag" >REQUEST RECORDS:-</td></tr>
        <tr><td class="style1">&nbsp;</td><td class="style1">&nbsp;</td></tr>
        <tr><td class="style1" >Enter Emailid :-</td>
            <td ><asp:TextBox ID="TextBox1" runat="server" CssClass="style1"></asp:TextBox></td></tr>
        <tr><td class="style1">&nbsp;</td><td class="style1">&nbsp;</td></tr>
        <tr><td ></td>
            <td ><asp:Button ID="showdetails" runat="server"  Text="Show Details"  
                    CssClass="but" onclick="showdetails_Click" /></td></tr>
        <tr><td class="style1">&nbsp;</td><td class="style1">&nbsp;</td></tr>
        <tr><td colspan="2" class="style1">Your Records :-</td></tr>
        <tr><td colspan="2" class="style1">&nbsp;</td></tr>
        <tr><td  colspan="2">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AllowPaging="True" AllowSorting="True" 
                    AutoGenerateColumns="False" onrowdeleting="GridView1_RowDeleting" 
                    DataKeyNames="RecordId" DataSourceID="SqlDataSource1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="RecordId" HeaderText="RecordId" 
                            InsertVisible="False" ReadOnly="True" SortExpression="RecordId" />
                        <asp:BoundField DataField="PackageType" HeaderText="PackageType" 
                            SortExpression="PackageType" />
                        <asp:BoundField DataField="PackageName" HeaderText="PackageName" 
                            SortExpression="PackageName" />
                        <asp:BoundField DataField="NoOfPersons" HeaderText="NoOfPersons" 
                            SortExpression="NoOfPersons" />
                        <asp:BoundField DataField="TPrice" HeaderText="TPrice" 
                            SortExpression="TPrice" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:con %>" 
                    DeleteCommand="DELETE FROM [records] WHERE [RecordId] = @RecordId" 
                    InsertCommand="INSERT INTO [records] ([EmailId], [PackageName], [Price], [Date]) VALUES (@EmailId, @PackageName, @Price, @Date)" 
                    SelectCommand="SELECT RecordId, PackageType, PackageName, NoOfPersons, TPrice FROM records WHERE (EmailId = @EmailId)" 
                    
                    UpdateCommand="UPDATE [records] SET [EmailId] = @EmailId, [PackageName] = @PackageName, [Price] = @Price, [Date] = @Date WHERE [RecordId] = @RecordId">
                    <DeleteParameters>
                        <asp:Parameter Name="RecordId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="EmailId" Type="String" />
                        <asp:Parameter Name="PackageName" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="EmailId" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="EmailId" Type="String" />
                        <asp:Parameter Name="PackageName" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="RecordId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td></tr>
        <tr><td class="style1">&nbsp;</td><td class="style1">&nbsp;</td></tr>
        <tr><td class="style1">&nbsp;</td><td class="style1">&nbsp;</td></tr>
    </table>
</asp:Content>

