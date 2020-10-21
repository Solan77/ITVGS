using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int tall = Convert.ToInt32(TextBox1.Text);

        Random tallgen = new Random();
        int tilfeldig = tallgen.Next(0, 50);

        Label2.Text = "Ditt tall var: " + tall + " og tilfeldige var: " + tilfeldig;
        
        if (tall < tilfeldig)
        {
            Label1.Text = "Større";
        }
        else if (tall > tilfeldig)
        {
            Label1.Text = "Mindre";
        }
        else
        {
            Label1.Text = "Likt";
        }
    }
}