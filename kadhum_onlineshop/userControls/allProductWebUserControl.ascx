<%@ Control Language="C#" AutoEventWireup="true" CodeFile="allProductWebUserControl.ascx.cs" Inherits="userControls_allProductWebUserControl" %>
<table style="text-align:center;margin-left:85px;" >
    <tbody class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <div>
            <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="10" DataKeyField="catNo" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both" RepeatColumns="2">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="White" />
                <ItemTemplate>
                    catNo:
                    <asp:Label ID="catNoLabel" runat="server" Text='<%# Eval("catNo") %>' />
                    <br />
                    proID:&nbsp;<asp:Label ID="proIDLabel" runat="server" Text='<%# Eval("proID") %>' />
                    <br />
                    proName: <asp:Label ID="proNameLabel" runat="server" Text='<%# Eval("proName") %>' />
                    <br />
                    price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />
                    AvQty:
                    <asp:Label ID="AvQtyLabel" runat="server" Text='<%# Eval("AvQty") %>' />
                    <br />
                    WrittingDate:
                    <asp:Label ID="WrittingDateLabel" runat="server" Text='<%# Eval("WrittingDate") %>' />
                    <br />
                    descrp:
                    <asp:Label ID="descrpLabel" runat="server" Text='<%# Eval("descrp") %>' />
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>