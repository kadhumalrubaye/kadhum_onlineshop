using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CartPage : System.Web.UI.Page

    
{
    Member member = new Member();
    Product product = new Product();
        
    userCart cart;
    protected void Page_Load(object sender, EventArgs e)
    {
        cart = new userCart();
        cart.addToCart("3","4");
        cart.addToCart("3", "4");
        CartGridView1.DataSource = cart.getCart();
        CartGridView1.DataBind();
    }

    protected void CartGridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void submitBTN_Click(object sender, EventArgs e)
    {
        cart.addToCart(member.MemberID, product.Proid);
    }
}