<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="Product_detaile.aspx.cs" Inherits="Product_detaile" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center; font-size: large"><strong>Product details</strong></td>
        </tr>
      
      
      
     
        <tr>
            <td >
                <div style="text-align: center">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="catNo" DataSourceID="detailsSqlDataSource2">
                    <ItemTemplate>
                         <br />
                         &nbsp;<asp:Image ID="Image1" runat="server" width="150" height="100" ImageUrl='<%# Eval("proImg") %>' />
                      
                        <br />
                      
                        <br />
                         &nbsp;<asp:Label ID="proNameLabel" runat="server" Text='<%# Eval("proName") %>' BackColor="#6699FF" />
                        <br /> <br /> <br />
                        price:
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' BackColor="#00CC00" />
                        <br /> <br /> <br />
                         quantity:
                        <asp:Label ID="AvQtyLabel" runat="server" Text='<%# Eval("AvQty") %>' />
                        <br />
                        <br />
                         <br />
                      <%--  WrittingDate:
                        <asp:Label ID="WrittingDateLabel" runat="server" Text='<%# Eval("WrittingDate") %>' />--%>
                        <br /> <br /> <br />
                         description <br /><br /> &nbsp;<asp:Label ID="descrpLabel" runat="server" Text='<%# Eval("descrp") %>' BackColor="White" />
                        <br /> <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                </div>
                <asp:SqlDataSource ID="detailsSqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([proID] = @proID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="proID" QueryStringField="id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
                        
            
        <asp:Button ID="Button2" runat="server" Text="Button"  PostBackUrl="~/CartPage.aspx"/>
                        
            
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT [CatNo], [ProId], [OrderNo], [quantity], [SellPrice] FROM [OrderDetailes]"></asp:SqlDataSource>

</asp:Content>

