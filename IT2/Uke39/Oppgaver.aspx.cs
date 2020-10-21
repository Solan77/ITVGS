using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppgaver : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnKnapp_Click(object sender, EventArgs e)
    {
        int penge = Convert.ToInt32(TextBox1.Text);
        int aar = Convert.ToInt32(TextBox2.Text);
        double rente = Convert.ToDouble(TextBox3.Text);

        

        

        for (int i = 1; i <= aar; i++)
        {
            Label1.Text += "Etter " + i + " har du " + (Math.Pow(rente; i) * penge) + " kroner i banken";
        }
    }
}