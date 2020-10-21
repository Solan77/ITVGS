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

    protected void btn1_Click(object sender, EventArgs e)
    {
        if ( txt1.Text == "")
        {

        }
        else
        {
            int alder = Convert.ToInt32(txt1.Text);
            int dager = Convert.ToInt32(ddl1.SelectedIndex);
            int sum = 0;
            int diff = 0;

            if ( alder <= 12)
            {
                sum = 100 * dager;

                if ( sum > 500)
                {
                    diff = sum - 500;
                    sum = 500;
                }
            }
            else
            {
                sum = 200 * dager;

                if (sum > 1000)
                {
                    diff = sum - 1000;
                    sum = 1000;
                }
            }

            if (diff > 0)
            {
                lab1.Text = "Din pris for heiskort er: " + sum + " kr <br> Du fikk en rabatt på: " + diff + " kr";
            }
            else
            {
                lab1.Text = "Din pris for heiskort er: " + sum + " kr";
            }
        }



    }
}