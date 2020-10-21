using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppg1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    static double[] opps = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
    static string[] partier = { "Rødt", "Sv", "A", "SP", "MDG", "KrF", "V", "H", "FrP", "PIR" };

    static List<int> bb = new List<int>();
    static List<int> rgb = new List<int>();

    protected void btn1_Click(object sender, EventArgs e)
    {


        int parti = Convert.ToInt16(ddl1.SelectedIndex);

        opps[parti] = Convert.ToDouble(txt1.Text);

        lab1.Text = "";
        for(int i = 0; i < opps.Length; i++)
        {
            lab1.Text += opps[i] + "<br>";
        }

        for(int i = 0; i < partier.Length; i++)
        {
            if(partier[i] == "H" || partier[i] == "FrP" || partier[i] == "KrF" || partier[i] == "V")
            {
                bb.Add(i);
            }
            else if(partier[i] == "A" || partier[i] == "SV" || partier[i] == "Sp")
            {
                rgb.Add(i);
            }
        }


    }
}