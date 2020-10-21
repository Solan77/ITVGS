using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Wallmart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    string[] varer = { "Jakke", "Bukse", "Skjorte" };
    int[] pris = { 599, 399, 499 };
    static int[] antall = new int[3];
    static int[] sum = new int[3];

    protected void btn1_Click(object sender, EventArgs e)
    {
        int aJakke = Convert.ToInt32(ddlJakke.SelectedItem.Text);

        sum[0] += aJakke * pris[0];
        antall[0] += aJakke;

        telling1();
        utskrift();
        totalpris();
        clear();
    }

    protected void btn3_Click(object sender, EventArgs e)
    {
        int aBukse = Convert.ToInt32(ddlBukse.SelectedItem.Text);

        sum[1] += aBukse * pris[1];
        antall[1] += aBukse;

        telling2();
        utskrift();
        totalpris();
        clear();
    }

    protected void btn5_Click(object sender, EventArgs e)
    {
        int aSkjorte = Convert.ToInt32(ddlSkjorte.SelectedItem.Text);

        sum[2] += aSkjorte * pris[2];
        antall[2] += aSkjorte;

        telling3();
        utskrift();
        totalpris();
        clear();
    }

    protected void btn7_Click(object sender, EventArgs e)
    {
        utskrift();
        totalpris();        
    }

    protected void btn6_Click(object sender, EventArgs e)
    {
        antall[2]--;
        sum[2] -= pris[2];

        utskrift();
    }

    protected void btn4_Click(object sender, EventArgs e)
    {
        antall[1]--;
        sum[1] -= pris[1];

        utskrift();
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        antall[0]--;
        sum[0] -= pris[0];

        utskrift();
    }

    protected void btn8_Click(object sender, EventArgs e)
    {
        fjern();
        utskrift();
        totalpris();

        lab2.Text = "";
        labKvit.Text = "Ingen ting i kurven";
    }

    protected void totalpris()
    {
        int total = 0;

        for (int i = 0; i < sum.Length; i++)
        {
            total += sum[i];
        }

        labKvit.Text += "<br>Sum: " + total + " ,-";
    }

    protected void utskrift()
    {
        labKvit.Text = "";

        for (int i = 0; i < varer.Length; i++)
        {
            labKvit.Text += varer[i] + " " + antall[i] + " stk. " + sum[i] + ",-<br>";
        }

        lab3.Text = "";

        for (int i = 0; i < varer.Length; i++)
        {
            lab3.Text += "<br>" + "<img src='Bilder/rod.jpg' width=" + antall[i]*10 + " height='20' />";
        }
    }

    protected void telling1()
    {
        int aJakke = Convert.ToInt32(ddlJakke.SelectedItem.Text);

        lab2.Text = aJakke + " Jakker lagt til";
    }

    protected void telling2()
    {
        int aBukse = Convert.ToInt32(ddlBukse.SelectedItem.Text);

        lab2.Text = aBukse + " Bukser lagt til";
    }

    protected void telling3()
    {
        int aSkjorte = Convert.ToInt32(ddlSkjorte.SelectedItem.Text);

        lab2.Text = aSkjorte + " Skjorter lagt til";        
    }  
    
    protected void clear()
    {
        ddlBukse.SelectedIndex = 0;
        ddlJakke.SelectedIndex = 0;
        ddlSkjorte.SelectedIndex = 0;
    }

    protected void fjern()
    {
        for (int i = 0; i < varer.Length; i++)
        {
            antall[i] = 0;
            sum[i] = 0;
        }
    }


}