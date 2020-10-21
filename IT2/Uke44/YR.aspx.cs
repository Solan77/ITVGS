using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YR : System.Web.UI.Page
{

    double[,] vear = { { 10, 0.3 }, { 11, 0.2 }, { 12, 0.2 }, { 13, 0.2 }, { 14, 1.4 }, { 15, 2.6 }, { 16, 4.1 }, { 17, 4.1 } };
    static List<int> luftf = new List<int>();
    static List<int> minnedbor = new List<int>();
    static List<int> maxnedbor = new List<int>();
    static List<int> minfuktighet = new List<int>();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    static int k = 0;    

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Text = "";

        int fuktig = Convert.ToInt32(TextBox1.Text);


        if (k == 0)//endrer label med klokkeslett etter som du legger til
        {
            Label1.Text = "kl 11";
        }
        else if (k == 1)
        {
            Label1.Text = "kl 12";
        }
        else if (k == 2)
        {
            Label1.Text = "kl 13";
        }
        else if (k == 3)
        {
            Label1.Text = "kl 14";
        }
        else if (k == 4)
        {
            Label1.Text = "kl 15";
        }
        else if (k == 5)
        {
            Label1.Text = "kl 16";
        }
        else if (k == 6)
        {
            Label1.Text = "kl 17";
        }
        else
        {
            Label1.Text = "";
            TextBox1.Visible = false;
            Button1.Visible = false;
            Button2.Visible = true;
        }

        k++;
        luftf.Add(fuktig);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int stor = luftf[0];
        int liten = luftf[0];
        double nedmax = vear[0, 1];
        double nedmin = vear[0, 1];
        int sum = 0;


        for (int i = 0; i < luftf.Count; i++)
        {
            Label2.Text += "Luftfuktigheten var " + luftf[i] + "% kl. " + vear[i, 0] + "<br>";

            if (stor < luftf[i])//luftfuktighet største verdi
            {
                stor = luftf[i];
            }
            if (liten > luftf[i])//Luftfuktighet minste verdi
            {
                liten = luftf[i];
            }
            if (luftf[i] == liten)//legger til minste fuktighet i liste
            {
                minfuktighet.Add(i);
            }
            sum += luftf[i];
        }
        for (int i = 0; i < minfuktighet.Count; i++)//Skriver ut
        {
            Label2.Text += "Det er minst luftfuktighet kl. " + vear[minfuktighet[i], 0] + " Da er det " + liten + "% fuktighet<br>";
        }
        int snitt = sum / luftf.Count;

        for (int i = 0; i < vear.GetLength(0); i++)//Finner største nedbør
        {
            if (nedmax < vear[i, 1])
            {
                nedmax = vear[i, 1];
            }
        }
        for (int i = 0; i < vear.GetLength(0); i++)//legger til i liste
        {
            if (vear[i, 1] == nedmax)
            {
                maxnedbor.Add(i);
            }
        }
        for (int i = 0; i < vear.GetLength(0); i++)//finner minste nedbør
        {
            if (nedmin > vear[i, 1])
            {
                nedmin = vear[i, 1];
            }
        }
        for (int i = 0; i < vear.GetLength(0); i++)//legger til i liste
        {
            if (vear[i, 1] == nedmin)
            {
                minnedbor.Add(i);
            }
        }

        for (int i = 0; i < maxnedbor.Count; i++)//skriver ut
        {
            Label2.Text += "Det er mest nedbør kl." + vear[maxnedbor[i], 0] + " og nedbøret var da: " + nedmax + "<br>";
        }
        for (int i = 0; i < minnedbor.Count; i++)//skriver ut
        {
            Label2.Text += "Det er minst nedbør kl. " + vear[minnedbor[i], 0] + " og nedbøret var da: " + nedmin + "<br>";
        }

        Label2.Text += "Snitt fuktighet er: " + snitt + "%<br>";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        //renser listene
        luftf.Clear();
        minnedbor.Clear();
        maxnedbor.Clear();
    }
}