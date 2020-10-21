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

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text == "") // Skjekker om tekstboksen er tom
        {
            Label1.Text = "<h1>Du må fylle inn i Teksteboksen</h1>";
        }
        else
        {
            int alder = Convert.ToInt32(TextBox1.Text);

            if (alder >= 18)
            {
                Label1.Text = "Du er myndig";
            }
            else if (alder < 0)
            {
                Label1.Text = "Du er dum";
            }
            else
            {
                Label1.Text = "Du er ikke myndig";
            }
        
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            Label2.Text = "Dust";
        }
        else
        {
            Label2.Text = "Riktig";
        }
    }
}