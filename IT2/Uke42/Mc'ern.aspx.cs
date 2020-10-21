using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mc_ern : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        Label2.Text = "";
    }

    static List<string> vare = new List<string>();
    static List<int> pris = new List<int>();

    int sum = 0;

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        vare.Add("Big Max");
        pris.Add(49);

        Kvittering();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        vare.Add("Mc Furry");
        pris.Add(29);

        Kvittering();
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        vare.Add("Fries");
        pris.Add(102);

        Kvittering();
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        vare.Add("Sjylling Burger");
        pris.Add(24);

        Kvittering();
    }


    protected void Kvittering()
    {
        for (int i = 0; i < vare.Count; i++) 
        {
            Label1.Text += "<br>" + vare[i];
            Label2.Text += "<br>" + pris[i];

            sum += pris[i];
        }
        Label3.Text = "" + sum;
    }
}