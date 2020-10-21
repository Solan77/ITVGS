using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Poeng : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    static int poengBla = 0;
    static int poengRod = 0;

    protected void btnLeggtilBla_Click(object sender, EventArgs e)
    {
        Poengbla();
        Stilling();
    }

    protected void btnTrekkfraBla_Click(object sender, EventArgs e)
    {
        Minbla();
        Stilling();
    }

    protected void btnDouble_Click(object sender, EventArgs e)
    {
        Dobbel();
        Stilling();
    }

    protected void btnLeggtilRod_Click(object sender, EventArgs e)
    {
        Poengrod();
        Stilling();
    }

    protected void btnTrekkfraRod_Click(object sender, EventArgs e)
    {
        Minrod();
        Stilling();
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        Reset();
    }

    protected void Poengbla()
    {
        if (poengBla != 5)
        {
            poengBla++;
        }
        else if (poengBla == 5 || poengRod == 5)
        {

        }
    }

    protected void Minbla()
    {
        if (poengBla == 0)
        {

        }
        else if (poengBla == 5 || poengRod == 5)
        {

        }
        else
        {
            poengBla--;
        }
    }

    protected void Poengrod()
    {
        if (poengRod != 5)
        {
            poengRod++;
        }
        else if (poengBla == 5 || poengRod == 5)
        {

        }
    }

    protected void Minrod()
    {
        if (poengRod == 0)
        {

        }
        else if (poengBla == 5 || poengRod == 5)
        {

        }
        else
        {
            poengRod--;
        }
    }

    protected void Dobbel()
    {
        if (poengBla == 4 && poengRod == 4)
        {

        }
        else if (poengBla == 5 || poengRod == 5)
        {

        }
        else
        {
            poengBla++;
            poengRod++;
        }
    }

    protected void Stilling()
    {
        if (poengBla != 5 || poengRod != 5)
        {
            labPoengBla.Text = poengBla + "";
            labPoengRod.Text = poengRod + "";
        }

        if (poengBla == 5)
        {
            labPoengBla.Text = poengBla + "";
            labPoengRod.Text = poengRod + "";
            labResultat.Text = "Gratulerer Blå vant";
            labResultat.ForeColor = System.Drawing.Color.Blue;
        }
        else if (poengRod == 5)
        {
            labPoengBla.Text = poengBla + "";
            labPoengRod.Text = poengRod + "";
            labResultat.Text = "Gratulerer Rød vant";
            labResultat.ForeColor = System.Drawing.Color.Red;
        }      
    }

    protected void Reset()
    {
        poengRod = 0;
        poengBla = 0;
        labResultat.Text = "";
        labPoengBla.Text = poengBla + "";
        labPoengRod.Text = poengRod + "";
    }
}