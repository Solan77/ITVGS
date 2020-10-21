using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Navn = TextBox1.Text;
        int Alder = Convert.ToInt32(TextBox2.Text);
        string Kjønn = TextBox3.Text;
        string Post = TextBox4.Text;
        string Passord = TextBox5.Text;

        Label1.Text += Post + Navn + Passord; 

        //Response.Redirect("https://www.vg.no");

        Label1.Visible = true;
    }
}