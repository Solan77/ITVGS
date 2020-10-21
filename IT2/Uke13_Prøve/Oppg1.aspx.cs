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

    protected void btn1_Click(object sender, EventArgs e)
    {
        lab1.Text = "";

        if (txt1.Text == "" || rbl1.Text == "" || ddl1.SelectedIndex == 0) 
        {
            lab1.Text = "Du må fylle ut alle felt!!";
        }
        else
        {
            double kal = Convert.ToDouble(ddl1.SelectedItem.Value);
            double ints = Convert.ToDouble(rbl1.SelectedItem.Value);
            double tid = Convert.ToDouble(txt1.Text) / 60;

            double kalf = Math.Round((kal * ints) * tid, 2);

            lab1.Text = "Ditt kaloriforbruk er: " + kalf + " kcal";
        }


    }
}