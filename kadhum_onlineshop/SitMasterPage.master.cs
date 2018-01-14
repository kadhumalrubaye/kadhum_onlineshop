using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SitMasterPage : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
           

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string queryValu = searchTextBox1.Text;
        Response.Redirect("proSearch.aspx?srchValue=" + queryValu + "");
        
    }
}
