using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class promille : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnKnapp_Click(object sender, EventArgs e)
    {
        string ar1 = ddpPromille1.SelectedItem.Text;
        int pro1 = Convert.ToInt32(ddpPromille1.SelectedItem.Text);

        string ar2 = ddpPromille2.SelectedItem.Text;
        int pro2 = Convert.ToInt32(ddpPromille2.SelectedItem.Text);

        int diff = pro2 - pro1;

        if (diff > 0)
        {
            labTekst.Text = "Negativ utvikling";
        }
        else if (diff < 0)
        {
            labTekst.Text = "Posetiv utvilking";
        }
        else
        {
            labTekst.Text = "Ingen utvilking";
        }
       
    }
}