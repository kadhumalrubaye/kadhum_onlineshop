using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminCategory : System.Web.UI.Page
{
    Category search;
    protected void Page_Load(object sender, EventArgs e)
    {
        search = new Category();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
       
    }
    protected void cancelButton2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        
        catgrySerchResultGridView1.DataSource= search.userSearch(sortRadioButtonList1.SelectedValue,searchTextBox4.Text);
        catgrySerchResultGridView1.DataBind();
    }

    

    protected void catgrySerchResultGridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
     
        string index = catgrySerchResultGridView1.SelectedRow.Cells[1].Text;
        Response.Redirect("update.aspx?item=" + index + "");
    }

    protected void saveButton1_Click(object sender, EventArgs e)
    {
       saveButton1.Text =search.addCat(catNameTxt.Text ,catNoTextBox1.Text,catDecTextBox3.Text);
        if (catFileUpload1.HasFile)
        {
            string filEx = System.IO.Path.GetExtension(catFileUpload1.PostedFile.FileName);
            catFileUpload1.SaveAs(Server.MapPath("caTimags")+"\\"+catNameTxt.Text+filEx);
        }

    }
}