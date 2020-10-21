using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppgave : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        double[,] timer = { { 0, 0, 2, 0, 1, 1.5, 2 }, { 0, 0, 0, 0, 4, 2, 1.5 }, { 0, 2, 2, 3, 4, 2, 1.5 }, { 1, 2, 1, 2, 4, 1, 0 } };

        double tre = 0;
        double hvil = 0;
        double sum = 0;
        double fre = 0;

        for (int i = 0; i < timer.GetLength(0); i++)
        {
            fre += timer[i, 4];
            for (int j = 0; j < timer.GetLength(1); j++)
            {
                if (timer[i,j] > 0)
                {
                    tre++;
                    sum += timer[i, j];
                }
                else if (timer[i,j] < 1)
                {
                    hvil++;

                }

            }
        }

        double pro = Math.Round((tre / 28) * 100, 3);

        Label1.Text = "Treningsdager: " + tre + "<br>Hviledager: " + hvil + "<br>Trening i prosent: " + pro + "<br>Treningstimer: " + sum + "<br>Fredagstrening: " + fre;



    }
}