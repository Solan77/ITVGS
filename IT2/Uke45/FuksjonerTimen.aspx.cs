using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FuksjonerTimen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = NyHilsen("Dust");
    }

    protected string Hilsen()   
    {
        string fornavn = TextBox1.Text;
        string etternavn = TextBox2.Text;

        string hilsen = "Halla balla " + fornavn + " " + etternavn;
        return hilsen;
    }

    protected string NyHilsen(string hilseord)
    {
        string fornavn = TextBox1.Text;
        string etternavn = TextBox2.Text;

        string hilsen = hilseord + ", " + fornavn + " " + etternavn;

        return hilsen;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Slett(); //kaller på funksjonen slett
    }

    protected void Slett()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        Label1.Text = "";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {        
        Label2.Text = "" + Sum();
    }

    protected int Sum()
    {
        int x = Convert.ToInt32(TextBox3.Text);
        int y = Convert.ToInt32(TextBox4.Text);

        int sum = x + y;
        return sum;
    }
}