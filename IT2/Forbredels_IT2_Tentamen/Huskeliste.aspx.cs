using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Timers;

public partial class Huskeliste : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //Arrayer 2D
    int[,] tall = { { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 } };
    string[,] ord = { { "hei", "hade", "kjooor" }, { "hei", "hade", "kjooor" }, { "hei", "hade", "kjooor" }, { "hei", "hade", "kjooor" } };

    //Vanlige Arrayer
    bool[] status = { true, false, false, true };
    string[] lyder = { "\\toys.wav", "\\toys.wav", "\\toys.wav", "\\toys.wav" };

    //Lister
    new List<int> talle = new List<int>();

    //Tilfeldigtall
    new Random rnd = new Random();

    //Variabler
    int tilfeldig = 0;
    int tt = 0;
    int verdi = 0;

    

    protected void imgm1_Click(object sender, ImageMapEventArgs e)
    {
        //Value fra imagemap
        verdi = Convert.ToInt32(e.PostBackValue);
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        //Løkke
        for (int i = 0; i < ord.GetLength(1); i++)
        {
            //Legger til verdier i ddl1 
            ddl1.Items.Add(new ListItem(ord[0, i], Convert.ToString(verdi)));
        }

        //Kjører kommando
        sta();
        noe();

        //Skriver ut tilfedlig tall
        lab1.Text = tilfeldig + "";
    }

    protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string Lyden = MapPath(".") + "\\toys.wav";
        System.Media.SoundPlayer lyd = new System.Media.SoundPlayer(Lyden);
        lyd.Play();
    }

    protected void rbl1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void noe()
    {
        //Tilfeldig tall mellom 0 og 100
        tilfeldig = rnd.Next(0, 100);

        //Hvis listen talle ikke inneholder
        if(!talle.Contains(tilfeldig))
        {
            talle.Add(tilfeldig);
        }
        else if (talle.Count == 40)
        {
            talle.Clear();
        }
        else
        {
            noe();
        }        
    }

    protected void sta()
    {
        //Array med kontroller
        Button[] k = { btn2, btn3, btn4, btn5 };

        //Tilfedlig tall
        tt = rnd.Next(0, 4);

        for (int i = 0; i < k.Length; i++)
        {
            if ( k[i].Visible == true)
            {
                k[i].Visible = false;
            }
        }

        if (k[tt].Visible != true)
        {
            k[tt].Visible = true;
        }                
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        knapper(0);
    }

    protected void btn3_Click(object sender, EventArgs e)
    {
        knapper(1);
    }

    protected void btn4_Click(object sender, EventArgs e)
    {
        knapper(2);
    }

    protected void btn5_Click(object sender, EventArgs e)
    {
        knapper(3);
    }

    protected void knapper(int nr)
    {
        //lyder[nr]
        //Spill av lyd
        string Lyden = MapPath(".") + lyder[nr];
        System.Media.SoundPlayer lyd = new System.Media.SoundPlayer(Lyden);
        lyd.Play();
    }
}