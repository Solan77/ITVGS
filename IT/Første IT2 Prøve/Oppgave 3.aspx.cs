using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppgave_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnKnapp_Click(object sender, EventArgs e)
    {
        Random tilfeldig = new Random();
        int tall = tilfeldig.Next(0, 2);

        string spors = txtSpors.Text;

        if (tall == 1)
        {
            labSvar.Text = "Ja";
        }
        else
        {
            labSvar.Text = "Nei";
        }
    }
}