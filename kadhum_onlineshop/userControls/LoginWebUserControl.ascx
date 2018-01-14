<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginWebUserControl.ascx.cs" Inherits="userControls_LoginWebUserControl" %>
<style type="text/css">
    .auto-style1 {
        text-align: center;
        font-size: x-large;
    }
</style>
<table align="center">
    <tr>
        <td colspan="3" class="auto-style1">   <strong>LOGIN USER </strong> </td>
    </tr>
    <tr>
        <td><strong>USER NAME</strong></td>
        <td>
            <asp:TextBox ID="usernameTextBox1" runat="server"></asp:TextBox>
        </td>
        <td rowspan="4">
            <asp:Image ID="Image1" ImageUrl="~/images/loginphoto.png" Width="100" runat="server" />
        </td>
    </tr>
    <tr>
        <td><strong>PASSOWRD</strong></td>
        <td>
            <asp:TextBox ID="passowrdTextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:CheckBox ID="RememberMeCheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="remember me" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="msgLabel1" runat="server" ></asp:Label>
        </td>
        <td>
            <asp:Button ID="LoginButton1" runat="server" Text="login" style="font-weight: 700; font-size: medium" OnClick="LoginButton1_Click" />
        </td>
    </tr>
</table>

