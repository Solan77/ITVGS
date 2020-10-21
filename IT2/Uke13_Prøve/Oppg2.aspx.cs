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

    string[,] ovelse = { { "Bicepscurl med stang", "Fransk press", "" }, { "Stående militærpress", "Sidehev", "" }, { "knebøy", "Leg extension", "Leg curl" }, { "Nedtrekk", "Roing", "" }, { "Benkpress", "Flies", "Push up" } };

    protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
    {
        rbl1.Items.Clear();
        lab2.Text = "";
        lab1.Text = "Velg øvelse:";

        int verdi = Convert.ToInt32(ddl1.SelectedItem.Value);

        for (int i = 0; i < ovelse.GetLength(1); i++)
        {
            if (ovelse[verdi, i] != "") 
            {
                rbl1.Items.Add(new ListItem(ovelse[verdi, i]));
            }
        }
    }

    protected void rbl1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string muskel = ddl1.SelectedItem.Text;
        string vovelse = rbl1.SelectedItem.Text;

        lab2.Text = "Muskelgruppe: " + muskel + "<br>Øvelse: " + vovelse;
    }
}