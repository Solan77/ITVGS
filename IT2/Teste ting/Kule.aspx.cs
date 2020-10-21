using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kule : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {

    }

    

    protected void btnUtregn_Click(object sender, EventArgs e)
    {        
        double s = Convert.ToDouble(txtS.Text);
        double s2 = Convert.ToDouble(txtS2.Text);
        double t = Convert.ToDouble(txtT.Text); 
        double t2 = Convert.ToDouble(txtT2.Text); 
        double r = Convert.ToDouble(txtR.Text);

        double rs = (s * Math.PI) / 180;
        double rs2 = (s2 * Math.PI) / 180;
        double rt = (t * Math.PI) / 180;
        double rt2 = (t2 * Math.PI) / 180;

        double coss = Math.Cos(rs);
        double coss2 = Math.Cos(rs2);
        double cost = Math.Cos(rt);
        double cost2 = Math.Cos(rt2);
        double sins = Math.Sin(rs);
        double sins2 = Math.Sin(rs2);
        double sint = Math.Sin(rt);
        double sint2 = Math.Sin(rt2);

        double x = Math.Round(r * coss * cost, 2);
        double x2 = Math.Round(r * coss2 * cost2, 2);
        double y = Math.Round(r * sins * cost, 2);
        double y2 = Math.Round(r * sins2 * cost2, 2);
        double z = Math.Round(r * sint, 2);
        double z2 = Math.Round(r * sint2, 2);

        double xk = Math.Pow(x, 2);
        double xk2 = Math.Pow(x2, 2);
        double yk = Math.Pow(y, 2);
        double yk2 = Math.Pow(y2, 2);
        double zk = Math.Pow(z, 2);
        double zk2 = Math.Pow(z2, 2);
        double rot = xk + yk + zk;
        double rot2 = xk2 + yk2 + zk2;

        double lengde = Math.Round(Math.Sqrt(rot), 2);
        double lengde2 = Math.Round(Math.Sqrt(rot2), 2);

        double skalar = (x * x2) + (y * y2) + (z * z2);
        double skalarl = lengde * lengde2;
        double vinkelt = skalar / skalarl;
        double vinkelr = Math.Acos(vinkelt);
        double vinkel = Math.Round((vinkelr * 180) / Math.PI, 2);

        double avstand = Math.Round(2 * Math.PI * r * vinkel / 360, 2);



        labPunkter.Text = "<br>x = " + x + "<br>y = " + y + "<br>z = " + z;
        labVinkel.Text = "" + vinkel + "<br>" + avstand;
        
    }
}