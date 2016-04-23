using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewReview : System.Web.UI.Page

  
{

    static int rating = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Session["UserID"].ToString()) == (Session["devID"].ToString()))
                {
                    Response.Redirect("~/PastReviews.aspx");
                }
    }

    protected void btnRatingSubmit_Click(object sender, EventArgs e)
    {
        string clientID = HttpContext.Current.User.Identity.GetUserId();
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection connection = new SqlConnection(cs);
        connection.Open();
        SqlCommand myCommand1 = connection.CreateCommand();///
        myCommand1.CommandType = System.Data.CommandType.Text;

        myCommand1.CommandText = "INSERT INTO [Ratings] (DevID, Rating, Feedback, "
            + "CustomerID) VALUES (@devid, @rating, @feedback, @customerid)";
        myCommand1.Parameters.AddWithValue("@devid", Session["devID"].ToString());
        myCommand1.Parameters.AddWithValue("@rating", NewReview.rating);
        myCommand1.Parameters.AddWithValue("@feedback", txtReview.Text);
        myCommand1.Parameters.AddWithValue("@customerid", Session["UserID"].ToString());
        int blah = myCommand1.ExecuteNonQuery();
        btnRatingSubmit.Text = "There were " + blah + "rows effected";
        connection.Close();
        Response.Redirect("~/PastReviews.aspx");
    }

    protected void lstRating_SelectedIndexChanged(object sender, EventArgs e)
    {
        NewReview.rating = lstRating.SelectedIndex + 1;
    }
}