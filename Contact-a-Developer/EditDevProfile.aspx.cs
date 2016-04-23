using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditDevProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string DevID = HttpContext.Current.User.Identity.GetUserId();
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection connection = new SqlConnection(cs);
        connection.Open();
        SqlCommand myCommand1 = connection.CreateCommand();
        myCommand1.CommandType = System.Data.CommandType.Text;
        myCommand1.CommandText = "DELETE FROM [DeveloperProfile] WHERE DevID = '" + DevID + "'";
        SqlCommand myCommand2 = connection.CreateCommand();
        myCommand2.CommandType = System.Data.CommandType.Text;

        myCommand2.CommandText = "INSERT INTO [DeveloperProfile] VALUES ('" + DevID + "', 'Resume Placeholder', @overview, @certifications, @previoussites)";
        myCommand2.Parameters.AddWithValue("@overview", Overview.Text);
        myCommand2.Parameters.AddWithValue("@certifications", Certifications.Text);
        myCommand2.Parameters.AddWithValue("@previoussites", PrevSites.Text);
        int blah = myCommand1.ExecuteNonQuery();
        int foo = myCommand2.ExecuteNonQuery();
        Button1.Text = "Profile updated.";
        connection.Close();
        Response.Redirect("~/UserHub.aspx");
    }
}