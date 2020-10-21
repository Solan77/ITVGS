using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppg3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    static List<int> sted = new List<int>(); // Legger inn postbackvalue
    static List<string> by = new List<string>(); // Legger inn bynavn
    static List<double> avstand = new List<double>(); // Legg inn avstander

    string[] byer = { "Askim", "Halden", "Fredrikstad", "Moss", "Ørje" };

    double[,] avstander = { { 0, 62.3, 58.8, 44.6, 33.2 }, { 62.3, 0, 37.9, 65.3, 60.1 }, { 58.8, 37.9, 0, 40.5, 78.5 }, { 44.6, 65.3, 40.5, 0, 77.6 }, { 33.2, 60.1, 78.5, 77.6, 0 } };

    protected void img1_Click(object sender, ImageMapEventArgs e)
    {
        int value = Convert.ToInt32(e.PostBackValue);

        sted.Add(value);
        by.Add(byer[value]);

        lab1.Text = "";
        avstand.Clear();

        for(int i = 0; i < by.Count; i++)
        {
            lab1.Text += "<br>" + by[i];
        }

        for(int i = 0; i < sted.Count; i++)
        {
            if (i > 0)
            {
                avstand.Add(avstander[sted[i - 1], sted[i]]);
            }
        }

        lab1.Text += "<br>Avsatnd: " + Total() + "km <br>";
        lab1.Text += "Tid: " + Math.Round(Total() / 20, 2) + "<br>";

    }

    private double Total()
    {
        double sum = 0;

        for (int i = 0; i < avstand.Count; i++)
        {
            sum += avstand[i];
        }

        return sum;
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        sted.Clear();
        by.Clear();
        avstand.Clear();
        lab1.Text = "";
    }
}