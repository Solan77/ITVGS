using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finnreklamev2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Trenger du det?";
        DropDownList1.Visible = true;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string svar = DropDownList1.SelectedItem.Text;
        string tekst = Label1.Text;

        if (svar == "Ja")
        {
            if (tekst == "Trenger du det?")
            {
                Label1.Text = "Trenger du det sånn helt på ordentlig?";
            }
            else if (tekst == "Trenger du det sånn helt på ordentlig?")
            {
                Label1.Text = "Kuk";
            }

        }
        else
        {
            Label1.Text = "Ikke kjøp det.";
            DropDownList1.Visible = false;
        }
    }
}