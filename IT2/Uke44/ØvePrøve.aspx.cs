using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ØvePrøve : System.Web.UI.Page
{
    int[] tall = { 3, 5, 1, 2, 3, 9, 10, 23, 1, 4, 55, 6 };

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";

        //Label1.Text = "" + tall[3];

        //Array.Sort(tall);
        //Array.Reverse(tall);

        //for (int i = 0; i < tall.Length; i++)
        //{
        //    Label1.Text += "<br>" + tall[i];
        //}

        //int lh = 0;

        //for (int i = 0; i < tall.Length; i++)
        //{
        //    if (lh < tall[i])
        //    {
        //        lh = tall[i];
        //    }
        //}
        //for (int i = 0; i < tall.Length; i++)
        //{
        //    if (lh > tall[i])
        //    {
        //        lh = tall[i];
        //    }
        //}

        //Label1.Text = "" + lh;

        int sum = 0;

        

        for (int i = 0; i < tall.Length; i++)
        {
            sum += tall[i];
        }

        double snitt = sum / tall.Length;

        Label1.Text = "" + snitt;
    }
}