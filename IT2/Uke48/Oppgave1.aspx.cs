using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppgave1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    object[,] fam = { { "Birk", 18 }, { "Tirill", 16 }, { "Keira", 6 }, { "Kai", 63 }, { "Bjørn", 72 } };

    protected void finne()
    {
        Label1.Text = "";

        int elst = Convert.ToInt32(fam[0, 1]);
        int yngst = Convert.ToInt32(fam[0, 1]);
        int sum = 0;

        for (int i = 0; i < fam.GetLength(0); i++)
        {

            if (elst < Convert.ToInt32(fam[i, 1]))
            {
                elst = Convert.ToInt32(fam[i, 1]);
            }

            if (yngst > Convert.ToInt32(fam[i, 1]))
            {
                yngst = Convert.ToInt32(fam[i, 1]);
            }

            sum += Convert.ToInt32(fam[i, 1])/fam.GetLength(0);

            if (Convert.ToInt32(fam[i, 1]) >= 18)
            {
                for (int k = 0; k < fam.GetLength(1); k++)
                {
                    Label1.Text += "<br>" + fam[i, k];
                }
                
            }

        }
        Label1.Text += "<br>" + elst + " " + yngst + " " + sum;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        finne();
    }
}