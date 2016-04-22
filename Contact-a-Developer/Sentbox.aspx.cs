using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sentbox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((User.Identity.IsAuthenticated) == false)
        {
            Response.Redirect("~/Default.aspx");
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}