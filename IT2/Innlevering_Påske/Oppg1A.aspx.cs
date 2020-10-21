using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppg1A : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        if (txtH.Text == "" || txtB.Text == "")
        {
            labS.Text = "Fyll inn alle felt";
        }
        else
        {
            double hoyde = Convert.ToInt32(txtH.Text);
            double bredde = Convert.ToInt32(txtB.Text);

            if (hoyde < 0 || bredde < 0)
            {
                labS.Text = "Kun positive verdier, har ikke bilder som er negativt antall piksler.";
            }
            else
            {
                double p = Math.Round(hoyde * bredde, 2);
                double mp = Math.Round(p / 1000000, 2);

                labS.Text = "Antall piksler i bilde er: " + p + "<br>Antall megapiksler i bildet er: " + mp;
            }

        }
    }
}