using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{

    private int poeng = 0;
    

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSvar_Click(object sender, EventArgs e)
    {

        string svar1 = rblSpors1.SelectedItem.Text;
        string svar2 = rblSpors2.SelectedItem.Text;
        string svar3 = rblSpors3.SelectedItem.Text;

        string fasit1 = "Queen";
        string fasit2 = "Kygo";
        string fasit3 = "Faded";

        int pris = 18999;
        double pris20 = pris * 0.8;
        double pris40 = pris * 0.6;
        double pris60 = pris * 0.4;
        
        if (svar1 == fasit1)
        {
            poeng++;
        }
        if (svar2 == fasit2)
        {
            poeng++;
        }
        if (svar3 == fasit3)
        {
            poeng++;
        }
        

        if (poeng == 1)
        {
            labSvar.Text = "Din pris er: " + pris20;
        }
        else if (poeng == 2)
        {
            labSvar.Text = "Din pris er: " + pris40;
        }
        else if (poeng == 3)
        {
            labSvar.Text = "Din pris er: " + pris60;
        }
        else
        {
            labSvar.Text = "Din pris er: " + pris;
        }

        labRiktig.Text = "" + poeng;

    }

    protected void btnSang_Click(object sender, EventArgs e)
    {
        System.Media.SoundPlayer spiller = new System.Media.SoundPlayer();

        spiller.SoundLocation = "http://localhost:50787/Lyd/Bohemian_Rhapsody.wav";
        spiller.Play();
    }   
}