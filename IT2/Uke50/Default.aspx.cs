using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn1_Click(object sender, EventArgs e)
    {

    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        double[,] nering = { { 23.5, 0.3, 0.1 }, { 12.1, 0.4, 0.4 }, { 14.4, 0.2, 0.6 } };
        string[] stoffer = { "Karbohydrater", "Fett", "Protein" };
        int verdi = Convert.ToInt32(ddl1.SelectedItem.Value);
        string fruktane = ddl1.SelectedItem.Text;

        if (verdi == -1)
        {
            lab1.Text = "Kan du være så snill å velge en vare fra listen og ikke bare vare som er idoti!!!";
        }
        else
        {
            lab1.Text = "Du valgte " + fruktane + " og den har per 100g: <br>";

            for (int i= 0; i < nering.GetLength(0); i++)
            {
                lab1.Text += stoffer[i] + ": " + nering[verdi, i] + "g <br>";
            }
            //lab1.Text = "Du valgte " + fruktane + " og den har per 100g: <br>" + "Karbohydrater: " + nering[verdi, 0] + "g <br>Fett: " + nering[verdi, 1] + "g <br>Protein: " + nering[verdi, 2] + "g";
        }
    }
}