using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Arrays : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";

        
        int[] poengArray = { 4, 73, 56, 13, 24 };

        //HVordan skrive ut alle verdiene i en array

        for ( int i = 0; i < poengArray.Length; i++)
        {
            if (poengArray[i] > 50)
            {
                Label1.Text += poengArray[i] + "<br>";
            }

            
        }
    }
}