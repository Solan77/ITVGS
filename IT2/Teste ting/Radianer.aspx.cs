using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Radianer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        double r = Convert.ToDouble(TextBox1.Text);
        int t = Convert.ToInt32(DropDownList1.SelectedItem.Value);

        if (t == 0)
        {
            double radian = Math.Round(r / 180 * Math.PI, 2);

            Label1.Text = radian + "";
        }
        else
        {
            double grader = Math.Round(r * 180 / Math.PI, 2);

            Label1.Text = grader + " grader";
        }
    }
}