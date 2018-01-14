using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class update : System.Web.UI.Page
{
    public string itemName;
    



    protected void Page_Load(object sender, EventArgs e)
    {
        
        itemName = Request.QueryString["item"].ToString();
        itemNameLabel1.Text = itemName;
    }
}