using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Personinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    static List<string> Fnavn = new List<string>();
    static List<string> Enavn = new List<string>();
    static List<string> Kjonn = new List<string>();

    protected void btnKnapp_Click(object sender, EventArgs e)
    {
        string navn1 = txtFnavn.Text;
        string navn2 = txtEnavn.Text;
        string kjonn = ddlKjonn.SelectedItem.Text;

        Fnavn.Add(navn1);
        Enavn.Add(navn2);
        Kjonn.Add(kjonn);

        labUtskrift.Text = "Din påmelding <br> Fornavn: " + navn1 + "<br> Etternavn: " + navn2 + "<br> Kjønn: " + kjonn;

        
    }

}