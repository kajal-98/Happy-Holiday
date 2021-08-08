<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="desirereq.aspx.cs" Inherits="admin_desirereq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="tabuser">
        <tr>
            <td class="tdtag">
                REQUEST FOR PACKAGES :-</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                    AutoGenerateRows="False" CellPadding="4" DataKeyNames="did" DataSourceID="des" 
                    ForeColor="#333333" GridLines="None" Height="50px" Width="300px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="did" HeaderText="Desire Id :" InsertVisible="False" 
                            ReadOnly="True" SortExpression="did" />
                        <asp:BoundField DataField="name" HeaderText="Name :" SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="Email ID :" SortExpression="email" />
                        <asp:BoundField DataField="address" HeaderText="Address :" 
                            SortExpression="address" />
                        <asp:BoundField DataField="contact" HeaderText="Contact No :" 
                            SortExpression="contact" />
                        <asp:BoundField DataField="destination" HeaderText="Destination :" 
                            SortExpression="destination" />
                        <asp:BoundField DataField="type" HeaderText="Type : " SortExpression="type" />
                        <asp:BoundField DataField="accomodation" HeaderText="Accomodation :" 
                            SortExpression="accomodation" />
                        <asp:BoundField DataField="transport" HeaderText="Transport :" 
                            SortExpression="transport" />
                        <asp:BoundField DataField="budget" HeaderText="Budget :" 
                            SortExpression="budget" />
                        <asp:BoundField DataField="date" HeaderText="Date :" SortExpression="date" />
                        <asp:BoundField DataField="duration" HeaderText="Duration :" 
                            SortExpression="duration" />
                        <asp:BoundField DataField="adult" HeaderText="Adult :" SortExpression="adult" />
                        <asp:BoundField DataField="child" HeaderText="Child :" SortExpression="child" />
                        <asp:BoundField DataField="description" HeaderText="Description :" 
                            SortExpression="description" />
                    </Fields>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="des" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:con %>" 
                    DeleteCommand="DELETE FROM [desire] WHERE [did] = @did" 
                    InsertCommand="INSERT INTO [desire] ([name], [email], [address], [contact], [destination], [type], [accomodation], [transport], [budget], [date], [duration], [adult], [child], [description]) VALUES (@name, @email, @address, @contact, @destination, @type, @accomodation, @transport, @budget, @date, @duration, @adult, @child, @description)" 
                    SelectCommand="SELECT * FROM [desire]" 
                    UpdateCommand="UPDATE [desire] SET [name] = @name, [email] = @email, [address] = @address, [contact] = @contact, [destination] = @destination, [type] = @type, [accomodation] = @accomodation, [transport] = @transport, [budget] = @budget, [date] = @date, [duration] = @duration, [adult] = @adult, [child] = @child, [description] = @description WHERE [did] = @did">
                    <DeleteParameters>
                        <asp:Parameter Name="did" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="contact" Type="String" />
                        <asp:Parameter Name="destination" Type="String" />
                        <asp:Parameter Name="type" Type="String" />
                        <asp:Parameter Name="accomodation" Type="String" />
                        <asp:Parameter Name="transport" Type="String" />
                        <asp:Parameter Name="budget" Type="String" />
                        <asp:Parameter DbType="Date" Name="date" />
                        <asp:Parameter Name="duration" Type="String" />
                        <asp:Parameter Name="adult" Type="String" />
                        <asp:Parameter Name="child" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="contact" Type="String" />
                        <asp:Parameter Name="destination" Type="String" />
                        <asp:Parameter Name="type" Type="String" />
                        <asp:Parameter Name="accomodation" Type="String" />
                        <asp:Parameter Name="transport" Type="String" />
                        <asp:Parameter Name="budget" Type="String" />
                        <asp:Parameter DbType="Date" Name="date" />
                        <asp:Parameter Name="duration" Type="String" />
                        <asp:Parameter Name="adult" Type="String" />
                        <asp:Parameter Name="child" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="did" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
       </table>
</asp:Content>

