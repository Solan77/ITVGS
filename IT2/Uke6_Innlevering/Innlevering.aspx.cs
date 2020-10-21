using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Media;
using System.Web.UI.WebControls;

public partial class Innlevering : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
    {
        int verdi = Convert.ToInt32(e.PostBackValue);
        lab1.Text = "";

        if (verdi == 0)
        {
            string lyd1 = MapPath(".") + "\\Fil/Armstrekk.wav";
            System.Media.SoundPlayer lyd = new System.Media.SoundPlayer(lyd1);
            lyd.Play();

            animat.Style["animation-play-state"] = "running";

            lab1.Text = "Armstrekkeren";
            
        }
        else if(verdi == 1)
        {
            string lyd2 = MapPath(".") + "\\Fil/Muskler.wav";
            System.Media.SoundPlayer lyd = new System.Media.SoundPlayer(lyd2);
            lyd.Play();

            animat.Style["animation-play-state"] = "running";

            lab1.Text = "Den brede ryggmuskelen";
        }
        else if(verdi == 2)
        {
            Response.Redirect("Galleri.html");

            lab1.Text = "Hofteleddstrekkerne";
        }
        else if(verdi == 3)
        {
            Response.Redirect("Video.html");

            lab1.Text = "Knebøyerne";
        }
        else if(verdi == 4)
        {
            Response.Redirect("Test.aspx");

            lab1.Text = "Ankelstrekkerne";
        }
        else
        {
            lab1.Text = "Hva skjedde nå??";
        }
    }
}