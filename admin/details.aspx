<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="admin_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="tabuser">
        <tr><td  class="tdtag">BOOKING DETAILS</td></tr>
        <tr><td></td></tr>
        <tr><td align="left">
                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AutoGenerateColumns="False" DataSourceID="records" 
                    AllowPaging="True" AllowSorting="True" DataKeyNames="RecordId">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="RecordId" HeaderText="RecordId" 
                            SortExpression="RecordId" ReadOnly="True" InsertVisible="False" />
                        <asp:BoundField DataField="EmailId" HeaderText="EmailId" 
                            SortExpression="EmailId" />
                        <asp:BoundField DataField="PackageType" HeaderText="PackageType" 
                            SortExpression="PackageType" />
                        <asp:BoundField DataField="PackageName" HeaderText="PackageName" 
                            SortExpression="PackageName" />
                        <asp:BoundField DataField="NoOfPersons" HeaderText="NoOfPersons" 
                            SortExpression="NoOfPersons" />
                        <asp:BoundField DataField="TPrice" HeaderText="TPrice" 
                            SortExpression="TPrice" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" 
                            DataFormatString="{0:dd/MM/yyyy}" />
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
                <asp:SqlDataSource ID="records" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:con %>" 
                    SelectCommand="SELECT * FROM [records]">
                </asp:SqlDataSource>
            </td></tr>
        </table>
</asp:Content>

