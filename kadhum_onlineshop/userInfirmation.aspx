<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="userInfirmation.aspx.cs" Inherits="userInfirmation"  enableEventValidation="true" %>

<%@ Register Src="~/userControls/UserInfoWebUserControl.ascx" TagPrefix="uc1" TagName="UserInfoWebUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:UserInfoWebUserControl runat="server" ID="UserInfoWebUserControl" />
</asp:Content>

