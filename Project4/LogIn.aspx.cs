// Programmers : Sneha Upadhyayula and Prashanth Naika (Group25)
// Final Project for ITMD422
   

//namespace
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //if UserName is not entered
        if (txtusername.Text.Count() == 0)
        {
            Label1.Text = "Please enter Username";
            return;
        }
        else
            Label1.Text = "";

        // if password is not entered
        if (txtpassword.Text.Count() == 0)
        {
            Label2.Text = "Please enter Password";
            return;
        }
        else
            Label2.Text = "";

        // when proper username and password is given
        if (txtusername.Text.Count() > 0 && txtpassword.Text.Count() > 0)
        {

            if (txtusername.Text.Equals("group25") && (txtpassword.Text.Equals("testest")))
            {
                Response.Redirect("MainPage.aspx");
            }
            else
            {
                Response.Write("Invalid Username/Password");
                return;
            }
        }

    }
    // when user click on Cancel button
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("login Cancelled");
    }

}