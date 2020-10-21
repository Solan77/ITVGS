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

        if (DropDownList1.SelectedIndex == 0 && DropDownList2.SelectedIndex == 0 && DropDownList4.SelectedIndex == 0)
        {
            Label1.Text = "Indiot";
        }
        else
        {
            string arrang = DropDownList1.SelectedValue;
            int voksen = Convert.ToInt32(DropDownList2.SelectedValue);
            int barn = Convert.ToInt32(DropDownList4.SelectedValue);

            int sum = (100 * voksen) + (50 * barn);
            int antbill = voksen + barn;
            double rabbat = sum * 0.8;

            if (antbill >= 5)
            {

                Label1.Text = "Du har bestilt " + antbill + " billetter til " + arrang + ", " + voksen + " voksne og " + barn + " barn. Totalprisen er kr " + rabbat + ", inklusiv grupperabatt på 20 prosent.";
                
                if (voksen == 0 && barn == 0)
                {
                    Label1.Text = "Du har bestilt " + antbill + " billetter til " + arrang + ". Totalprisen er kr " + rabbat + ", inklusiv grupperabatt på 20 prosent.";
                }
            }
            else
            {

                Label1.Text = "Du har bestilt " + antbill + " billetter til " + arrang + ", " + voksen + " voksne og " + barn + " barn. Totalprisen er kr " + sum + ".";

                if (voksen == 1 && barn == 0)
                {
                    Label1.Text = "Du har bestilt " + antbill + " billetter til " + arrang + ". Totalprisen er kr " + sum + ".";
                }
            
                
            }
            


            
        }
       
    }
}