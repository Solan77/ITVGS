using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Torsdag : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int t1 = Convert.ToInt32(TextBox1.Text);
        int t2 = Convert.ToInt32(TextBox2.Text);

        int svar = MinVerdi(t1, t2);

        Label1.Text = svar + "";

    }

    protected int MinVerdi (int tallA, int tallB)
    {
        if (tallA < tallB)
        {
            return tallA;
        }
        else
        {
            return tallB;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int[] tallArray = { -1, 0, 2, 3, 4, -1, 2, -3 };

        int svar = Negtall(tallArray);

        Label1.Text = svar + "";
    }

    protected int Negtall (int[]arr)
    {
        int l = 0;
        for (int i = 0; i < arr.Length; i++)
        {
            if (arr[i] < 0)
            {
                l++;
            }
        }
        return l;
    }
}