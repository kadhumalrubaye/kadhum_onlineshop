<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="AdminProducts.aspx.cs" Inherits="AdminProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="proSercjResult">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="proID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="catNo" HeaderText="catNo" SortExpression="catNo" />
            <asp:BoundField DataField="proID" HeaderText="proID" InsertVisible="False" ReadOnly="True" SortExpression="proID" />
            <asp:BoundField DataField="proName" HeaderText="proName" SortExpression="proName" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="AvQty" HeaderText="AvQty" SortExpression="AvQty" />
            <asp:BoundField DataField="WrittingDate" HeaderText="WrittingDate" SortExpression="WrittingDate" />
            <asp:BoundField DataField="descrp" HeaderText="descrp"  SortExpression="descrp" />
            <asp:ImageField DataAlternateTextField="proImg" DataImageUrlField="proImg" ControlStyle-Width="50">
<ControlStyle Width="50px"></ControlStyle>
            </asp:ImageField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [proID] = @proID" InsertCommand="INSERT INTO [product] ([catNo], [proName], [price], [AvQty], [proImg], [WrittingDate], [descrp]) VALUES (@catNo, @proName, @price, @AvQty, @proImg, @WrittingDate, @descrp)" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [catNo] = @catNo, [proName] = @proName, [price] = @price, [AvQty] = @AvQty, [proImg] = @proImg, [WrittingDate] = @WrittingDate, [descrp] = @descrp WHERE [proID] = @proID">
        <DeleteParameters>
            <asp:Parameter Name="proID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="catNo" Type="Int32" />
            <asp:Parameter Name="proName" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="AvQty" Type="Int32" />
            <asp:Parameter Name="proImg" Type="String" />
            <asp:Parameter Name="WrittingDate" Type="String" />
            <asp:Parameter Name="descrp" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="catNo" Type="Int32" />
            <asp:Parameter Name="proName" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="AvQty" Type="Int32" />
            <asp:Parameter Name="proImg" Type="String" />
            <asp:Parameter Name="WrittingDate" Type="String" />
            <asp:Parameter Name="descrp" Type="String" />
            <asp:Parameter Name="proID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
  </div>
</asp:Content>

