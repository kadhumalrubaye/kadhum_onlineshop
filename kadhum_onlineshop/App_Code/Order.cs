using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Order
/// </summary>
public class Order:MainTable
{
    private string _orderdate;
    private string _shipname;
    private string _shipcity;
    private string _shiparea;
    private string _shipaddress;
    private string _username;

    private OrderDetails _OD;
    public override bool LoadProparties2params(string typeOfOperation)
    {
        SortedList sL = new SortedList();

        sL.Add("@check", typeOfOperation);
        sL.Add("@OrderDate", _orderdate);
        sL.Add("@ShipName", _shipname);
        sL.Add("@ShipCity", _shipcity);
        sL.Add("@ShipArea", _shiparea);
        sL.Add("@shepAdress", _shipaddress);
        sL.Add("@member", _username);


        procedureName = "ManageOrders";
        if (db.RunProcedure(procedureName, sL) == 1) return true;
        else return false;
    }









	public Order()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}