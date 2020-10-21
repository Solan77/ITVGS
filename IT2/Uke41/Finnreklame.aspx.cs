using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finnreklame : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownList2.Visible = false;
        DropDownList3.Visible = false;
        DropDownList4.Visible = false;
        DropDownList5.Visible = false;
        Label2.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Button1.Visible = false;
        Label3.Text = "";
        Image1.Visible = false;

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string svar = DropDownList1.SelectedItem.Text;

        if (svar == "Ja")
        {
            DropDownList2.Visible = true;
            Label2.Visible = true;
        }
        else if (svar == "Nei")
        {
            Label3.Text = "Ikke kjøp det";
        }
        else
        {
            Label3.Text = "Du må fulle ut alle feltene";
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string svar = DropDownList2.SelectedItem.Text;

        if (svar == "Ja")
        {
            DropDownList3.Visible = true;
            Label4.Visible = true;
        }
        else if (svar == "Njaa")
        {
            Label3.Text = "Ikke kjøp det";
        }
        else
        {
            Label3.Text = "Du må fulle ut alle feltene";
        }
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string svar = DropDownList3.SelectedItem.Text;

        if (svar == "Ja")
        {
            Image1.Visible = true;
        }
        else if (svar == "Nei")
        {
            DropDownList4.Visible = true;
            Label5.Visible = true;
        }
        else
        {
            Label3.Text = "Du må fulle ut alle feltene";
        }
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        string svar = DropDownList4.SelectedItem.Text;

        if  (svar == "Ja")
        {
            DropDownList5.Visible = true;
            Label7.Visible = true;
        }
        else if (svar == "Nei")
        {
            Label6.Visible = true;
            Button1.Visible = true;
        }
        else
        {
            Label3.Text = "Du må fulle ut alle feltene";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DropDownList4.Visible = true;
        Label5.Visible = true;
    }


    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        string svar = DropDownList5.SelectedItem.Text;

        if (svar == "Ja")
        {
            Image1.Visible = true;
        }
        else
        {
            Label3.Text = "Du må fulle ut alle feltene";
        }

    }
}