<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


                <asp:DataList ID="DataList1" runat="server" DataKeyField="catNo" DataSourceID="proSqlDataSource1" RepeatColumns="3" BorderColor="Black" GridLines="Both">
                    <ItemTemplate>
                        
              <div class="item col-md-3 col-sm-4 cat-3">
              <div class="item-thumbnail">
                <a class="fancybox" href="images/home08/featured/2.jpg">
                <asp:Image ID="Image1" runat="server" width="150" height="100" ImageUrl='<%# Eval("proImg") %>' />
                </a>
                <span class="ribbon sale">-35%</span>
              </div><!-- /.item-thumbnail -->
              
              <div class="item-content">
                <div class="buttons">
                  <button class="add-to-cart">Add to cart<i class="fa fa-shopping-cart"></i></button>
                  <button class="wish-list"><i class="fa fa-heart"></i></button>
                </div><!-- /.buttons -->

                <h3 class="item-title"><a href="#"><asp:Label ID="proNameLabel" runat="server" Text='<%# Eval("proName") %>' /></a></h3><!-- /.item-title -->
                <div class="item-price">
                  <span class="currency">$</span>
                  <span class="price">                       <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' BackColor="#00CC66" />
</span>
                </div><!-- /.item-price -->

                <div class="rating"><input type="hidden" class="rating-tooltip-manual" data-filled="fa fa-star" data-empty="fa fa-star-o" data-fractions="5"/></div><!-- /.rating -->
              </div><!-- /.item-content -->
            </div><!-- /.item -->
                        <br />
                        <a href="Product_detaile.aspx?id=<%# Eval("proID") %>">
                            </a>
 
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="proSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
     
        </div>
    </form>
</body>
</html>
