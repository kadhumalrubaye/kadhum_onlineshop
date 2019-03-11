using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.SessionState;

/// <summary>
/// Summary description for Member
/// </summary>
public class Member:MainTable
{
    database_hundler db;
    private string _memberID;
    private static int sessionState;
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

    public string MemberID
    {
        get
        {
            return _memberID;
        }

        set
        {
            _memberID = value;
        }
    }

    public static int SessionState
    {
        get
        {
            return sessionState;
        }

        set
        {
            sessionState = value;
        }
    }

    public Member()
	{
        db = new database_hundler();
        setMember(sessionState);



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
    public void setMember(int user_id)
    {
        DataTable dt = new DataTable();
string querey="select * from users where userID='" + user_id + "'";
      dt=  db.sqlcmnd_select(querey);
      _memberID=  dt.Rows[0][10].ToString();
        _name= dt.Rows[0][2].ToString();
        _password= dt.Rows[0][1].ToString();
        _email= dt.Rows[0][3].ToString();
        _phone = dt.Rows[0][4].ToString();
        _company = dt.Rows[0][5].ToString();
        _gender = _email = dt.Rows[0][6].ToString();
        _birth_date = _email = dt.Rows[0][7].ToString();






    }
}
