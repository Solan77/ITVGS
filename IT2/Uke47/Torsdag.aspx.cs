using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Media;

public partial class Torsdag : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
    {
        int value = Convert.ToInt32(e.PostBackValue);

        string filnavn1 = MapPath(".") + "\\Tordagen/Bohemian_Rhapsody.wav";
        System.Media.SoundPlayer lydklipp1 = new System.Media.SoundPlayer(filnavn1);
        string filnavn = MapPath(".") + "\\Tordagen/applause.wav";  
        System.Media.SoundPlayer lydklipp = new System.Media.SoundPlayer(filnavn);

        if (value == 1)
        {            
            lydklipp.Play();
        }
        else if (value == 2)
        {            
            lydklipp1.Play();
        }
        else
        {
            lydklipp1.Stop();
            lydklipp.Stop();
        }
    }
}