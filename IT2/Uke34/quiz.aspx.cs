using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class quiz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnTrykk_Click(object sender, EventArgs e)
    {
        int antallRiktige = 0; //setter antall poeng til 0

        string svar1 = rblSpors1.SelectedItem.Text; //henter svar
        string fasit1 = "Golf" ; //Lagrer  fasit
        string fasit2 = "Fekting";

        if (svar1 == fasit1) //skjekker om mitt svar og fasit er likt
        {
            labSvar.Text = "Helt Riktig";
            //antallRiktige = antallRiktig + 1;
            //antallRiktig += 1;
            antallRiktige++; //øker med 1
            labSvar.ForeColor = System.Drawing.Color.Lime;
        }        
        else if (svar1 == fasit2)
        {
            labSvar.Text = "Riktig";
            antallRiktige++; //øker med 1
            labSvar.ForeColor = System.Drawing.Color.Lime;
        }
        else
        {
            labSvar.Text = "Feil";
            antallRiktige--;
            labSvar.ForeColor = System.Drawing.Color.Red;
        }

        string svar2 = rblSpors2.SelectedItem.Text;
        string fasit3 = "Holund";

        if (svar2 == fasit3)
        {
            labSvar2.Text = "Riktig";
            antallRiktige++;
            labSvar2.ForeColor = System.Drawing.Color.Lime;
        }
        else
        {
            labSvar2.Text = "Feil";
            antallRiktige--;
            labSvar2.ForeColor = System.Drawing.Color.Red;
        }

        string svar3 = txtSvar1.Text;
        string fasit4 = "Dag Otto Lauritzen";

        if (svar3 == fasit4)
        {
            labSvar3.Text = "Riktig";
            antallRiktige++;
            labSvar3.ForeColor = System.Drawing.Color.Lime;
        }
        else
        {
            labSvar3.Text = "Feil";
            antallRiktige--;
            labSvar3.ForeColor = System.Drawing.Color.Red;
        }

        labPoeng.Text = "Poeng: " + antallRiktige;

        if (antallRiktige == 3)
        {
            imgalt.Visible = true;
        }
        else
        {
            imgalt.Visible = false;
        }
    }

    

}