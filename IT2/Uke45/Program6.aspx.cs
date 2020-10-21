using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Program6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int t1 = Convert.ToInt32(TextBox1.Text);

        int fakul = Fakultet(t1);

        Label1.Text = "Fakulteten av " + t1 + "! er: " + fakul;
    }

    protected int Fakultet(int tall)
    {
        int fak = tall;

        for (int i = 1; i < tall; i++)
        {
            fak = fak * i;
        }
        return fak;
    }
}