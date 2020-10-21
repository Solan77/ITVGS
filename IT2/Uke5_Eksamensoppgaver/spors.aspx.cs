using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class spors : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string svar = TextBox1.Text;

        if (svar == "World trade center")
        {
            Label1.Text = "Du vet allerede noe om New York – hva med å lære mer?";
        }
        else
        {
            Label1.Text = "Det var ikke rett – kanskje på tide med en New York-tur?";
        }
    }
}