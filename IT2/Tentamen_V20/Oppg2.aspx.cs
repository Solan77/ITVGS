using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppg2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    //tilfeldig
    new Random rnd = new Random();

    //variabler
    static int ny = 0;
    static int valg = 0;
    static int riktige = 0;
    static int feil = 0;

    protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
    {
        valg = Convert.ToInt32(ddl1.SelectedItem.Value);
        lab1.Text = "";
    }

    protected void imgm1_Click1(object sender, ImageMapEventArgs e)
    {
        //Tilfeldig tall fra 1 til 4
        ny = rnd.Next(1, 4);

        //Sjekker at man har tippet noe
        if (valg == 0)
        {
            lab1.Text = "Du må tippe en kortsort!!";
        }
        else
        {        
            //Sjekker om tippet er det samme som tilfeldig tall
            if (ny == valg)
            {
                lab1.Text = "Du tippet riktig kortsort" + "<br>Ditt tipp: " + valg + "<br>Riktig: " + ny   ;
            }
            else
            {
                lab1.Text = "Du tippet feil" + "<br>Ditt tipp: " + valg + "<br>Riktig: " + ny;
            }
        }
    }
}