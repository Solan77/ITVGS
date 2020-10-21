using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppgaver_Mandag : System.Web.UI.Page
{
    int[] tall = { 34, 53, 2, 3, 34, 26, 26, 85, 3, 4, 98, 2, 12, -12, -13 };

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {   
        for (int i = 0; i < tall.Length; i++)
        {
            Label1.Text += tall[i] + "<br>";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        for (int i = tall.Length - 1; i >= 0; i--)
        {
            Label1.Text += tall[i] + "<br>";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < tall.Length; i += 2)
        {
            Label1.Text += tall[i] + "<br>";
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < tall.Length; i++)
        {
            if (tall[i] < 10)
            {
                Label1.Text += tall[i] + "<br>";
            }
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < tall.Length; i++)
        {
            if (tall[i] % 2 == 0)
            {
                Label1.Text += tall[i] + "<br>";
            }
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        int sum = 0;
        for (int i = 0; i < tall.Length; i++)
        {
            sum += tall[i];
        }
        Label1.Text += sum + "<br>" ;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        int sum = 0;
        for (int i = 0; i < tall.Length; i++)
        {
            if (tall[i] < 0)
            {
                sum += tall[i];
            }
            Label1.Text = "" + sum;
        }
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        int sum = 0;
        for (int i = 0; i < tall.Length; i++)
        {
            sum += tall[i];
        }
        double snitt = sum / tall.Length;
        Label1.Text = "" + snitt;
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        int verdi = 0;
        for (int i = 0; i < tall.Length; i++)
        {
            if (tall[i] > verdi)
            {
                verdi = tall[i];
            }            
        }
        for (int i = 0; i < tall.Length; i++)
        {
            if (tall[i] < verdi )
            {
                verdi = tall[i];
            }
        }
        Label1.Text = "" + verdi;
    }

    protected void Button0_Click(object sender, EventArgs e)
    {
        int sum = 0;
        for (int i = 0; i < tall.Length; i++)
        {
            if (tall[i] % 2 == 0)
            {
                sum += tall[i];
            }
        }
        Label1.Text = "" + sum;
    }
}