using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
        Response.Redirect("Fisker.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource2.Insert();
        Response.Redirect("Fisker.aspx");
    }
}