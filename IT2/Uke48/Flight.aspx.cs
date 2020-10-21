using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Flight : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
    {
        labsvar.Text = "";

        string[] byer = { "London", "New York", "Chicago", "Miami", "Los Angeles" };

        int value = Convert.ToInt32(e.PostBackValue);

        int[] avstandOslo = { 1220, 5810, 0, 7600, 0 };
        int[] avstandLondon = { 0, 0, 6370, 0, 8790 };
        int[] fartOslo = { 550, 700, 0, 700, 0 };
        int[] fartLondon = { 0, 0, 760, 0, 760 };

        string destinasjon = byer[value];
        int flystrekning = 0;
        double flytid = 0;

        if (avstandOslo[value] > 0)
        {
            labsvar.Text = "Din reise fra Oslo til " + destinasjon + " er en direkterute!";
            flystrekning = avstandOslo[value];
            flytid = avstandOslo[value] / fartOslo[value];
            labsvar.Text += "<br>Avtsand til " + destinasjon + " er " + flystrekning + " km <br> Din reise vil ta " + Math.Round(flytid, 2) + " timer";
        }
        else
        {
            labsvar.Text = "Din reise fra Oslo til " + destinasjon + " er med mellomladning!";
            flystrekning = avstandOslo[0] + avstandLondon[value];
            flytid = avstandOslo[0] / fartOslo[0] + avstandLondon[value] / fartLondon[value];
            labsvar.Text += "<br>Avtsand til " + destinasjon + " er " + flystrekning + " km <br> Din reise vil ta " + Math.Round(flytid, 2) + " timer";
        }
    }
}