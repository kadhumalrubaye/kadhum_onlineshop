<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="AdminUsers.aspx.cs" Inherits="userControls_AdminUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="username" DataSourceID="usersSqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
        <asp:BoundField DataField="passowrd" HeaderText="passowrd" SortExpression="passowrd" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
        <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
        <asp:BoundField DataField="birth_date" HeaderText="birth_date" SortExpression="birth_date" />
        <asp:BoundField DataField="quastiion" HeaderText="quastiion" SortExpression="quastiion" />
        <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
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
<asp:SqlDataSource ID="usersSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" DeleteCommand="DELETE FROM [users] WHERE [username] = @username" InsertCommand="INSERT INTO [users] ([username], [passowrd], [name], [email], [phone], [company], [gender], [birth_date], [quastiion], [answer]) VALUES (@username, @passowrd, @name, @email, @phone, @company, @gender, @birth_date, @quastiion, @answer)" SelectCommand="SELECT * FROM [users]" UpdateCommand="UPDATE [users] SET [passowrd] = @passowrd, [name] = @name, [email] = @email, [phone] = @phone, [company] = @company, [gender] = @gender, [birth_date] = @birth_date, [quastiion] = @quastiion, [answer] = @answer WHERE [username] = @username">
    <DeleteParameters>
        <asp:Parameter Name="username" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="passowrd" Type="String" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="phone" Type="Int32" />
        <asp:Parameter Name="company" Type="String" />
        <asp:Parameter Name="gender" Type="String" />
        <asp:Parameter Name="birth_date" Type="String" />
        <asp:Parameter Name="quastiion" Type="String" />
        <asp:Parameter Name="answer" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="passowrd" Type="String" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="phone" Type="Int32" />
        <asp:Parameter Name="company" Type="String" />
        <asp:Parameter Name="gender" Type="String" />
        <asp:Parameter Name="birth_date" Type="String" />
        <asp:Parameter Name="quastiion" Type="String" />
        <asp:Parameter Name="answer" Type="String" />
        <asp:Parameter Name="username" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

