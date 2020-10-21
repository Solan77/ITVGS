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

    //Arrayer for spørsmål og alternativene
    string[] spors = { "(Stor forbokstav)Hva heter hei på", "(Etternavn)Hvem var president i USA i", "(Småbokstaver)Fulfør ordtaket" };
    string[,,] quiz = { { { "Engelsk", "Hi", "10" }, { "Tysk", "Hallo", "12" }, { "Spansk", "Hola", "14" }, { "Frasnk", "Salut", "16" }, { "Italiensk", "Ciao", "20" } },
                        { { "2019", "Trump", "10" }, { "2015", "Obama", "12" }, { "2008", "Bush", "14" }, { "1995", "Clinton", "16" }, { "1789", "Washington", "20" } }, 
                        { { "Nå går de gamle", "hjem", "10" }, { "Bak skyene er himmelen alltid", "blå", "12" }, { "Smuler er også", "brød", "14" }, { "Det beste er godt nok, bare man kan få", "det", "16" }, { "Bedre med trøtte armer enn tomme", "tarmer", "20" } } };    

    //Ulike variabler
    static int pris = 0;
    static double nypris = 0;
    static double vekst = 0;
    static double rabbat = 0;
    static int nrspors = 0;
    static int svarer = 0;

    //start
    protected void btn3_Click(object sender, EventArgs e)
    {
        //skjekker om fylt inn pris
        if (txt1.Text == "")
        {
            lab8.Text = "Du må fylle inn en pris";
        }
        else
        {
            pris = Convert.ToInt32(txt1.Text);

            //nullstiller alt
            nypris = pris;
            vekst = 0;
            rabbat = 0;
            nrspors = 0;
            svarer = 0;

            //får frem første spørsmål
            nyttspors();

            btn2.Visible = true;
            lab3.Visible = false;
            txt1.Visible = false;

            lab8.Text = "";
            lab10.Text = "Pris på din sommerferie: " + pris + ",-";
        }

    }

    //valg knappene
    protected void btns1_Click(object sender, EventArgs e)
    {
        alt(0);
    }

    protected void btns2_Click(object sender, EventArgs e)
    {
        alt(1);
    }

    protected void btns3_Click(object sender, EventArgs e)
    {
        alt(2);
    }

    protected void btns4_Click(object sender, EventArgs e)
    {
        alt(3);
    }

    protected void btns5_Click(object sender, EventArgs e)
    {
        alt(4);
    }

    //svar
    protected void btn1_Click(object sender, EventArgs e)
    {
        string svar = txt2.Text;

        //Rikitg eller galt
        if (svar == quiz[nrspors, svarer, 1])
        {
            lab2.Text = "Du svarte rikitg! Du får " + quiz[nrspors, svarer, 2] + "% i rabatt";

            rabbat += Convert.ToInt32(quiz[nrspors, svarer, 2]);

            riktig();
        }
        else
        {
            lab2.Text = "Du svarte feil! Du får 10% økning av pris";

            rabbat -= 10;

            feil();
        }

        peng();

        lab10.Text = "Pris på din sommerferie: " + nypris + ",-";

        //øker med en for å kunne få neste spørsmål
        nrspors++;

        btn1.Visible = false;
        btn4.Visible = true;
    }

    //Neste
    protected void btn4_Click(object sender, EventArgs e)
    {
        //Sjekker hvor mange sporsmål svart på
        if (nrspors >= quiz.GetLength(0))
        {
            lab9.Text = "Takk for at du var med på konkuransen! Din nye pris er " + nypris + ",-<br>Ha en god tur";

            lab2.Visible = false;
            lab6.Visible = false;
            lab7.Visible = false;
            lab8.Visible = false;
            lab10.Visible = false;
            lab11.Visible = false;
            btn2.Visible = false;
            btn4.Visible = false;
            txt2.Visible = false;
        }
        else
        {
            //Nytt spørsmål
            nyttspors();
        }

    }

    //hopp over
    protected void btn2_Click(object sender, EventArgs e)
    {
        //Sjekker hvor mange sporsmål svart på
        if (nrspors >= quiz.GetLength(0) - 1)
        {
            lab9.Text = "Takk for at du var med på konkuransen! Din nye pris er " + nypris + ",-<br>Ha en god tur";

            lab1.Visible = false;
            lab2.Visible = false;
            lab4.Visible = false;
            lab5.Visible = false;
            lab6.Visible = false;
            lab7.Visible = false;
            lab8.Visible = false;
            lab10.Visible = false;
            lab11.Visible = false;
            btn1.Visible = false;
            btn2.Visible = false;
            btn3.Visible = false;
            btn4.Visible = false;
            txt2.Visible = false;

            Button[] knapper = { btns1, btns2, btns3, btns4, btns5 };

            //usynelige knapper
            for (int i = 0; i < knapper.Length; i++)
            {
                knapper[i].Visible = false;
            }
        }
        else
        {
            nrspors++;
            nyttspors();
        }

    }
    
    //Metode for vanskelighets knapper
    protected void alt(int nr)
    {
        Button[] knapper = { btns1, btns2, btns3, btns4, btns5 };

        //usynelige knapper
        for (int i = 0; i < knapper.Length; i++)
        {
            knapper[i].Visible = false;
        }

        svarer = nr;

        //Skriver ut valgte alternativ med spørsmål
        lab6.Text = spors[nrspors] + " " + quiz[nrspors, nr, 0];

        lab1.Visible = false;
        lab2.Visible = true;
        lab4.Visible = false;
        lab5.Visible = false;
        lab6.Visible = true;
        lab7.Visible = true;
        lab11.Visible = true;
        btn1.Visible = true;
        txt2.Visible = true;

    }

    //Metode for å for å få frem alternativer
    protected void nyttspors()
    {
        Button[] knapper = { btns1, btns2, btns3, btns4, btns5 };

        //Skriver spørsmål
        lab1.Text = spors[nrspors];

        btn1.Visible = false;
        btn3.Visible = false;
        btn4.Visible = false;
        lab1.Visible = true;
        lab4.Visible = true;
        lab5.Visible = true;
        lab6.Visible = false;
        lab7.Visible = false;
        lab11.Visible = false;
        txt2.Visible = false;

        lab2.Text = "";
        txt2.Text = "";

        //Skriver alternativene
        for (int i = 0; i < knapper.Length; i++)
        {
            knapper[i].Visible = true;
            knapper[i].Text = quiz[nrspors, i, 0];
        }
    }

    //Beregner ny pris
    protected void peng()
    {
        //skjekker om rabbaten er positiv eller negativ
        if (rabbat > 0)
        {
            vekst = 1 - (rabbat / 100);
        }
        else
        {
            vekst = 1 + ((rabbat * -1) / 100);
        }

        //Beregner ny pris
        nypris = Math.Round(pris * vekst, 2);
    }

    //Riktig lyd
    protected void riktig()
    {
        string lydfil = MapPath(".") + "\\Lydar/riktig.wav";
        System.Media.SoundPlayer lyd = new System.Media.SoundPlayer(lydfil);
        lyd.Play();
    }

    //Feil lyd
    protected void feil()
    {
        string lydfil = MapPath(".") + "\\Lydar/feil.wav";
        System.Media.SoundPlayer lyd = new System.Media.SoundPlayer(lydfil);
        lyd.Play();
    }
}