using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Category
/// </summary>
public class Category:MainTable
{
    private database_hundler db;
    private string _CatNo;
    private string _CatName;
    private string _CatDescription;

    public string CatNo
    {
        get { return _CatNo; }
        set { _CatNo = value; }
    }

    public string CatName
    {
        get { return _CatName; }
        set { _CatName = value; }
    }
  
	public Category()
	{
        db = new database_hundler();
    }
    public global::Product product
    {
        get
        {
            return null;
        }
        set
        {
            value = value;
        }
    }

    public override bool LoadProparties2params(string typeOfOperation)
    {
        SortedList sL = new SortedList();
        
        sL.Add("@check", typeOfOperation);
        sL.Add("@CatNo", _CatNo);
        sL.Add("@CatName", _CatName);
        sL.Add("@des", _CatDescription);
        procedureName = "ManageCategory";
        if (db.RunProcedure(procedureName, sL) == 1) return true;
        else return false;
        
    }
    public string addCat(string catName, string catNo, string catDes)
    {
        this.CatName = catName;
        this.CatNo = catNo;
        this._CatDescription = catDes;
        if (add())
            return "category added successfully";

        else

            return "category not added ..!!";
    }


    public DataTable userSearch(string filed, string vlau)
    {
        string query = string.Format("select * from Category where {0} like '%{1}%'", filed, vlau);
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