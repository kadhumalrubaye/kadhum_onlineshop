using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Member
/// </summary>
public class Member:MainTable
{
   
    private string _username;
    private string _password;
    private string _name;
    private string _email;
    private string _phone;
    private string _company;
    private string _gender;
    private string _birth_date;
    private string _quastion;
    private string _answer;

    public string Answer
    {
        get { return _answer; }
        set { _answer = value; }
    }
    public string Username
    {
        get { return _username; }
        set { _username = value; }
    }
    public string Quastion
    {
        get { return _quastion; }
        set { _quastion = value; }
    }
    public string Email
    {
        get { return _email; }
        set { _email = value; }
    }
    public string Password
    {
        get { return _password; }
        set { _password = value; }
    }
    public string Birth_date
    {
        get { return _birth_date; }
        set { _birth_date = value; }
    }
    public string Gender
    {
        get { return _gender; }
        set { _gender = value; }
    }
    public string Name
    {
        get { return _name; }
        set { _name = value; }
    }
    public string Company
    {
        get { return _company; }
        set { _company = value; }
    }
    public string Phone
    {
        get { return _phone; }
        set { _phone = value; }
    }
	public Member()
	{
		
	}
    public string Register(string username,string password,string name,string birh_date,string email,string phone,string company,string gender,string quastion,string answer){
        this.Username = username;
        this.Password = password;
        this.Name = name;
        this.Birth_date = birh_date;
        this.Email = email;
        this.Phone = phone;
        this.Company = company;
        this.Gender = gender;
        this.Quastion = quastion;
        this.Answer = answer;
        if (add())
            return "user added successfully";
        else
            return "user not added ..!!";
    }

    public override bool LoadProparties2params(string typeOfOperation)
    {
        SortedList sL = new SortedList();

        sL.Add("@check", typeOfOperation);
        sL.Add("@username", _username);
        sL.Add("@passowrd", _password);
        sL.Add("@name", _name);
        sL.Add("@email", _email);
        sL.Add("@phone", _phone);
        sL.Add("@company", _company);
        sL.Add("@gender", _gender);
        sL.Add("@birth_date", _birth_date);
        sL.Add("@answer", _answer);
        sL.Add("@quastiion", _quastion);
           
        procedureName = "ManageUser";
        if (db.RunProcedure(procedureName, sL) == 1) return true;
        else return false;

    }

    }
