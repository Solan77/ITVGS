using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ddlStudie.SelectedIndex == 0 && txtSnitt.Text == "" && txtPoeng.Text == "" )
        {
            labTekst.Text = "Du må fylle ut alle felt";
        }
        else
        {
            double snitt = Convert.ToDouble(txtSnitt.Text);
            double tillegg = Convert.ToDouble(txtPoeng.Text);
            double poengsum = (snitt * 10) + tillegg;
            int poenggrense = Convert.ToInt32(ddlStudie.SelectedValue);
            string studie = ddlStudie.SelectedItem.Text;

            btnKnapp.Visible = false;

            if (poengsum > poenggrense)
            {
                labTekst.Text = "Gratulerer du har " + poengsum + " Studiepoeng. Det er nok poeng. Du måtte ha " + poenggrense + " for å komme inn på " + studie;
            }
            else
            {
                labTekst.Text = "Gratulerer du har " + poengsum + " Studiepoeng. Det er ikke nok poeng. Du måtte ha " + poenggrense + " for å komme inn på " + studie;
            }

        }
    }
}