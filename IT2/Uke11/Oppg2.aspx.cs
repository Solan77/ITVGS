using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppg2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int valg = DropDownList1.SelectedIndex;

        if (valg == 1)
        {
            Response.Redirect("Quiz.aspx");
        }
        else
        {
            Label1.Text = "Er for lat til å lage feler quizer på flere språk. <br> Velg et annet språk.";
        }
    }
}