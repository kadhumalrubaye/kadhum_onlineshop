
<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" EnableEventValidation="false" %>

<%@ Register Src="~/userControls/RegistrWebUserControl.ascx" TagPrefix="uc1" TagName="RegistrWebUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:RegistrWebUserControl runat="server" ID="RegistrWebUserControl" />
</asp:Content>

