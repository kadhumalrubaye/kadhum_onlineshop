using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;


/// <summary>
/// Summary description for userCart
/// </summary>
public class userCart
   
{
    public static DataTable cartTable;
    private DataRow dataRow;
    public userCart()
    {

        cartTable = new DataTable();
        cartTable.Columns.Add("user_id", typeof(string));
        cartTable.Columns.Add("product_id", typeof(string));


    }
    public void addToCart(string user_id, string product_id)
    {

        cartTable.Rows.Add(user_id,product_id);
    }
    public DataTable getCart()
    {

        return cartTable;
    }
}