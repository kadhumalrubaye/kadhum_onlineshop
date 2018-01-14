<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserInfoWebUserControl.ascx.cs" Inherits="userControls_UserInfoWebUserControl" %>
<style type="text/css">
    .auto-style1 {
        font-size: xx-large;
    }
</style>




<asp:FormView ID="FormView1" runat="server" DataKeyNames="username" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        username:
        <asp:Label ID="usernameLabel1" runat="server" Text='<%# Eval("username") %>' />
        <br />
        email:
        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
        <br />
        phone:
        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
        <br />
        company:
        <asp:TextBox ID="companyTextBox" runat="server" Text='<%# Bind("company") %>' />
        <br />
        gender:
        <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
        <br />
        birth_date:
        <asp:TextBox ID="birth_dateTextBox" runat="server" Text='<%# Bind("birth_date") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        username:
        <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
        <br />
        email:
        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
        <br />
        phone:
        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
        <br />
        company:
        <asp:TextBox ID="companyTextBox" runat="server" Text='<%# Bind("company") %>' />
        <br />
        gender:
        <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
        <br />
        birth_date:
        <asp:TextBox ID="birth_dateTextBox" runat="server" Text='<%# Bind("birth_date") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        <table align="center">
            <tr>
                <td class="auto-style1" colspan="3"><strong>USER INFORMATION</strong></td>
            </tr>
            <tr>
                <td><strong>USER NAME</strong></td>
                <td> 
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>EMAIL</strong></td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>PHONE</strong> </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>COMPANY</strong></td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("company") %>'></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>GENDER</strong></td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>BIRTH DATE</strong></td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("birth_date") %>'></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT [username], [email], [phone], [company], [gender], [birth_date] FROM [users] WHERE ([username] = @username)">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="ali" Name="username" SessionField="user" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>

