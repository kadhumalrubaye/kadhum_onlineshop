<%@ Control Language="C#" AutoEventWireup="true" CodeFile="allCatWebUserControl.ascx.cs" Inherits="userControls_allCatWebUserControl" %>


<style type="text/css">
    .auto-style1 {
        text-align: center;
    }
</style>


<table style="text-align:center;margin-left:85px;" >
    <tbody class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <div>
            <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="10" DataKeyField="CatNo" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both" RepeatColumns="2">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="White" />
                <ItemTemplate>
                    <asp:Label ID="CatNoLabel" runat="server" Text='<%# Eval("CatNo") %>' />
                    <br />
&nbsp;<asp:Label ID="CatNameLabel" runat="server" Text='<%# Eval("CatName") %>' />
                    <br />
                   <a href="../proCat.aspx?catno=<%# Eval("CatNo")%>">
                        <asp:Image ID="Image1" runat="server" Width="200" Height="150" ImageUrl='<%# "..//caTImags//"+Eval("CatNo")+".jpg" %>' />
                   </a>
                    <br />
                    &nbsp;<asp:Label ID="desLabel" runat="server" Text='<%# Eval("des") %>' />
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>



