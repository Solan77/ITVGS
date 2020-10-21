using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oppg2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void imgm1_Click(object sender, ImageMapEventArgs e)
    {
        int verdi = Convert.ToInt32(e.PostBackValue);

        string[] side = { "" };

        boks.Attributes.CssStyle.Add("visibility", "visible"); 
    }
}