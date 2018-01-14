using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userControls_RegistrWebUserControl : System.Web.UI.UserControl
{
    database_hundler db = new database_hundler();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void RegisterButton1_Click(object sender, EventArgs e)
    {
        Member m = new Member();
        msgaLbel.Text = m.Register(usernameTextBox1.Text,passowrdTextBox9.Text,nameTextBox2.Text,birtgDateTextBox6.Text,EmailTextBox8.Text,phonTextBox3.Text,companyTextBox5.Text,gendrRadioButtonList1.SelectedValue.ToString(),securityQuastionTextBox7.Text,AnsweTextBox12.Text);
        
      
    }
}