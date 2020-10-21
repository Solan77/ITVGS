using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";

        int alder1 = Convert.ToInt32(TextBox1.Text);
        int alder2 = Convert.ToInt32(TextBox2.Text);
        int alder3 = Convert.ToInt32(TextBox3.Text);

        int[] alder = { alder1, alder2, alder3 };

        int sum = 0;
        int snitt = 0;

        //Label1.Text = "" + alder1 + alder2 + alder3;  Burker ikke
        //Label1.Text = "" + alder[1] + alder[2] + alder[3];  bruker ikke

        for (int i = 0; i < alder.Length; i++)
        {
            Label1.Text += alder[i] + "<br>";

            sum += alder[i];

            snitt = sum / alder.Length;
             
        }
        Label1.Text += "<br>" + sum + "<br>";
       
        Label1.Text += "<br>" + snitt + "<br>";
    }
}