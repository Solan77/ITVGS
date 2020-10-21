using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppg1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //Alders grense verdier
    int[] grenser = { 3, 3, 12, 12, 18, 18 };

    protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //sjekker om man har fylt inn textboxen
        if (txt1.Text == "") 
        {
            lab1.Text = "Du må fylle inn alderen din!!!";
        }
        else
        {
            int value = Convert.ToInt32(ddl1.SelectedIndex);

            //Sjekker at du ikke velger første element
            if (value == 0)
            {

            }
            else
            {
                int ar = Convert.ToInt32(txt1.Text);
                int grense = Convert.ToInt32(ddl1.SelectedItem.Value);
                string konk = ddl1.SelectedItem.Text;

                //Sjekker at du er innenfor aldersgruppene
                if (ar < 3 || ar > 111)
                {
                    lab1.Text = "Du er ikke i rikig aldersgruppe for noen av konkuransene våre";
                }
                else
                {
                    //sjekker at du er innenfor grense for den konkurransen man har valgt
                    if (grense >= ar && grenser[value] <= ar)
                    {
                        lab1.Text = "Du er " + ar + " år gammel og ønsker å deta i konkuransen " + konk + "<br> Du er i riktig aldersgruppe for å delta i denne konkurransen";
                    }
                    else
                    {
                        lab1.Text = "Du er " + ar + " år gammel og ønsker å deta i konkuransen " + konk + "<br> Du er ikke i riktig aldersgruppe for å delta i denne konkurransen";
                    }
                }
            }
        }
    }
}