using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Noe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    static List<object> bruker = new List<object>();
    static List<object> pass = new List<object>();

    protected void btn1_Click(object sender, EventArgs e)
    {
        bruker.Add(txt1.Text);
        pass.Add(txt2.Text);
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        object bruker1 = txt3.Text;
        object pass1 = txt4.Text;

        for (int i = 0; i < bruker.Count; i++)
        {
            if (bruker[i] == bruker1 && pass[i] == pass1)
            {
                lab1.Text = "Velkommen";
            }
            else
            {
                lab1.Text = "Feil passord";
            }
        }
    }

    protected void btn3_Click(object sender, EventArgs e)
    {
        txt1.Visible = false;
        txt2.Visible = false;
        txt3.Visible = true;
        txt4.Visible = true;
        btn1.Visible = false;
        btn2.Visible = true;
        btn3.Visible = false;

        d1.Visible = true;
        d2.Visible = true;
    }
}