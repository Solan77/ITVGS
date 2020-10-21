using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Array_2d : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i <= 20; i++)
        {
            Label1.Text += "<br>" + i;
        }

        Label1.Text = "";

        string[] navn = { "Geir", "Bartosz", "Flemming" };

        for (int i = 0; i < navn.Length; i++)
        {
            Label1.Text += "<br>" + navn[i];
        }

        Label1.Text = "";

        //Nøstede løkker
        //En løkke i en annen løkke kalles en Nøstede løkke

        int sum = 0;

        for (int  i = 0; i < 2; i++)
        {
            for (int l = 0; l < 2; l++)
            {
                for (int k = 0; k < 2; k++)
                {
                    for (int j = 0; j < 2; j++)
                    {
                        for (int u = 0; u < 2; u++)
                        {
                            for (int o = 0; o < 2; o++)
                            {
                                for (int p = 0; p < 2; p++)
                                {
                                    for (int t = 0; t < 2; t++)
                                    {
                                        Label1.Text += "<br>" + i + l + k + j + u + o + p + t + " - " + sum;
                                        sum++;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        //Label1.Text = "";

        //oppretting av 2d array

        string[,] navnAlder = { { "Bartosz", "32" }, { "Geir", "44" }, { "Flemming", "46" } };

        //navnAlder[2,0]

        for (int i = 0; i < navnAlder.GetLength(0); i++ )
        {
            for (int j = 0; j < navnAlder.GetLength(1); j++)
            {
                Label1.Text += "<br>" + navnAlder[i, j];
            }
        }

        //Label1.Text = "";

        int[,] tall = { { 45, 5, 79, 4, 56 }, { 32, 43, 2, 89, 56 }, { 4, 4, 56, 7, 3 }, { 54, 88, 72, 12, 21 } };

        int tall50 = 0;

        for (int i = 0; i < tall.GetLength(0); i++)
        {
            for (int j = 0; j < tall.GetLength(1); j++)
            {
                //Label1.Text += "<br>" +  tall[i, j];
                
                if (tall[i,j]> 50)
                {
                    Label1.Text += "<br>" + tall[i, j];
                    tall50++;
                }
            }
        }
        Label1.Text += "<br>-----------------------------------------------------------------------------------------------------<br> Antall:      " + tall50;
        

    }
}