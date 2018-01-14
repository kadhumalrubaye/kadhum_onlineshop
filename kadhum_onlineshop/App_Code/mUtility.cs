using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for mUtility
/// </summary>
public class mUtility
{
    
    public void creatCocki(string cockiName, string[] keys, string[] vlaues, bool expired, HttpResponse res)
    {
        HttpCookie c = new HttpCookie(cockiName);
        if(keys!=null){
            for (int i = 0; i < keys.Length; i++)
        {
            c.Values.Add(keys[i], vlaues[i]);
           if(!expired)
               c.Expires = DateTime.Now.AddYears(5);              
           else
               c.Expires = DateTime.Now.AddYears(-5);
               res.Cookies.Add(c);           
        }
        }
    }

    public string readFromCocki(string cockiName,string key,HttpRequest req)
    {
try{
return req.Cookies[cockiName][key].ToString();
}
catch
{
    return null;
}
    }

    public void removCocki(string cockiName,HttpResponse res)
    {
        creatCocki(cockiName, null, null, false, res);

    }
    
    
    
    
    
    
    
    
    
    
    public mUtility()
	{
       	
	}
}