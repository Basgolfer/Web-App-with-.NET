using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubmissionStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void grdYourJobTable_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GoViewProfile(object sender, EventArgs e)
    {
        Session["devID"] = (sender as Button).CommandArgument;
        Response.Redirect("~/ViewDevProfile.aspx");
    }
}