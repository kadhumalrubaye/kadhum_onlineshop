<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="CartPage.aspx.cs" Inherits="CartPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="CartGridView1" runat="server" OnSelectedIndexChanged="CartGridView1_SelectedIndexChanged"></asp:GridView>

    <asp:Button ID="submitBTN" Text="SUBMET" PostBackUrl="~/OrdersPage.aspx" runat="server" OnClick="submitBTN_Click" style="height: 35px" />
</asp:Content>

