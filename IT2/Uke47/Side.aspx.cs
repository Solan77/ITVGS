using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Side : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    static List<string> Navn = new List<string>();
    static List<double> Vekt = new List<double>();
    static List<double> Hoyd = new List<double>();

    protected void btnKnapp_Click(object sender, EventArgs e)
    {
        string navn = txt1.Text;
        double vekt = Convert.ToDouble(txt2.Text);
        double hoyd = Convert.ToDouble(txt3.Text);

        if (txt1.Text == "" || txt2.Text == "" || txt3.Text == "")
        {

        }
        else
        {
            Navn.Add(navn);
            Vekt.Add(vekt);
            Hoyd.Add(hoyd);

            Clear();

            for (int i = 0; i < Navn.Count; i++)
            {
                lab1.Text += "<br>" + Navn[i] + ": " + Vekt[i] + " kg, " + Hoyd[i] + " cm";
            }

            double l = Hoyd[0];
            int p = 0;

            for (int i = 0; i < Hoyd.Count; i++)
            {
                if (l < Hoyd[i])
                {
                    l = Hoyd[i];
                    p = i;
                }
            }

            lab1.Text += "<br><br>" + Navn[p] + " er høyest med: " + l + " cm";
        }

        
    }

    protected void Clear()
    {
        txt1.Text = "";
        txt2.Text = "";
        txt3.Text = "";
        lab1.Text = "";
    }
}