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
        //DO THE READ ONLY STATES HERE!!!!!!!!!!!!!!!!!!!

        
        Overview.ReadOnly = Certifications.ReadOnly = PrevSites.ReadOnly = false;
        




        string DevID = HttpContext.Current.User.Identity.GetUserId();
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        if (!IsPostBack) {
            SqlConnection connection;

            connection = new SqlConnection(cs);

            connection.Open();
            SqlCommand myCommand1 = connection.CreateCommand();
            myCommand1.CommandType = System.Data.CommandType.Text;
            myCommand1.CommandText = "SELECT * FROM [DeveloperProfile] WHERE DevID = '" + DevID + "'";

            SqlDataReader x = myCommand1.ExecuteReader();

            string resume = "";
            string overview = "";
            string certification = "";
            string preview = "";


            while (x.Read())
            {
                resume = x.GetString(1);
                overview = x.GetString(2);
                certification = x.GetString(3);
                preview = x.GetString(4);
            }

            Overview.Text = overview;
            Certifications.Text = certification;
            PrevSites.Text = preview;
            x.Close();
            connection.Close();

        }



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
        connection.Close();
        Response.Redirect("~/UserHub.aspx");
    }


    protected void button2_click(object sender, EventArgs e)
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
        connection.Close();
        Session["devID"] = DevID;

        Response.Redirect("~/ViewDevProfile.aspx");

    }
}