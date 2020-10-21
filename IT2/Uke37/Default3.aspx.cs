using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    int tall1;
    int tall2;
    int svar1;
    int svar2;
    int poeng;



    protected void Page_Load(object sender, EventArgs e)
    {
        

        
    }

    public void Button1_Click(object sender, EventArgs e)
    {
         Random tallgen = new Random();  
                tall1 = tallgen.Next(0, 10);
                tall2 = tallgen.Next(0, 10);

         Label1.Text = tall1 + "X" + tall2;

         svar1 = tall1 * tall2;

         svar2 = Convert.ToInt32(TextBox1.Text);

        if (svar1 == svar2)
        {
            poeng = 1;
        }
        else
        {
            poeng = 0;
        }
                
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        

        if (poeng == 1)
        {
            Label2.Text = "Riktig";

        }
        else
        {
            Label2.Text = "Feil";
        }
    }
}