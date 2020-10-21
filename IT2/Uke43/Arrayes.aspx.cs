using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Arrayes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string[] byer = { "Askim", "Halden", "Fredrikstad", "Moss", "Ørje" };
        double[] askim = { 0, 62.3, 58.8, 44.6, 33.2 };
        double[] halden = { 62.2, 0, 37.9, 65.2, 60.1 };
        double[] fredrikstad = { 58.8, 37.9, 0, 40.5, 78.5 };
        double[] moss = { 44.6, 65.3, 40.5, 0, 77.6 };
        double[] orje = { 33.2, 60.1, 78.5, 77.6, 0 };

        //-1 = ingen by 0 = Askim, 1 = Halden, 2 = Fredrikstad, 3 = Moss, 4 = Ørje
        int start = Convert.ToInt32(DropDownList1.SelectedItem.Value);
        int slutt = Convert.ToInt32(DropDownList2.SelectedItem.Value);

        if (start == -1 || slutt == -1)
        {
            Label1.Text = "Prøv igjen din ku!!!";
        }
        else //valgt to byer 
        {
            if ( start == slutt)
            {
                Label1.Text = "To forskjellige byer din ku!!!";
            }
            else if (start == 0)
            {
                Label1.Text = "Avstanden mellom to byene: " + byer[start] + " og " + byer[slutt] + " er " + askim[slutt] + " km";
            }
            else if (start == 1)
            {
                Label1.Text = "Avstanden mellom to byene: " + byer[start] + " og " + byer[slutt] + " er " + halden[slutt] + " km";
            }
            else if (start == 2)
            {
                Label1.Text = "Avstanden mellom to byene: " + byer[start] + " og " + byer[slutt] + " er " + fredrikstad[slutt] + " km";
            }
            else if (start == 3)
            {
                Label1.Text = "Avstanden mellom to byene: " + byer[start] + " og " + byer[slutt] + " er " + moss[slutt] + " km";
            }
            else if (start == 4)
            {
                Label1.Text = "Avstanden mellom to byene: " + byer[start] + " og " + byer[slutt] + " er " + orje[slutt] + " km";
            }
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string[] byer = { "Askim", "Halden", "Fredrikstad", "Moss", "Ørje" };
        double[,] distanse = { { 0, 62.3, 58.8, 44.6, 33.2 }, { 62.2, 0, 37.9, 65.2, 60.1 }, { 58.8, 37.9, 0, 40.5, 78.5 }, { 44.6, 65.3, 40.5, 0, 77.6 }, { 33.2, 60.1, 78.5, 77.6, 0 } };

        int start = Convert.ToInt32(DropDownList1.SelectedItem.Value);

        int slutt = Convert.ToInt32(DropDownList2.SelectedItem.Value);

        if (start == -1 || slutt == -1)
        {
            Label1.Text = "Du må velge en by for at det skal gi mening";
        }
        else if (start == slutt)
        {
            Label1.Text = "Velg to forskjellige byer avstanden fra en by til den samme er alltid 0";
        }
        else
        {
            Label1.Text = "Avstanden mellom " + byer[start] + " og " + byer[slutt] + " er " + distanse[start, slutt] + " km";
        }
    }
}