<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="OrdersPage.aspx.cs" Inherits="OrdersPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="2" style="text-align: center">
                <h1>Make order</h1>
            </td>
        </tr>
         <tr>
            <td>product <td>
               
             <asp:label ID="pronameLbl" runat="server"></asp:label>
               
        </tr>
          <tr>
            <td>user name<td>
               
              <asp:label ID="userNameLbl" runat="server"></asp:label>
               
        </tr>
          <tr>
            <td>order date<td>
               
              <asp:label ID="orderDateLbl" runat="server"></asp:label>
               
        </tr>
          <tr>
            <td>Ship Name<td>
               
              <asp:TextBox ID="shipnameTextBox4" runat="server"></asp:TextBox>
               
        </tr>
          <tr>
            <td>Ship City<td>
               
              <asp:TextBox ID="shipCityTextBox5" runat="server"></asp:TextBox>
               
        </tr>
          <tr>
            <td style="height: 33px">Ship Area<td style="height: 33px">
               
              <asp:TextBox ID="shipAreaTextBox6" runat="server"></asp:TextBox>
               
        </tr>
          <tr>
            <td>shepAdress<td>
               
              <asp:TextBox ID="shipAddressTextBox7" runat="server"></asp:TextBox>
               
        </tr>
          <tr>
            <td>&nbsp;<td>
               
              &nbsp;</tr>
          <tr>
            <td>&nbsp;<td>
               
              &nbsp;</tr>
          <tr>
            <td>submit</td>
               <td>
                   <asp:Button ID="submitButton2" runat="server" Text="subnmit" OnClick="Button2_Click" />
              </td>
        </tr>
    </table> 
</asp:Content>

