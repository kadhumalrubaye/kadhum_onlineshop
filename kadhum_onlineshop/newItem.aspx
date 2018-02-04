<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="newItem.aspx.cs" Inherits="newItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

    <table>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2" style="text-align: center">NEW PRODUT</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>category</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="catDropDownSqlDataSource1" DataTextField="CatName" DataValueField="CatNo">
                </asp:DropDownList>
                <asp:SqlDataSource ID="catDropDownSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <%--<td>&nbsp;</td>
            <td>Product ID</td>
            <td>
                <asp:TextBox ID="ProductITXTD" runat="server"></asp:TextBox>
            </td>--%>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>product name</td>
            <td>
                <asp:TextBox ID="productnameTXT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>price</td>
            <td>
                <asp:TextBox ID="priceTXT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>avq</td>
            <td>
                <asp:TextBox ID="avqtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>discreption</td>
            <td>
                <asp:TextBox ID="discreption" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>image</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Image ID="proImage1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="msgLabel1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="okButton1" runat="server" Text="Button" OnClick="okButton1_Click" />
            </td>
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

    

</asp:Content>

