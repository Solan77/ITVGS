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

    protected void imgm1_Click(object sender, ImageMapEventArgs e)
    {
        int value = Convert.ToInt32(e.PostBackValue);

        if (value == 1)
        {
            Response.Redirect("Fredrikstad.html");
        } 
        else
        {
            Response.Redirect("Halden.html");
        }
    }
}