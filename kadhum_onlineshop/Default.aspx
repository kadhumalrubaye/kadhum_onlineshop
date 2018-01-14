<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table>
        <tr>
            <td>&nbsp;</td>
            <td>Products</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="catNo" DataSourceID="proSqlDataSource1" RepeatColumns="3" BorderColor="Black" GridLines="Both">
                    <ItemTemplate>
                        <br />
                        <a href="Product_detaile.aspx?id=<%# Eval("proID") %>">
                          &nbsp;<asp:Image ID="Image1" runat="server" width="150" height="100" ImageUrl='<%# Eval("proImg") %>' />
                            </a>
                        <br />
                        &nbsp;<asp:Label ID="proNameLabel" runat="server" Text='<%# Eval("proName") %>' />
                        <br />
                        &nbsp;<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' BackColor="#00CC66" />
                        <br />
                        &nbsp;<br />
<br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="proSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    
</asp:Content>

