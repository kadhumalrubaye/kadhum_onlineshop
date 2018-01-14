<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search"  EnableEventValidation="false"%>

<%@ Register Src="~/userControls/searchWebUserControl.ascx" TagPrefix="uc1" TagName="searchWebUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:searchWebUserControl runat="server" ID="searchWebUserControl" />
</asp:Content>

