using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hotell : System.Web.UI.Page
{

    int[,] temp = { { -5, -8, -10, -9, -12 }, { -3, -5, -8, -7, -10 }, { -2, -5, -8, -5, -9 }, { 0, -3, -5, -5, -9 }, { 2, -3, -5, -2, -7 }, { 3, -3, -4, 0, -7 } };

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < temp.GetLength(0); i++)
        {
            for (int j = 0; j < temp.GetLength(1); j++)
            {
                Label1.Text += "<br>" + temp[i, j];
            }
        }
        
    }
}