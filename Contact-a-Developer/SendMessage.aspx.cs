using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SendMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (!User.Identity.IsAuthenticated)
        {
            Response.Redirect("~/Default.aspx");
        }
        string clientID = HttpContext.Current.User.Identity.GetUserId();
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection connection = new SqlConnection(cs);
        connection.Open();


        SqlCommand myCommand2 = connection.CreateCommand();///
        myCommand2.CommandType = System.Data.CommandType.Text;

        myCommand2.CommandText = "select Id from AspNetUsers where Email = @email";
        myCommand2.Parameters.AddWithValue("@email", TextBox1.Text);

        String RecUID = (String)myCommand2.ExecuteScalar();



        SqlCommand myCommand1 = connection.CreateCommand();///
        myCommand1.CommandType = System.Data.CommandType.Text;

        myCommand1.CommandText = "INSERT INTO [Messages] (Recipient, Sender, Time, "
            + "Title, Message, IsRead) VALUES (@recipient, @sender, @time, @title, @message, @isread)";
        myCommand1.Parameters.AddWithValue("@recipient", RecUID );
        myCommand1.Parameters.AddWithValue("@sender", Session["UserID"].ToString());
        myCommand1.Parameters.AddWithValue("@time", DateTime.Now );
        myCommand1.Parameters.AddWithValue("@title", TextBox3.Text);
        myCommand1.Parameters.AddWithValue("@message", TextBox4.Text);
        myCommand1.Parameters.AddWithValue("@isread", (byte)0);
        int blah = myCommand1.ExecuteNonQuery();
        Button1.Text = "Success!";
        connection.Close();
        Response.Redirect("~/UserHub.aspx");


    
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}