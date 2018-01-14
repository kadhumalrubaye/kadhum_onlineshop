<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="3"><h1>update item</h1></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="itemNameLabel1" runat="server" OnPreRender="Page_Load" ></asp:Label>
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CatNo" DataSourceID="updateSqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="CatNo" HeaderText="CatNo" ReadOnly="True" SortExpression="CatNo" />
                        <asp:BoundField DataField="CatName" HeaderText="CatName" SortExpression="CatName" />
                        <asp:BoundField DataField="des" HeaderText="des" SortExpression="des" />
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
                <asp:SqlDataSource ID="updateSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [CatNo] = @CatNo" InsertCommand="INSERT INTO [Category] ([CatNo], [CatName], [des]) VALUES (@CatNo, @CatName, @des)" SelectCommand="SELECT * FROM [Category] WHERE ([CatNo] = @CatNo)" UpdateCommand="UPDATE [Category] SET [CatName] = @CatName, [des] = @des WHERE [CatNo] = @CatNo">
                    <DeleteParameters>
                        <asp:Parameter Name="CatNo" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CatNo" Type="String" />
                        <asp:Parameter Name="CatName" Type="String" />
                        <asp:Parameter Name="des" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="itemNameLabel1" Name="CatNo" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CatName" Type="String" />
                        <asp:Parameter Name="des" Type="String" />
                        <asp:Parameter Name="CatNo" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

