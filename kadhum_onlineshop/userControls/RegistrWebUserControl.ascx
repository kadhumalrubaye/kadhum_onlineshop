
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RegistrWebUserControl.ascx.cs" Inherits="userControls_RegistrWebUserControl" %>

<table align="center">
    <tr>
        <td colspan="3">
            <asp:Label ID="Label1" runat="server" Text="SIGBUP FOR NEW ACCOUNT"></asp:Label>
        &nbsp;<asp:Label ID="msgaLbel" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            USER
            NAME</td>
        <td>
            <asp:TextBox ID="nameTextBox2" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>NAME</td>
        <td>
            <asp:TextBox ID="usernameTextBox1" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>PHONE </td>
        <td>
            <asp:TextBox ID="phonTextBox3" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>GENDER</td>
        <td>
            <asp:RadioButtonList ID="gendrRadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="f">MAIL</asp:ListItem>
                <asp:ListItem Selected="True" Value="f">FEMAIL</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>COMPANY</td>
        <td>
            <asp:TextBox ID="companyTextBox5" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>BIRTH DATE</td>
        <td>
            <asp:TextBox ID="birtgDateTextBox6" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>SECURITY QUASTION</td>
        <td>
            <asp:TextBox ID="securityQuastionTextBox7" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>ANSWER</td>
        <td>
            <asp:TextBox ID="AnsweTextBox12" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>EMAIL</td>
        <td>
            <asp:TextBox ID="EmailTextBox8" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            PASSWORD</td>
        <td>
            <asp:TextBox ID="passowrdTextBox9" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            CONFIGUR PASSWORD</td>
        <td>
        
            <asp:TextBox ID="configpassowrdTextBox10" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                        <asp:Button ID="RegisterButton1" runat="server" Text="REGISTER" OnClick="RegisterButton1_Click" />
        
        </td>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
        </td>
    </tr>
</table>


