using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tilfeldig : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnKnapp_Click(object sender, EventArgs e)
    {

        int skriv = Convert.ToInt32(txtSkriv.Text);

        Random tilfeldig = new Random();
        int talltilfeldig = tilfeldig.Next(0, skriv + 1);

        labTilfeldig.Text = "" + talltilfeldig;

       

    }
}