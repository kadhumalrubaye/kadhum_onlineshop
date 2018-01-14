<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="proCat.aspx.cs" Inherits="proCat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([catNo] = @catNo)">
        <SelectParameters>
            <asp:QueryStringParameter Name="catNo" QueryStringField="catNo" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

