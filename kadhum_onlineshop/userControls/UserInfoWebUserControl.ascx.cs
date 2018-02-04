using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userControls_UserInfoWebUserControl : System.Web.UI.UserControl
{
    Member m = new Member();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
       
        
            lblbl.Text = ((string)m.MemberID)+" "+m.Phone;
     
    }

    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
}