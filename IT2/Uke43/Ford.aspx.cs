using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ford : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string[] bil = { "Kuga", "C-max", "Focus", "Mondeo" };
        int[,] pris = { { 401000, 420000, 1000, 10200, 9200, 0 }, { 320000, 335000, 1000, 9400, 3600, 0 }, { 255000, 325000, 900, 12500, 9000, 0 }, { 281000, 361000, 1100, 9900, 7200, 0 } };

        int modell = Convert.ToInt32(ddlBil.SelectedItem.Value);
        int type = Convert.ToInt32(ddlVariant.SelectedItem.Value);
        string typen = ddlVariant.SelectedItem.Text;
        int fam = Convert.ToInt32(ddlFamilie.SelectedItem.Value);
        int forer = Convert.ToInt32(ddlForer.SelectedItem.Value);
        int stil = Convert.ToInt32(ddlStil.SelectedItem.Value);

        if (modell == -1 || type == -1 || fam == -1 || forer == -1 || stil == -1)
        {
            Label1.Text = "Fyll inn alt";
        }
        else
        {
            int prisen = pris[modell, type] + pris[modell, fam] + pris[modell, forer] + pris[modell, stil];

            Label1.Text = "Din pris er: " + prisen + " kr";
            

            if (fam == 2 && forer == 3 && stil == 4)
            {
                Label2.Text = "Din bestilling består av: <br> Ford " + bil[modell] + "<br> Utstyr: <br> - " + typen + "<br> - Familiepakke <br> - Førerasistanse <br> - Stilpakke";
            }
            else if (fam == 2 && forer == 3)
            {
                Label2.Text = "Din bestilling består av: <br> Ford " + bil[modell] + "<br> Utstyr: <br> - " + typen + "<br> - Familiepakke <br> - Førerasistanse";
            }
            else if (forer == 3 && stil == 4)
            {
                Label2.Text = "Din bestilling består av: <br> Ford " + bil[modell] + "<br> Utstyr: <br> - " + typen + "<br> - Førerasistanse <br> - Stilpakke";
            }
            else if (fam == 2 && stil == 4)
            {
                Label2.Text = "Din bestilling består av: <br> Ford " + bil[modell] + "<br> Utstyr: <br> - " + typen + "<br> - Familiepakke <br> - Stilpakke";
            }
            else if (fam == 2)
            {
                Label2.Text = "Din bestilling består av: <br> Ford " + bil[modell] + "<br> Utstyr: <br> - " + typen + "<br> - Familiepakke";
            }
            else if (forer == 3)
            {
                Label2.Text = "Din bestilling består av: <br> Ford " + bil[modell] + "<br> Utstyr: <br> - " + typen + "<br> - Førerasistanse";
            }
            else if (stil == 4)
            {
                Label2.Text = "Din bestilling består av: <br> Ford " + bil[modell] + "<br> Utstyr: <br> - " + typen + "<br> - Stilpakke";
            }
            else
            {
                Label2.Text = "Din bestilling består av: <br> Ford " + bil[modell] + "<br> Utstyr: <br> - " + typen;
            }


            if (modell == 0)
            {
                Image1.ImageUrl = "~/Bilder/Kuga.jpg";
            }
            else if (modell == 1)
            {
                Image1.ImageUrl = "~/Bilder/styggbil.jpg";
            }
            else if (modell == 2)
            {
                Image1.ImageUrl = "~/Bilder/Ford-Focus-RS.jpg";
            }
            else if (modell == 3)
            {
                Image1.ImageUrl = "~/Bilder/Ford-Mondeo-7.jpg";
            }
        }

        Button2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://cars.mclaren.com/en/ultimate-series/mclaren-speedtail");
    }
}