using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppgave_3 : System.Web.UI.Page
{
    static string[] lyder = { "\\Lyder/fagott.wav", "\\Lyder/Flote.wav", "\\Lyder/klarinett.wav", "\\Lyder/obo.wav", "\\Lyder/valthorn.wav" };
    static bool[] status = { false, false, false, false, false };

    static List<int> tall = new List<int>();
    static List<int> score = new List<int>();

    static int forsok = 0;
    static int feil = 0;
    static int riktig = 0;
    static int random = 0;
    static int topscore = 0;

    static Random rnd = new Random(); 

    protected void btn1_Click(object sender, EventArgs e)
    {
        if (tall.Count < lyder.Length)
        {
            nytall();
        }    
    }

    protected void nytall()
    {
        random = rnd.Next(0, lyder.Length);

        if (!tall.Contains(random))
        {
            tall.Add(random);
            System.Media.SoundPlayer lyd = new System.Media.SoundPlayer(lyder[random]);
            lyd.Play();
        }
        else
        {
            nytall();
        }
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        System.Media.SoundPlayer lyd = new System.Media.SoundPlayer(lyder[random]);
        lyd.Play();
        resultat();
    }

    protected void imb5_Click(object sender, ImageClickEventArgs e)
    {
        fasit(4);
        bilde();
        resultat();
    }

    protected void imb4_Click(object sender, ImageClickEventArgs e)
    {
        fasit(3);
        bilde();
        resultat();
    }

    protected void imb3_Click(object sender, ImageClickEventArgs e)
    {
        fasit(2);
        bilde();
        resultat();
    }

    protected void imb2_Click(object sender, ImageClickEventArgs e)
    {
        fasit(1);
        bilde();
        resultat();
    }

    protected void imb1_Click(object sender, ImageClickEventArgs e)
    {
        fasit(0);
        bilde();
        resultat();
    }

    protected void fasit(int bilde)
    {
        if (random == bilde)
        {
            status[bilde] = true;

            System.Media.SoundPlayer riktig = new System.Media.SoundPlayer("\\Lyder/riktig.wav");
            riktig.Play();
        }
        else
        {
            System.Media.SoundPlayer feil = new System.Media.SoundPlayer("\\Lyder/feil.wav");
            feil.Play();
        }
    }

    protected void bilde()
    {
        ImageButton[] bilder = { imb1, imb2, imb3, imb4, imb5 };

        // Går i gjennom arrayen for å sjekke hvilke bilder som skal vises
        for (int i = 0; i < status.Length; i++)
        {
            // Hvis lyden ikke er gjettet enda, skal bilde og tekst vises
            if (status[i] == false)
            {
                bilder[i].Visible = true;
            }
            // Hvis lyden allerede er gjettet riktig, skal bilde og tekst ikke vises
            else
            {
                bilder[i].Visible = false;
            }
        }
    }

    protected void resultat()
    {
        forsok++;
        Label1.Text = "Antall forsøk: " + forsok;

        if (tall.Count == lyder.Length)
        {
            score.Add(feil);

            // Hvis antall feil er større enn 0, skriv antall feil ut
            if (feil > 0)
            {
                Label2.Text += "<br>Antall feil: " + feil;
            }
            // Hvis antall feil er lik 0, skriv en egen melding ut
            else
            {
                Label2.Text += "<br>GRATULERER! Du fikk 0 feil!";
            }

            // Går i gjennom alle resultatet i spillet
            for (int i = 0; i < score.Count; i++)
            {
                // Hvis antall feil er mindre eller lik minstre resultatet i listen oppdateres high schoren
                if (feil <= score.Min())
                {
                    topscore = feil;
                }
            }

            // Skriver ut highscoren
            Label2.Text += "<br>High score: " + topscore;            
        }
    }
}