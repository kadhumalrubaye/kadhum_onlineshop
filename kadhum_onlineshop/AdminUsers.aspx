<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="AdminUsers.aspx.cs" Inherits="userControls_AdminUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="proSercjResult ">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="username" DataSourceID="usersSqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#330099" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <SortedAscendingCellStyle BackColor="#FEFCEB" />
    <SortedAscendingHeaderStyle BackColor="#AF0101" />
    <SortedDescendingCellStyle BackColor="#F6F0C0" />
    <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>
    </div>
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

