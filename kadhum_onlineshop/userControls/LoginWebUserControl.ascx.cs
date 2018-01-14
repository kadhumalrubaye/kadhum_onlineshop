using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userControls_LoginWebUserControl : System.Web.UI.UserControl
{
    mUtility u = new mUtility();
    Member m = new Member();
    database_hundler db = new database_hundler();
    protected void Page_Load(object sender, EventArgs e)
    {
        db.connect();
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void LoginButton1_Click(object sender, EventArgs e)
    {
//       
//        if (m.login(usernameTextBox1.Text, passowrdTextBox2.Text)){
//            msgLabel1.Text = "user founded";
//            u.creatCocki("user", new string[]{ "user", "pass" }, new string[]{usernameTextBox1.Text,passowrdTextBox2.Text},!RememberMeCheckBox1.Checked,Response);
//            Response.Redirect("Default.aspx?user=" + usernameTextBox1.Text + "");
//        }
//        else
//msgLabel1.Text="user not founded";

        if (db.loginCheker(usernameTextBox1.Text, passowrdTextBox2.Text))
        {
            Session["user"] = usernameTextBox1.Text;
            u.creatCocki("user", new string[] { "user", "pass" }, new string[] { usernameTextBox1.Text, passowrdTextBox2.Text }, !RememberMeCheckBox1.Checked, Response);
            Response.Redirect("Default.aspx?user=" + usernameTextBox1.Text + "");
        }
        else if (db.adminLogin(usernameTextBox1.Text, passowrdTextBox2.Text))
        {
            Session["admin"] = usernameTextBox1.Text;
        u.creatCocki("user", new string[] { "user", "pass" }, new string[] { usernameTextBox1.Text, passowrdTextBox2.Text }, !RememberMeCheckBox1.Checked, Response);
        Response.Redirect("Default.aspx?user=" + usernameTextBox1.Text + "");
        
           
        }
        else
        {
            msgLabel1.Text = "user not fond ";
            //HttpCookie co = new HttpCookie("user");

        }
    }
}