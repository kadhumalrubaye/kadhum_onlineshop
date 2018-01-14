<%@ Control Language="C#" AutoEventWireup="true" CodeFile="searchWebUserControl.ascx.cs" Inherits="userControls_searchWebUserControl" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .gridvie{
        float:left;
width:500px;
overflow-y: auto;
overflow-x:auto;
height: auto;
    }
    .removbtn{
        float:right;
    }
</style>

<body style="text-align: center">

<table class="auto-style1">
    <tr>
        <td>
            <h1 style="text-align: center">
            <asp:Label ID="Label1" runat="server" Text="Member search" style="font-weight: 700; text-align: center"></asp:Label>
            </h1>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Label">search by</asp:Label>
            <asp:RadioButtonList ID="searchRadioButtonList" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True">username</asp:ListItem>
                <asp:ListItem>company</asp:ListItem>
            </asp:RadioButtonList>
        &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="searchTextBox" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="searchButton" runat="server" OnClick="searchButton_Click" Text="search" />
            <asp:Button ID="removButton" runat="server" OnClick="searchButton_Click" CssClass="removbtn" Text="remov" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="msgLabel" runat="server"></asp:Label>
            </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <div class="gridvie">
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="user" ShowHeader="True" Text="&gt;&gt;" />
                </Columns>
            </asp:GridView>
                </div>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

