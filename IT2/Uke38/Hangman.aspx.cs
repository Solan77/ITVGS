using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hangman : System.Web.UI.Page
{
    static int poeng = 0;
    static int forsok = 5;

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {  
        Label8.Text = Convert.ToString(forsok);

        
        string bokstav = TextBox1.Text;
            

        if (bokstav == "P" || bokstav == "p")
        {
            Label1.Text = "P";
            Label7.Text = "Rikitg";
            poeng++;
            }
        else if (bokstav == "O" || bokstav == "o")
            {
                Label2.Text = "O";
                Label7.Text = "Rikitg";
                poeng++;
            }
        else if (bokstav == "R" || bokstav == "r")
            {
                Label3.Text = "R";
                Label7.Text = "Rikitg";
                poeng++;
            }
            else if (bokstav == "S" || bokstav == "s")
            {
                Label4.Text = "S";
                Label7.Text = "Rikitg";
                poeng++;
            }
            else if (bokstav == "C" || bokstav == "c")
            {
                Label5.Text = "C";
                Label7.Text = "Rikitg";
                poeng++;
            }
            else if (bokstav == "H" || bokstav == "h")
            {
                Label6.Text = "H";
                Label7.Text = "Rikitg";
                poeng++;
            }
            else if (bokstav == "E" || bokstav == "e")
            {
                Label10.Text = "E";
                Label7.Text = "Rikitg";
                poeng++;
            }
            else if (bokstav == "Porsche" || bokstav == "porsche" || bokstav == "PORSCHE")
            {
                Label1.Text = "P";
                Label2.Text = "O";
                Label3.Text = "R";
                Label4.Text = "S";
                Label5.Text = "C";
                Label6.Text = "H";
                Label10.Text = "E";
                Label7.Text = "Riktig";
                poeng = 7;
            }
            else
            {
                Label7.Text = "Wrong";
                Label11.Text = bokstav;
                forsok--;
            }

       /* if (forsok == 4)
        {
            Image1.Visible = true;
            
        }
        if (forsok == 3)
        {
            Image1.Visible = false;
            Image2.Visible = true;
        }
        if (forsok == 2)
        {
            Image2.Visible = false;
            Image3.Visible = true;
        }
        if (forsok == 1)
        {
            Image3.Visible = false;
            Image4.Visible = true;
        }
        if (forsok == 0)
        {
            Image4.Visible = false;
            Image5.Visible = true;
        }
        */
        if (poeng >= 7)
            {
                Label7.Text = "Alt riktig";
            Response.Redirect("hangman.aspx");
            }
                     
            if (forsok <= 0)
            {
                Response.Redirect("taper.html");
            }

            Label9.Text = "" + poeng;
            Label8.Text = "" + forsok;

        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Hangman.aspx");
    }
}