using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Maaat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string rett = ccl1.SelectedItem.Text;
        string pris = ccl1.SelectedItem.Value;

        lab1.Text = "Du har bestilt: <br>";

        for (int i = 0; i < ccl1.Items.Count; i++)
        {
            lab1.Text += rett[i] + " " + pris[i] + "<br>";
        }
    }
}