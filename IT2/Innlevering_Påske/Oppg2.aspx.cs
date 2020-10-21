using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppg2 : System.Web.UI.Page
{

    int[] value = { 0, 1, 2, 3, 4, 5, 6 };
    string[] hytter = { "Gjendesheim", "Glitterheim", "Memurubu", "Gjendebu", "Leirvassbru", "Spiterstulen", "Olavsbu" };
    int[,] avstander = { { 0, 22, 14, 0, 0, 0, 0 }, { 22, 0, 18, 0, 0, 17, 0 }, { 14, 18, 0, 10, 0, 0, 0 }, { 0, 0, 10, 0, 19, 24, 16 }, { 0, 0, 0, 19, 0, 15, 11 }, { 0, 17, 0, 24, 15, 0, 0 }, { 0, 0, 0, 16, 11, 0, 0 } };

    static List<int> valg1 = new List<int>();
    static List<int> avstand = new List<int>();
    static List<string> besok = new List<string>();
 
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void imm1_Click(object sender, ImageMapEventArgs e)
    {
        nulls();

        int valg = Convert.ToInt32(e.PostBackValue);

        valg1.Add(valg);
        besok.Add(hytter[valg]);

        for (int i = 0; i < avstander.GetLength(1); i++)
        {
            if (avstander[valg, i] > 0)
            {
                rblV.Items.Add(new ListItem(hytter[i], Convert.ToString(value[i])));
            }
        }

        lab1.Text = "Er du sikker du vil starte fra: " + hytter[valg] + "?<br>Hvis ikke velg et nytt start sted.";
        labV.Text = "Velg så nest hytte du vil gå til.";

        boks2.Attributes.CssStyle.Add("display", "block");
    }

    protected void rblV_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (avstand.Count < 1)
        {
            int valg = Convert.ToInt32(rblV.SelectedItem.Value);

            list();

            for (int i = 0; i < avstander.GetLength(1); i++)
            {
                if (avstander[valg, i] > 0)
                {
                    rblV.Items.Add(new ListItem(hytter[i], Convert.ToString(value[i])));
                }
            }
        }
        else
        {
            lab1.Text = "Du kan beregne en ny tur ved å trykke på en ny hytte";
            Btn1.Visible = true;
            boks2.Attributes.CssStyle.Add("display", "none");
            boks3.Attributes.CssStyle.Add("display", "block");
            list();
            Total();
            tur();
        }
    }

    protected void Btn1_Click(object sender, EventArgs e)
    {
        rens();
    }

    protected void list()
    {
        int valg = Convert.ToInt32(rblV.SelectedItem.Value);
        rblV.Items.Clear();
        avstand.Add(avstander[valg1[valg1.Count-1], valg]);
        valg1.Add(valg);
        besok.Add(hytter[valg]);
    }

    protected void tur()
    {
        lab2.Text += "<br>Turen din går slik: ";

        for (int i = 0; i < besok.Count; i++)
        {
            lab2.Text += besok[i] + " - ";
        }
    }

    protected void Total()
    {
        lab2.Text = "";

        for (int i = 0; i < avstand.Count; i++)
        {
            lab2.Text += avstand[i] + ".<br>";
        }

        int sum = 0;

        for (int i = 0; i < avstand.Count; i++)
        {
            sum += avstand[i];
        }

        lab2.Text = "Din totale distanse er: " + sum + "km";
    }

    protected void nulls()
    {
        rblV.Items.Clear();
        valg1.Clear();
        avstand.Clear();
        besok.Clear();
        lab1.Text = "Velg den hytten du vil starte på";
        lab2.Text = "";
        boks2.Attributes.CssStyle.Add("display", "none");
        boks3.Attributes.CssStyle.Add("display", "none");
    }

    protected void rens()
    {
        lab2.Text = "";        
        rblV.Items.Clear();
        int verdi = 0;
        
        for (int i = 0; i < value.Length; i++)
        {
            if (avstander[valg1[valg1.Count - 1],i] == avstand[avstand.Count-1])
            {
                verdi = i;                              
            }            
        }

        boks2.Attributes.CssStyle.Add("display", "block");
        besok.RemoveAt(besok.Count - 1);
        avstand.RemoveAt(avstand.Count - 1);
        valg1.Add(verdi);      

        for (int i = 0; i < avstander.GetLength(1); i++)
        {
            if (avstander[valg1[valg1.Count - 1], i] > 0)
            {
                rblV.Items.Add(new ListItem(hytter[i], Convert.ToString(value[i])));
            }
        }

        if (avstand.Count == 0)
        {
            Btn1.Visible = false;
            boks3.Attributes.CssStyle.Add("display", "none");
        }


    }
}