using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Loop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }



    protected void btnLoop_Click(object sender, EventArgs e)
    {
        labUt.Text = "";

        int slutt = Convert.ToInt32(txtSlutt.Text);
        int sum = 0;

        // startverdi ; logisk utrykk ; endring
        for (int i = 0; i < slutt; i++)
        {
            sum += i;
            //labUt.Text += "<br>" + sum;

            //labUt.Text += "<br>" + i;

            /*if (i % 2 == 0) // Alle verdier som er delig på 2 og har 0 i rest
            {
                labUt.Text += i;
            }*/            
        }

        labUt.Text = "" + sum;
    }

    protected void btnWhile_Click(object sender, EventArgs e)
    {
        labUt.Text = ""; //tømmer label

        int antall = Convert.ToInt32(txtTall.Text);

        while(antall >= 0)
        {
            labUt.Text += "<br>" + antall; //skriver ut
            antall--;
        }
    }
}