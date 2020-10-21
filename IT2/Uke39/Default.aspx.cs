using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lab1.Text = "";
    }

    static int sum = 0;

    protected void btnKanpp_Click(object sender, EventArgs e)
    {
        Random r = new Random();

        

        for (int i = 1; i <= 10; i++)
        {
            int tall = r.Next(0, 100);
            sum += tall;
            lab1.Text += "<br>" + tall;
        }

        lab1.Text += "<br>------------------------";
        //lab1.Text += "<br> Summen ble: " + sum;

        txtBox.Visible = true;
        btnKnapp2.Visible = true;
    }

    protected void btnKnapp2_Click(object sender, EventArgs e)
    {
        int gjett = Convert.ToInt32(txtBox.Text);

        if (gjett == sum)
        {
            lab1.Text = "Gratulerer du gjettet rikitg!";
        }
        else
        {
            lab1.Text = "Gratulerer du har feil svar!";
        }
    }
}