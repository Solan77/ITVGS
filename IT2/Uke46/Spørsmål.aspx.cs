using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Spørsmål : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        int s1 = rbl1.SelectedIndex;
        int s2 = rbl2.SelectedIndex;

        int sum = 0;

        if (rbl1.Text == "" || rbl2.Text == "")
        {
            sum-= 2;
        }
        else
        {
            if (s1 == 2)
            {
                sum++;
            }
            else if (s1 != 2)
            {
                sum--;
            }

            if (s2 == 2)
            {
                sum++;
            }
            else if (s2 != 2)
            {
                sum--;
            }            
        }
        Label1.Text = "Poeng: " + sum;        
    }
}