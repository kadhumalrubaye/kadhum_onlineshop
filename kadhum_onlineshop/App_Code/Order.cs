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
    private string _userID;

    private OrderDetails _OD;

    public string Orderdate
    {
        get
        {
            return _orderdate;
        }

        set
        {
            _orderdate = value;
        }
    }

    public string Shipname
    {
        get
        {
            return _shipname;
        }

        set
        {
            _shipname = value;
        }
    }

    public string Shipcity
    {
        get
        {
            return _shipcity;
        }

        set
        {
            _shipcity = value;
        }
    }

    public string Shiparea
    {
        get
        {
            return _shiparea;
        }

        set
        {
            _shiparea = value;
        }
    }

    public string Shipaddress
    {
        get
        {
            return _shipaddress;
        }

        set
        {
            _shipaddress = value;
        }
    }

    public string Username
    {
        get
        {
            return _username;
        }

        set
        {
            _username = value;
        }
    }

    public string UserID
    {
        get
        {
            return _userID;
        }

        set
        {
            _userID = value;
        }
    }

    public override bool LoadProparties2params(string typeOfOperation)
    {
        SortedList sL = new SortedList();

        sL.Add("@check", typeOfOperation);
        sL.Add("@OrderDate", Orderdate);
        sL.Add("@ShipName", Shipname);
        sL.Add("@ShipCity", Shipcity);
        sL.Add("@ShipArea", Shiparea);
        sL.Add("@shepAdress", Shipaddress);
        sL.Add("@member", Username);
        sL.Add("@user_id", UserID);


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