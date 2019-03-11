using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for OrderDetails
/// </summary>
public class OrderDetails:MainTable
{
    database_hundler db;
    private string _CatNo;
    private string _proid;
    private int _orderno;
    private int _quantity;
    private double _sellprice;
    private double _discount;
    private Product _pro;


	public OrderDetails()
	{
        db = new database_hundler();
		//
		// TODO: Add constructor logic here
		//
	}

    public override bool LoadProparties2params(string typeOfOperation)
    {
        SortedList sL = new SortedList();

        sL.Add("@check", typeOfOperation);
        sL.Add("@CatNo", _CatNo);
        sL.Add("@ProId", _proid);
        sL.Add("@OrderNo", _orderno);
        sL.Add("@quantity", _quantity);
        sL.Add("@SellPrice", _sellprice);
        sL.Add("@Discount", _discount);


        procedureName = "ManageOrderDetailes";
        if (db.RunProcedure(procedureName, sL) == 1) return true;
        else return false;

    }
}