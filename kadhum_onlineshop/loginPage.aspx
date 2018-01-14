<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="loginPage.aspx.cs" Inherits="loginPage" EnableEventValidation="false" %>

<%@ Register Src="~/userControls/LoginWebUserControl.ascx" TagPrefix="uc1" TagName="LoginWebUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:LoginWebUserControl runat="server" id="LoginWebUserControl" />
</asp:Content>

