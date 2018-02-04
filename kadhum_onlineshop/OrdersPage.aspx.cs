using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrdersPage : System.Web.UI.Page
{
    Order order = new Order();
    Member member = new Member();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        orderDateLbl.Text = DateTime.Now.ToString();

        userNameLbl.Text = member.Name;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        order.UserID = member.MemberID;
        order.Username = member.Name;
        order.Shipaddress = shipAddressTextBox7.Text;
        order.Shiparea = shipAreaTextBox6.Text;
        order.Shipcity = shipCityTextBox5.Text;
        order.Orderdate = DateTime.Now.ToString();
        order.Shipname = shipnameTextBox4.Text;

    }
}