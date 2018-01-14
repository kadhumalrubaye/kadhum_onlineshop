<%@ Control Language="C#" AutoEventWireup="true" CodeFile="categoryWebUserControl.ascx.cs" Inherits="userControls_categoryWebUserControl" %>

<asp:DataList ID="DataList1"  runat="server" DataKeyField="CatNo" DataSourceID="catSqlDataSource1">
    <ItemTemplate>
        <div style="text-align:center;">
            <a href="proCat.aspx?catNo=<%#Eval("CatNo") %>">
        <asp:Label  ID="LinkButton1" Text=<%# Eval("CatName") %> runat="server" ></asp:Label>
                </a>
        <br />
            </div>
        .................................<br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="catSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>

