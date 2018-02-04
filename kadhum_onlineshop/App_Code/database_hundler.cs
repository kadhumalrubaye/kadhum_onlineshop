using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for database_hundler
/// </summary>
public class database_hundler
{
    SqlConnection sqlcon;
    SqlCommand sqlcmnd;
    DataTable dataTable;
  private  string constr = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ConnectionString;
 private string constrng = ConfigurationManager.ConnectionStrings[1].ConnectionString;

 private void initialize(CommandType cmt, string DBCLL)
  {
       

       sqlcon = new SqlConnection();
       sqlcmnd = new SqlCommand();

       sqlcon.ConnectionString = constrng;
       sqlcmnd.Connection = sqlcon;
       sqlcmnd.CommandType = cmt;
       sqlcmnd.CommandText = DBCLL;

       sqlcon.Open();
  }
    public void connect()
    {
        SqlConnection con = new SqlConnection(constr);
        con.Open();
    }
    public void disconnect()
    {
        SqlConnection con = new SqlConnection(constr);

        con.Close();
    }
    public void sqlcmnd_add_del_updt(string cmndstr)
    {
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmnd = new SqlCommand(cmndstr, con);
        con.Open();
        cmnd.ExecuteNonQuery();
        con.Close();

    }
    public DataTable sqlcmnd_select(string cmndstr)
    {

        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmnd = new SqlCommand(cmndstr, con);
        con.Open();
        DataTable dt = new DataTable();
        dt.Load(cmnd.ExecuteReader());
        con.Close();
        return dt;
    }
    
    public bool loginCheker(string name, string password)
    {
       
        SqlConnection con = new SqlConnection(constr);
        string check = "select * from  users where username ='" + name + "' and passowrd ='" + password + "'";
        DataTable dt = sqlcmnd_select(check);
        if (dt.Rows.Count > 0)
            return true;
        else
            return false;
    }
    public int getUserID(string name)
    {
        int vla = 0;
        DataTable dt = new DataTable();
       
            dt = sqlcmnd_select("select* from users where username = '" + name + "'");
        vla =((int) dt.Rows[0][10]);
       
            

        return vla;
    }
    public bool adminLogin(string name, string password)
    {
        SqlConnection con = new SqlConnection(constr);
        string check = "select * from  AdminTable where AdminName ='" + name + "' and AdminPassword ='" + password + "'";
        DataTable dt = sqlcmnd_select(check);
        if (dt.Rows.Count > 0)
            return true;
        else
            return false;
    }

    public database_hundler()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int RunProcedure(string procedureName ,SortedList paraVal )
    {
        initialize(CommandType.StoredProcedure, procedureName);

        for (int i = 0; i < paraVal.Count; i++)
        {
            sqlcmnd.Parameters.AddWithValue(paraVal.GetKey(i).ToString(),paraVal.GetByIndex(i).ToString()); 
        }

        //sqlcon.Open();
        return runUpadate();
        
    }
    public int runUpadate( string   insDelUpdate)
    {
        initialize(CommandType.Text, insDelUpdate);
        return runUpadate();
    }
    private int runUpadate(){
        try
        {
            int x = sqlcmnd.ExecuteNonQuery();
            sqlcon.Close();
            return x;

        }
        catch (SqlException ex)
        {
            sqlcon.Close();
            return ex.Number;
        }
       
}
    public DataTable runQery(string select)
    {
        initialize(CommandType.Text, select);
        dataTable=new DataTable();
        dataTable.Load(sqlcmnd.ExecuteReader());
        return dataTable;
        
    }

    //public void insertIntoItems(string itemName,string itemPrice,string itemDes,string createdDate,string ItemPicPath)
    //{

    //}
    public bool insertIntoItems(string itemName, string itemPrice, string itemDes, string createdDate, string ItemPicPath)
    {
        SqlConnection con = new SqlConnection(constr);

        string insertQuery ="INSERT INTO items (item_name, item_des, item_createdDate,item_picture,itemPrice)VALUES ('"+itemName+"','"+itemDes+"','"+createdDate+"','"+ItemPicPath+"','"+itemPrice+"');";
        DataTable dt = sqlcmnd_select(insertQuery);
        if (dt.Rows.Count > 0)
            return true;
        else
            return false;
    }
    public bool insertIntoImags(string imagaNam)
    {
        SqlConnection con = new SqlConnection(constr);

        string insertQuery = "INSERT INTO imgz (img)VALUES ('" + imagaNam +"');";
        DataTable dt = sqlcmnd_select(insertQuery);
        if (dt.Rows.Count > 0)
            return true;
        else
            return false;
    }


}