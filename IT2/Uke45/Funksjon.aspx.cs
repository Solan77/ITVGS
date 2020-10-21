using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Funksjon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string navn = Navn(TextBox1.Text);

        Label1.Text = navn;
    }

    protected string Navn(string navn)
    {
        return "Velkommen " + navn + " til oss";
    }
}