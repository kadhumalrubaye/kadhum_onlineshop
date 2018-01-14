using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newItem : System.Web.UI.Page
{
    Product pro;
    protected void Page_Load(object sender, EventArgs e)
    {
        pro = new Product();

    }

  

    protected void saveButton1_Click(object sender, EventArgs e)
    {

        //string filePath = Server.MapPath(itermPicFileUpload.FileName);
        //SqlDS.InsertCommandType = SqlDataSourceCommandType.Text;
        //SqlDS.InsertCommand = "Insert into items (item_name,item_des,item_createdDate,itemPrice,item_picture) VALUES (@item_name,@item_des,@item_createdDate,@itemPrice,@item_picture)";

        //SqlDS.InsertParameters.Add("item_name", itemnameTextBox1.Text);
        //SqlDS.InsertParameters.Add("item_des", itemDesTXT.Text);
        ////SqlDS.InsertParameters.Add("Name", itemQuantTXT.Text);
        //SqlDS.InsertParameters.Add("item_createdDate", itemCreatDate.Text);
        //SqlDS.InsertParameters.Add("itemPrice", itemPricetTXT.Text);
        //SqlDS.InsertParameters.Add("item_picture", filePath);

        //SqlDS.Insert();

       
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

        
        //        string filePath = Server.MapPath(@"~\Admin\ResultFiles\");
        //string fileName = resultFileUpload.FileName;
        //string fileLocation = filePath + fileName;

        //resultFileUpload.SaveAs(fileLocation);
    }

    protected void okButton1_Click(object sender, EventArgs e)
    {
        pro.Proname = productnameTXT.Text;
        pro.Price = priceTXT.Text;
        pro.Description = discreption.Text;
        pro.Avqty = avqtxt.Text;
        pro.Proid = ProductITXTD.Text;
        pro.Creatontime1 = DateTime.Now.ToString();
        pro.Catno = DropDownList1.SelectedValue;
        inserImg();

        if (pro.add())
        {
            msgLabel1.Text = "product added "; 
        }
        else
        {
            msgLabel1.Text = "product not added ";

        }

    }
    public void inserImg()
    {
        
        FileUpload1.PostedFile.SaveAs(Server.MapPath("/itmpic/" + FileUpload1.FileName.ToString()));
        string imageX = "/itmpic/" + FileUpload1.FileName.ToString();
        pro.ProImg = imageX;

    }
}
