<%@ Page Title="" Language="C#" MasterPageFile="~/SitMasterPage.master" AutoEventWireup="true" CodeFile="adminCategory.aspx.cs" Inherits="adminCategory" enableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <div>

                <table>
                    <tr>
                        <td>Search</td>
                        <td>
                            <asp:TextBox ID="searchTextBox4" runat="server"></asp:TextBox>
                            <asp:Button ID="searchButton1" runat="server" OnClick="Button1_Click1" Text="search" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Sorted by</td>
                        <td>
                            <asp:RadioButtonList ID="sortRadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True" Value="CatName">cat name</asp:ListItem>
                                <asp:ListItem>created date</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Edit</td>
                        <td>
                            <asp:Button ID="newItemButton1" runat="server" OnClick="Button1_Click" Text="New item" />
                            &nbsp;<asp:Button ID="RemovButton2" runat="server" Text="Remov" />
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
                        <td>
                            <asp:GridView ID="catgrySerchResultGridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="catgrySerchResultGridView1_SelectedIndexChanged1">
                                <Columns>
                                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="select" ShowHeader="True" Text="&gt;&gt;" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table>
                <tr>
                    <td colspan="2" style="height: 23px; text-align: center">product category</td>
                </tr>
                <tr>
                    <td style="text-align: left; width: 215px">category number</td>
                    <td>
                        <asp:TextBox ID="catNoTextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left; width: 215px">category name</td>
                    <td>
                        <asp:TextBox ID="catNameTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 215px">category title</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 215px">category description</td>
                    <td>
                        <asp:TextBox ID="catDecTextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 215px">category image</td>
                    <td>
                        <asp:FileUpload ID="catFileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 215px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 215px">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" DeleteCommand="DELETE FROM [items] WHERE [Id] = @Id" InsertCommand="INSERT INTO [items] ([item_name], [item_des], [item_createdDate], [item_qan], [item_picture], [itemPrice]) VALUES (@item_name, @item_des, @item_createdDate, @item_qan, @item_picture, @itemPrice)" SelectCommand="SELECT * FROM [items]" UpdateCommand="UPDATE [items] SET [item_name] = @item_name, [item_des] = @item_des, [item_createdDate] = @item_createdDate, [item_qan] = @item_qan, [item_picture] = @item_picture, [itemPrice] = @itemPrice WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="item_name" Type="String" />
                                <asp:Parameter Name="item_des" Type="String" />
                                <asp:Parameter Name="item_createdDate" Type="String" />
                                <asp:Parameter Name="item_qan" Type="Int32" />
                                <asp:Parameter Name="item_picture" Type="String" />
                                <asp:Parameter Name="itemPrice" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="item_name" Type="String" />
                                <asp:Parameter Name="item_des" Type="String" />
                                <asp:Parameter Name="item_createdDate" Type="String" />
                                <asp:Parameter Name="item_qan" Type="Int32" />
                                <asp:Parameter Name="item_picture" Type="String" />
                                <asp:Parameter Name="itemPrice" Type="String" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Button ID="saveButton1" runat="server" Text="save" OnClick="saveButton1_Click" />
                        &nbsp;<asp:Button ID="cancelButton2" runat="server" OnClick="cancelButton2_Click" Text="cancel" />
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

