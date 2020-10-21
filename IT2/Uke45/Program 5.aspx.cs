using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Program_5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    int[] liste = { 5, 7, 3, 2, 9 };

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "" + Sum(liste);        
    }

    protected int Sum(int[] liste)
    {        
        int sum = 0;

        for (int i = 0; i < liste.Length; i++)
        {
            sum += liste[i];
        }

        return sum;
    }
}