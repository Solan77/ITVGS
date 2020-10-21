using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BMI : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnKnapp_Click(object sender, EventArgs e)
    {
        double vekt = Convert.ToDouble(txtV.Text);
        double hoyde = Convert.ToDouble(txtH.Text)/100;

        if (txtH.Text == "" || txtV.Text == "")
        {

        }
        else
        {
            double bmi = vekt / Math.Pow(hoyde, 2);

            Label1.Text = "Din BMI er: " + Math.Round(bmi, 2);
        }
    }
}