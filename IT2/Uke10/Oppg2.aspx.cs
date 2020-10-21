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

    string[] attraksjoner = { "Saftpresserkurs Askim saftpresseri", "Skattejakt i Gamlebyen", "Elvelangs Glomma", "Mini-Cruise på Glomma", "Våler Klatrepark", "Pilegrimsveien", "Spasertur langs Olavsleden", "Omvisning Rød Herregård", "Tur med MS Strømsfoss", "Rammeverkstad på Galleri Lund" };

    int[] pris = { 190, 95, 65, 145, 195, 60, 150, 95, 110, 120 };

    protected void btn1_Click(object sender, EventArgs e)
    {
        lab1.Text = "";

        if (rbl1.SelectedIndex != 0 || rbl1.SelectedIndex != 1)
        {
            lab1.Text = "Dette funker ikke";
        }
        else
        {
            int sum = 0;

            if (rbl1.SelectedIndex == 0)
            {
                sum = 3200;
            }
            else
            {
                sum = 7800;
            }

            lab1.Text = "Valgte atraksjoner: <br>";

            foreach (ListItem lst in cbl1.Items)
            {
                if (lst.Selected == true)
                {
                    sum += Convert.ToInt32(lst.Value);
                    lab1.Text += "<br>" + lst.Text + " : " + lst.Value;
                }
            }

            lab1.Text += "<br><br>-------------------<br>Totalpris: " + sum;
        }

    }

    protected void rbl1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cbl1.Items.Clear();
        if (rbl1.SelectedIndex == 0)
        {
            //kort rute
            for (int i = 0; i < 6; i++)
            {
                cbl1.Items.Add(new ListItem(attraksjoner[i].ToString(), pris[i].ToString()));
            }
        }
        else
        {
            //lang rute
            for (int i = 0; i < attraksjoner.Length; i++)
            {
                cbl1.Items.Add(new ListItem(attraksjoner[i].ToString(), pris[i].ToString()));
            }
        }
    }
}