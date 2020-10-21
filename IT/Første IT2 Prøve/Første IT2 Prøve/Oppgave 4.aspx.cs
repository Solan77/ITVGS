using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppgave_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnKnapp_Click(object sender, EventArgs e)
    {
        double lonn = Convert.ToDouble(txtLonn.Text);
        double skatt1 = lonn * 0.273;
        double skatt2 = lonn * 0.364;
        double skatt3 = lonn * 0.437;


        if (lonn <= 500000)
        {
            labSvar.Text = "Du må betale " + skatt1 + " kr i skatt. ";
        }
        else if (lonn >= 1000000 )
        {
            labSvar.Text = "Du må betale " + skatt3 + " kr i skatt. ";
        }
        else
        {
            labSvar.Text = "Du må betale " + skatt2 + " kr i skatt. ";
        }
    }
}