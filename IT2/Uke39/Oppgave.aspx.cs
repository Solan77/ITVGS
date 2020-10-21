using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppgave : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lab1.Text = ""; 
    }

    

    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < 100; i++)
        {
            if (i % 2 == 0)
            {
                lab1.Text += "<br>" + i;
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < 100; i++)
        {
            if (i % 2 != 0)
            {
                lab1.Text += "<br>" + i;
            }
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < 100; i++)
        {
            if (i % 5 == 0)
            {
                lab1.Text += "<br>" + i;
            }
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < 100; i++)
        {
            if (i % 5 == 0 && i % 2 == 0)
            {
                lab1.Text += "<br>" + i;
            }
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < 100; i++)
        {
            if (i % 3 == 0 || i % 8 == 0)
            {
                lab1.Text += "<br>" + i;
            }
        }
    }
}