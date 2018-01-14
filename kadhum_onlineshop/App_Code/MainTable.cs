using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for MainTable
/// </summary>
public abstract class MainTable
{
   protected string procedureName;

   protected database_hundler db = new database_hundler();

    public virtual bool LoadProparties2params(string typeOfOperation){

        return false;
}
    public bool add()
    {
        return LoadProparties2params("a");
        
    }
    public bool delet()
    {
       return LoadProparties2params("d");
        
    }
    public bool update()
    {
        return LoadProparties2params("u");
        
    }
	public MainTable()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}