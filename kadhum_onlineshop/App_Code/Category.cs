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
    private int _CatNo;
    private string _CatName;
    private string _CatDescription;

    public int CatNo
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
    //public global::Product product
    //{
    //    get
    //    {
    //        return null;
    //    }
    //    set
    //    {
    //        value = value;
    //    }
    //}

    public string CatDescription
    {
        get
        {
            return _CatDescription;
        }

        set
        {
            _CatDescription = value;
        }
    }

    public string addCat(string catName, string catDes)
    {
        this.CatName = catName;

        this.CatDescription = catDes;
        if (add())
            return "category added successfully";

        else

            return "category not added ..!!";
    }


    public override bool LoadProparties2params(string typeOfOperation)
    {
        SortedList sL2 = new SortedList();
        
        sL2.Add("@check", typeOfOperation);     
        sL2.Add("@CatName", CatName);
        sL2.Add("@des", CatDescription);

        procedureName = "ManageCategory";

        if (db.RunProcedure(procedureName, sL2) == 1)
            return true;
        else
            return false;
        
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