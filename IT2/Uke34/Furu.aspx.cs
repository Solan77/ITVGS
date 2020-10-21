using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Furu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnKnapp_Click(object sender, EventArgs e)
    {
        string ar1 = ddlFuru1.SelectedItem.Text; //henter årstallet i nedtrekk 1
        int furu1 = Convert.ToInt32(ddlFuru1.SelectedItem.Value); //henter verdi i nedtrekk 1

        string ar2 = ddlFuru2.SelectedItem.Text; //henter årstallet i nedtrekk 2
        int furu2 = Convert.ToInt32(ddlFuru2.SelectedItem.Value); //henter verdi i nedtrekk 2

        int diff1 = furu2 - furu1; //tar differansen mellom furu 2 og 1

        double prosent = Math.Round(((double)diff1 / furu1) * 100,2); //regner ut prosent

        labTekst.Text = "Ved registrering av verdienen for furutrær i " + ar1 + " og " + ar2 +
                        ", henholdsvis " + furu1 + " millioner og " + furu2 + " millioner, skal applikasjonen beregne en økning på " + diff1 +
                        " millioner og en prosentvis økning på " + prosent + " %";

    }
}