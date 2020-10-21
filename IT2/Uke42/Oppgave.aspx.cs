using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppgave : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    static List<string> vare = new List<string>();
    static List<int> p = new List<int>();
    static List<int> a = new List<int>();
    static List<int> sum = new List<int>();

    protected void Button1_Click(object sender, EventArgs e)
    {




        if (DropDownList1.SelectedIndex == 0)
        {
            Label1.Text = "Velg en rett";
        }       
        else
        {
            string mat = DropDownList1.SelectedItem.Text;
            int antall = Convert.ToInt32(DropDownList2.SelectedValue);
            int Pris = Convert.ToInt32(DropDownList1.SelectedValue);

            int sumen = Pris * antall;

            vare.Add(mat);
            p.Add(Pris);
            a.Add(antall);
            sum.Add(sumen);

            
            

            for (int i = 0; i < antall; i++)
            {
                Label1.Text += "<br>" + mat;
            }
            
        }

        
        
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        Label2.Text = "";
        Label3.Text = "";
        vare.Clear();
        p.Clear();
        a.Clear();
        sum.Clear();

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Label2.Text = "";
        Label1.Text = "";
        int sum1 = 0;

        for (int i = 0; i < vare.Count; i++)
            {
                sum1 += sum[i];
            
                Label2.Text += "<br>" + a[i] + " " + vare[i] + " ";
                Label3.Text += "<br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" + p[i] + "&nbsp&nbsp&nbsp " + sum[i];


            }
        Label4.Text = "<br>---------------------------<br> pris: " + sum1 + " kr";
    }
}