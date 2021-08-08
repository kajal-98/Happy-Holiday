<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="userdetails.aspx.cs" Inherits="admin_userdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabuser">
    <tr>
        <td class="tdtag" colspan="2">
            USER DETAILS</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" align="left">
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                AutoGenerateRows="False" CellPadding="4" DataKeyNames="Userid" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                Height="50px" Width="500px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Userid" HeaderText="Userid" InsertVisible="False" 
                        ReadOnly="True" SortExpression="Userid" />
                    <asp:BoundField DataField="Fullname" HeaderText="Fullname" 
                        SortExpression="Fullname" />
                    <asp:BoundField DataField="EmailId" HeaderText="EmailId" 
                        SortExpression="EmailId" />
                    <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                        SortExpression="ContactNo" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" 
                        SortExpression="Gender" />
                    <asp:BoundField DataField="Status" HeaderText="Status" 
                        SortExpression="Status" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:con %>" 
                DeleteCommand="DELETE FROM [userregistry] WHERE [Userid] = @Userid" 
                InsertCommand="INSERT INTO [userregistry] ([Fullname], [EmailId], [ContactNo], [Gender], [Status]) VALUES (@Fullname, @EmailId, @ContactNo, @Gender, @Status)" 
                SelectCommand="SELECT [Userid], [Fullname], [EmailId], [ContactNo], [Gender], [Status] FROM [userregistry] ORDER BY [Date]" 
                
                UpdateCommand="UPDATE [userregistry] SET [Fullname] = @Fullname, [EmailId] = @EmailId, [ContactNo] = @ContactNo, [Gender] = @Gender, [Status] = @Status WHERE [Userid] = @Userid">
                <DeleteParameters>
                    <asp:Parameter Name="Userid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Fullname" Type="String" />
                    <asp:Parameter Name="EmailId" Type="String" />
                    <asp:Parameter Name="ContactNo" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Fullname" Type="String" />
                    <asp:Parameter Name="EmailId" Type="String" />
                    <asp:Parameter Name="ContactNo" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="Userid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

