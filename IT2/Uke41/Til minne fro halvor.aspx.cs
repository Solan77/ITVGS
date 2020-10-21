using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Til_minne_fro_halvor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    static int[] antall = new int[6];

    protected void Button1_Click(object sender, EventArgs e)
    {
        string[] tekst = { "Enere", "Toere", "Treere", "Firere", "Femmere", "Seksere" };
;

        Random r = new Random();
        int tall = r.Next(1, 7);

        antall[tall - 1]++;

        Label1.Text = "Terningkast: " + tall;

        int sum = 0;

        for (int i = 0; i < antall.Length; i++)
        {
            Label1.Text += "<br>" + tekst[i]+ ": " +  antall[i];

            sum += antall[i];
        }
        Label2.Text = "Antall kast: " + sum;
    }
}