using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppgave_5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnKnapp_Click(object sender, EventArgs e)
    {
        string Navn = txtNavn.Text;
        int Alder = Convert.ToInt32(txtAlder.Text);
        string Okno = lbxOkonomi.SelectedValue;
        string IQ = rblIQ.SelectedValue;
        int ung = 18 - Alder;

        if (IQ == "Ja")
        {
            if (Okno == "Ja")
            {
                if (Alder >= 18)
                {
                    labSvar.Text = "Velkommen til Mensa " + Navn + ". Du oppfyller alle våre krav. Vi vil gjerne se deg";
                }
                else
                {
                    labSvar.Text = "Velkommen til Mensa om " + ung + " år . " + Navn + " vi vil gjerne se deg igjen men akkurat nå er du for ung";
                }
            }
            else
            {
                if (Alder >= 18)
                {
                    labSvar.Text = "Hei " + Navn + ". Vi ser at du oppfyller kravene våre men mangler penger. Kom tilbake når du kan, vi vil gjerne ha deg.";
                }
                else
                {
                    labSvar.Text = "Hei " + Navn + ". Vi ser at du er " + ung + " år for ung, men når du har pengene og er gammel nok ser vi deg gjerne igjen";
                }
            }
        }
        else
        {
            if (Okno == "Ja")
            {
                if (Alder >= 18)
                {
                    labSvar.Text = "Din IQ er desverre ikke høy nok, så vi i Mensa har ikke lyst på deg.";
                }
                else
                {
                    labSvar.Text = "Din IQ er for lav og du er " + ung + " år for ung. Prøv igjen når du er 18 år." ;
                }
            }
            else
            {
                if (Alder >= 18)
                {
                    labSvar.Text = "Din IQ er desverre ikke høy nok, så vi i Mensa har ikke lyst på deg. Du mangler også penger.";
                }
                else
                {
                    labSvar.Text = "Din IQ er desverre ikke høy nok, så vi i Mensa har ikke lyst på deg. Du mangler penger og er " + ung + " for ung. Prøv igjen når du er gammel nok og har pengene som trengs.";
                }
            }
        }
    }
}