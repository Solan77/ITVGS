using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppg3 : System.Web.UI.Page
{
    static int[,] status = { { 0, 0, 1 }, { 1, 1, 0 }, { 0, 1, 0 }, { 0, 1, 0 } };
    int[,] info = { { 4, 2, 1, 12000 }, { 6, 1, 0, 15000 }, { 8, 0, 0, 16000 }, { 10, 2, 1, 30000 } };
    int[] verdi = { 0, 1, 2, 3 };
    object[] bilde = { "", "", "", "", };
    string[] hytter = { "Granstua", "Granbo", "Grantoppen", "Granhaug" };
    string[] ferie = { "Julen", "Vinterferien", "Påsken" };
    string[] standar = { "Lav", "Middels", "Høy" };
    string[] badstue = { "Ja", "Nei" };

    static int valg = 0;
    static int valg2 = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        lab1.Text = "";
        lab2.Text = "";
    }

    protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
    {
        valg = Convert.ToInt32(ddl1.SelectedIndex) - 1;

        ddl2.Items.Clear();
        ddl2.Items.Add(new ListItem("---Velg Hytte---"));

        for (int i = 0; i < status.GetLength(0); i++)
        {
            if (status[i,valg] == 1)
            {
                ddl2.Items.Add( new ListItem(hytter[i], Convert.ToString(verdi[i])));
            }
        }

        ddl2.Visible = true;
        btn1.Visible = true;
    }

    protected void ddl2_SelectedIndexChanged(object sender, EventArgs e)
    {
        valg2 = Convert.ToInt32(ddl2.SelectedItem.Value);

        lab1.Text = "Du kan bestilt " + hytter[valg2] + " i " + ferie[valg] + "<br> Sengeplasser: " + info[valg2, 0] + "<br> Standard: " + standar[info[valg2, 1]] + "<br> Badstue: " + badstue[info[valg2, 2]] + "<br> Ukespris: " + info[valg2, 3] + ",-";
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        valg2 = Convert.ToInt32(ddl2.SelectedItem.Value);

        status[valg2, valg] = 0;

        lab2.Text = "Du har bestilt " + hytter[valg2] + " i " + ferie[valg] + "<br> Sengeplasser: " + info[valg2, 0] + "<br> Standard: " + standar[info[valg2, 1]] + "<br> Badstue: " + badstue[info[valg2, 2]] + "<br> Ukespris: " + info[valg2, 3] + ",-";
    }
}