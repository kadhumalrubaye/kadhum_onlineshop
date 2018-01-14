using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class proSearch : System.Web.UI.Page
{
  string quertString;

    Product search;
    protected void Page_Load(object sender, EventArgs e)
    {
        quertString = Request.QueryString["srchValue"].ToString();
        search = new Product();
        catgrySerchResultGridView1.DataSource = search.proSearch("proName", quertString);
        catgrySerchResultGridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

    }
    protected void cancelButton2_Click(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        catgrySerchResultGridView1.DataSource = search.proSearch("proName", quertString);
        catgrySerchResultGridView1.DataBind();
    }



    protected void catgrySerchResultGridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

        string index = catgrySerchResultGridView1.SelectedRow.Cells[1].Text;
        Response.Redirect("update.aspx?item=" + index + "");
    }

}