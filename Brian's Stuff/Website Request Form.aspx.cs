using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Website_Request_Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode =
      System.Web.UI.UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {

            ddlState.Items.Add("Select State");
            ddlState.Items.Add("Alabama");
            ddlState.Items.Add("Alaska");
            ddlState.Items.Add("Arizona");
            ddlState.Items.Add("Arkansas");
            ddlState.Items.Add("California");
            ddlState.Items.Add("Colorado");
            ddlState.Items.Add("Connecticut");
            ddlState.Items.Add("Delaware");
            ddlState.Items.Add("District of Columbia");
            ddlState.Items.Add("Florida");
            ddlState.Items.Add("Georgia");
            ddlState.Items.Add("Hawaii");
            ddlState.Items.Add("Idaho");
            ddlState.Items.Add("Illinois");
            ddlState.Items.Add("Indiana");
            ddlState.Items.Add("Iowa");
            ddlState.Items.Add("Kansas");
            ddlState.Items.Add("Kentucky");
            ddlState.Items.Add("Louisiana");
            ddlState.Items.Add("Maine");
            ddlState.Items.Add("Maryland");
            ddlState.Items.Add("Massachusetts");
            ddlState.Items.Add("Michigan");
            ddlState.Items.Add("Minnesota");
            ddlState.Items.Add("Mississippi");
            ddlState.Items.Add("Missouri");
            ddlState.Items.Add("Montana");
            ddlState.Items.Add("Nebraska");
            ddlState.Items.Add("Nevada");
            ddlState.Items.Add("New Hampshire");
            ddlState.Items.Add("New Jersey");
            ddlState.Items.Add("New Mexico");
            ddlState.Items.Add("New York");
            ddlState.Items.Add("North Carolina");
            ddlState.Items.Add("North Dakota");
            ddlState.Items.Add("Ohio");
            ddlState.Items.Add("Oklahoma");
            ddlState.Items.Add("Oregon");
            ddlState.Items.Add("Pennsylvania");
            ddlState.Items.Add("Rhode Island");
            ddlState.Items.Add("South Carolina");
            ddlState.Items.Add("South Dakota");
            ddlState.Items.Add("Tennessee");
            ddlState.Items.Add("Texas");
            ddlState.Items.Add("Utah");
            ddlState.Items.Add("Vermont");
            ddlState.Items.Add("Virginia");
            ddlState.Items.Add("Washington");
            ddlState.Items.Add("West Virginia");
            ddlState.Items.Add("Wisconsin");
            ddlState.Items.Add("Wyoming");
        }
    }

    protected void onSubmitButtonClick(object sender, EventArgs e)
    {
        if (ddlState.SelectedIndex == 0)
        {
            ddlStateRequired.Text = "You must choose a state.";
        }
        else
        {
            ddlStateRequired.Text = "";
        }

    }
}