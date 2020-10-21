using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Funskjon1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        double t1 = Convert.ToInt32(TextBox1.Text);
        double t2 = Convert.ToInt32(TextBox2.Text);

        double svar = Sum(t1, t2);

        Label1.Text = "" + svar;
    }

    protected double Sum(double tall1, double tall2)
    {     
        //double sum = tall1 + tall2;
        double power = Math.Pow(tall1, tall2);

        return power;
    }

}