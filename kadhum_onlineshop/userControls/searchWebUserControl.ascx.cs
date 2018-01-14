using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userControls_searchWebUserControl : System.Web.UI.UserControl
{
    Product serch = new Product();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void searchButton_Click(object sender, EventArgs e)
    {
       GridView1.DataSource= serch.proSearch(searchRadioButtonList.SelectedValue,searchTextBox.Text);
       GridView1.DataBind();
       GridView1.SelectedIndex = -1;
       removButton.Enabled = false;


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        removButton.Enabled = true;
    }
}