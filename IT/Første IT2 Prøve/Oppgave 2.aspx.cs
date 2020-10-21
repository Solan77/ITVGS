using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppgave_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSvar_Click(object sender, EventArgs e)
    {
        double nok = Convert.ToDouble(txtNOK.Text);
        double euro = nok / 9.89;

        labSvar.Text = "" + euro + "£";
    }
}