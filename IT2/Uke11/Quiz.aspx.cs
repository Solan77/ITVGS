using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Quiz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int poeng = 0;

        if (RadioButtonList1.Text == "")
        {
            Label1.Text = "FYLL UT ALT DIN IDIOT!!";
        }
        else
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                poeng++;
            }
            else
            {
                poeng--;
            }

            foreach (ListItem lst in CheckBoxList1.Items)
            {
                if (lst.Selected == true)
                {
                    poeng += Convert.ToInt32(lst.Value);
                }
            }

            if (RadioButtonList1.SelectedIndex == 2)
            {
                poeng++;
            }
            else
            {
                poeng--;
            }

            Label1.Text = poeng + " / 4";

            if (poeng == 4)
            {
                Label1.Text += "<br> Du kan språkate godt";
            }
            else if (poeng <= 0)
            {
                Label1.Text += "<br> Avisen tilbyr språkkurs i New York";
            }
            else
            {
                Label1.Text += "<br> Dette gikk ikke så bra.";
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string lyd1 = MapPath(".") + "\\Sequence 01.wav";
        System.Media.SoundPlayer lyd = new System.Media.SoundPlayer(lyd1);
        lyd.Play();
    }
}