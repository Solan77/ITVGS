using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test : System.Web.UI.Page
{
    string[] sporsmal = { "femur", "gluteus", "abdominal", "biceps", "triceps" };
    int[] spor = { 0, 1, 2, 3, 4 };

    static int poeng = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        string svar = ddl1.SelectedItem.Value;
        string rikitg = labS.Text;

        if (svar == "0")
        {
            sporse();
            lab2.Text = "Du fikk et nytt spørsmål";
        }
        else if (svar == rikitg)
        {
            lab2.Text = "Riktig";
            poeng++;
            poengene();
            sporse();
        }
        else
        {
            lab2.Text = "Feil";
            poeng--;
            poengene();
        }
        
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        sporse();
    }

    protected void sporse()
    {
        Random r = new Random();
        int tall = r.Next(0, spor.Length);

        labS.Text = sporsmal[tall];

        btn1.Visible = true;
        btn2.Visible = false;
        ddl1.Visible = true;
        btn4.Visible = true;
        Label2.Visible = true;
        Label1.Visible = true;
    }

    protected void poengene()
    {
        Label1.Text = poeng + "";
    }

    protected void nullstill()
    {
        poeng = 0;

        btn1.Visible = false;
        btn2.Visible = true;
        ddl1.Visible = false;
        btn4.Visible = false;
        Label2.Visible = false;
        Label1.Visible = false;
        labS.Text = "";
        Label1.Text = "";
        lab2.Text = "";
    }

    protected void avslutt()
    {
        Response.Redirect("Innlevering.aspx");
    }

    protected void btn3_Click(object sender, EventArgs e)
    {
        nullstill();
        avslutt();
    }

    protected void btn4_Click(object sender, EventArgs e)
    {
        nullstill();
    }
}