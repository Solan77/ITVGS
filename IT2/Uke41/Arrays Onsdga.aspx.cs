using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Arrays_Onsdga : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int[] karakterer = { 2, 1, 2, 3, 1, 5, 3, 6, 3, 4, 5, 2, 6, 4, 6, 1, 3, 2, 4 };
        string[] maaloppnaelse = { "Lav", "Middels", "Høy" };
        int[] antall = new int[3]; //lager array med tre plasser

        for (int i = 0; i < karakterer.Length; i++)
        {
            if (karakterer[i] == 1|| karakterer[i] == 2)
            {
                antall[0]++;
            }
            else if (karakterer[i] == 3 || karakterer[i] == 4)
            {
                antall[1]++;
            }
            else if (karakterer[i] == 5 || karakterer[i] == 6)
            {
                antall[2]++;
            }
        }

        for (int i = 0; i < antall.Length; i++)
        {
            Label1.Text += "<br>" + maaloppnaelse[i] + ": " + antall[i];
        }
        //Label1.Text = "Lav:" + antall[0]+ "<br>" + antall[1] + "<br>" + antall[2];
    }
}