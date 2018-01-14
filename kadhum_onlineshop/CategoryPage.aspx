<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="CategoryPage.aspx.cs" Inherits="CategoryPage" %>

<%@ Register src="userControls/allCatWebUserControl.ascx" tagname="allCatWebUserControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:allCatWebUserControl ID="allCatWebUserControl1" runat="server" />
</asp:Content>

