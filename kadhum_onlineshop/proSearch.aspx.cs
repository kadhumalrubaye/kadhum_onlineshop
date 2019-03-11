using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class proSearch : System.Web.UI.Page
{
  string quertString;
    HyperLinkField hplnk;

    Product search;
    protected void Page_Load(object sender, EventArgs e)
    {
         hplnk = new HyperLinkField();

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
        hplnk = new HyperLinkField();
        hplnk.DataTextField = search.proSearch("proName", quertString).ToString();
        hplnk.HeaderText = search.proSearch("proName", quertString).ToString();
        catgrySerchResultGridView1.Columns.Add(hplnk);
        catgrySerchResultGridView1.DataBind();
        
    }



    protected void catgrySerchResultGridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        

        string index = catgrySerchResultGridView1.SelectedRow.Cells[0].Text;
        Response.Redirect("update.aspx?item=" + index + "");
    }


    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}