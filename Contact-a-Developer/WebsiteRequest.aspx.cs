using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Microsoft.AspNet.Identity;

public partial class WebsiteRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack == true)
        {
 
        }

    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        //change to existing content
        if (RadioButton3.Checked == true)
        {
            RadioButton4.Checked = false;
        }
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        //Add new content
        if (RadioButton4.Checked == true)
        {
            RadioButton3.Checked = false;
        }
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void Radio1Button_CheckedChanged(object sender, EventArgs e)
    {
        //yes button
        if (RadioButton1.Checked == true)
        {
            RadioButton2.Checked = false;
        }
    }
    protected void Radio2Button_CheckedChanged(object sender, EventArgs e)
    {
        //no button
        if (RadioButton2.Checked == true)
        {
            RadioButton1.Checked = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        byte MobileFriendly;
        byte Animation;
        byte DynamicWebPages;
        if (CheckBox1.Checked == true)
        {
            MobileFriendly = 1;
        }
        else
        {
            MobileFriendly = 0;
        }
        if (CheckBox2.Checked == true)
        {
            Animation = 1;
        }
        else
        {
            Animation = 0;
        }
        if (CheckBox3.Checked == true)
        {
            DynamicWebPages = 1;
        }
        else
        {
            DynamicWebPages = 0;
        }


        
        
        

        if (!User.Identity.IsAuthenticated)
        {
            Response.Redirect("~/Default.aspx");
        }
        string clientID = HttpContext.Current.User.Identity.GetUserId();
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection connection = new SqlConnection(cs);
        connection.Open();
        SqlCommand myCommand1 = connection.CreateCommand();///
        myCommand1.CommandType = System.Data.CommandType.Text;

        myCommand1.CommandText ="INSERT INTO [WebRequest] (JobName, ClientID, Description, " 
            + "OtherWebsites, MobileFriendly, Anumation, DynamicWebPages) VALUES ('" + TextBox1.Text +
            "', '" + clientID + "', '" + TextBox5.Text + "', '" + TextBox2.Text + "', " + MobileFriendly + ", " + 
            Animation + ", " + DynamicWebPages + ")" ;
            int blah = myCommand1.ExecuteNonQuery();
            Button1.Text = "Success!";
            connection.Close();
            Response.Redirect("~/UserHub.aspx");
    }
}