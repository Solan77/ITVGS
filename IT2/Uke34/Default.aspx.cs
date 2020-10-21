using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        bool test = true;
        int tall1 = 2;
        int tall2 = 3;

        if (tall1 == tall2 || test == true)
        {

            Label1.Text = "Ha en fin dag";
        }
        else
        {
            Label1.Text = "Ha en god dag";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int a = 10;
        int b = 1;

        if (a > b)
        {
            b = b * 2;
            a = a - b;

        }
        else
        {
            a = a * 2;
            b = b - a;
        }

        Label1.Text = "" + a;
        Label1.Text = "" + b;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        double tall1 = 5;
        double tall2 = 9;
        double gjennomsnitt = (tall1 + tall2) / 2;
        string svar = Convert.ToString(gjennomsnitt);
        Label1.Text = "" + svar;
    }
}