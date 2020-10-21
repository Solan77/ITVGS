using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }

    static List<int> karakterer = new List<int>();

    protected void Button1_Click(object sender, EventArgs e)
    {
        int hentKarakter = Convert.ToInt32(TextBox1.Text);

        karakterer.Add(hentKarakter);//legger til verdi i listen
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        for(int i = 0; i <karakterer.Count; i++)
        {
            Label1.Text += "<br>" +  karakterer[i];
        }
    }
}