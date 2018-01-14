using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Product
/// </summary>
public class Product:MainTable
{
    private string _catno;
    private string _proImg;
    private string _proid;
    private string _proname;
    private string _price;
    private string _avqty;
    private string _creatontime;
    private string creatontime;
    private string _description;

    public string Catno
    {
        get
        {
            return _catno;
        }

        set
        {
            _catno = value;
        }
    }

    public string Proid
    {
        get
        {
            return _proid;
        }

        set
        {
            _proid = value;
        }
    }

    public string Proname
    {
        get
        {
            return _proname;
        }

        set
        {
            _proname = value;
        }
    }

    public string Price
    {
        get
        {
            return _price;
        }

        set
        {
            _price = value;
        }
    }

    public string Avqty
    {
        get
        {
            return _avqty;
        }

        set
        {
            _avqty = value;
        }
    }

    public string Creatontime1
    {
        get
        {
            return _creatontime;
        }

        set
        {
            _creatontime = value;
        }
    }

    public string Creatontime
    {
        get
        {
            return creatontime;
        }

        set
        {
            creatontime = value;
        }
    }

    public string Description
    {
        get
        {
            return _description;
        }

        set
        {
            _description = value;
        }
    }

    public string ProImg
    {
        get
        {
            return _proImg;
        }

        set
        {
            _proImg = value;
        }
    }

    public Product()
	{
		//
		// TODO: Add constructor logic here
		//
	}


    public override bool LoadProparties2params(string typeOfOperation)
    {
        SortedList sL = new SortedList();

        sL.Add("@check", typeOfOperation);
        sL.Add("@catNo", Catno);
        sL.Add("@proID", Proid);
        sL.Add("@proName", Proname);
        sL.Add("@price", Price);
        sL.Add("@AvQty", Avqty);
        sL.Add("@proImg", ProImg);

        sL.Add("@WrittingDate", Creatontime1);
        sL.Add("@descrp", Description);


        procedureName = "ManageProduct";
      if(  db.RunProcedure(procedureName, sL)==1) return true;
      else  return false;

    }

    public DataTable showPros()
    {
        //SELECT[page_title],[page_description],[meta_title],[meta_keywords],[meta_description],[Active] from tbl_Pages ORDER BY Id DESC;
    string query = string.Format("SELECT proName  FROM product ORDER BY Id DESC");
        try
        {
            return db.runQery(query);
        }
        catch
        {
            return new DataTable();
        }

    }

    public DataTable proSearch(string filed, string vlau)
    {
        string query = string.Format("select * from product where {0} like '%{1}%'", filed, vlau);
        try
        {
            return db.runQery(query);
        }
        catch
        {
            return new DataTable();
        }

    }

}