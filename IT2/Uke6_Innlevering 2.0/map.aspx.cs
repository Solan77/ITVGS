using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Media;
using System.Web.UI.WebControls;

public partial class map : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
    {
        int verdi = Convert.ToInt32(e.PostBackValue);

        if (verdi == 0)
        {
            string lyd1 = MapPath(".") + "\\Fil/Armstrekk.wav";
            System.Media.SoundPlayer lyd = new System.Media.SoundPlayer(lyd1);
            lyd.Play();

            lab1.Style["animation-play-state"] = "running";
            lab1.Style["display"] = "block";

            lab1.Text = "Armstrekkeren";
        }
        else if (verdi == 1)
        {
            string lyd2 = MapPath(".") + "\\Fil/Muskler.wav";
            System.Media.SoundPlayer lyd = new System.Media.SoundPlayer(lyd2);
            lyd.Play();

            lab1.Style["animation-play-state"] = "running";
            lab1.Style["display"] = "block";

            lab1.Text = "Den brede ryggmuskelen";
        }
        else if (verdi == 2)
        {
            Response.Redirect("Galleri.html");
        }
        else if (verdi == 3)
        {
            video1.Style["display"] = "block";


        }
        else if (verdi == 4)
        {
            Response.Redirect("Test.aspx");
        }
        else
        {

        }
    }
}