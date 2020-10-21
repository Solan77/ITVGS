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

    protected void Button1_Click(object sender, EventArgs e)
    {
        string[] bilder = { "Bilder/75px-Elie_Wiesel.jpg", "Bilder/75px-OscarArias.jpg", "Bilder/75px-Blue_helmet.jpg", "Bilder/75px-Dalai_Lama.jpg" };

        int v = RadioButtonList1.SelectedIndex;

        Image1.ImageUrl = bilder[v];
    }
}