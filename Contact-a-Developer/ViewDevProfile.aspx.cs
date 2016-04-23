using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

public partial class ViewDevProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        String DevID = (String) Session["devID"];
//        string DevID = HttpContext.Current.User.Identity.GetUserId();//NEED TODO

        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        SqlConnection connection;

        connection = new SqlConnection(cs);

        connection.Open();
        SqlCommand myCommand1 = connection.CreateCommand();
        myCommand1.CommandType = System.Data.CommandType.Text;
        myCommand1.CommandText = "SELECT Email FROM [AspNetUsers] WHERE Id = '" + DevID + "'";

        String x = (String) myCommand1.ExecuteScalar();




        EmailLabel.Text = x;

        
        connection.Close();







        Overview.ReadOnly = Certifications.ReadOnly = PrevSites.ReadOnly = true;





        if (!IsPostBack)
        {

            connection = new SqlConnection(cs);

            connection.Open();
             myCommand1 = connection.CreateCommand();
            myCommand1.CommandType = System.Data.CommandType.Text;
            myCommand1.CommandText = "SELECT * FROM [DeveloperProfile] WHERE DevID = '" + DevID + "'";

            SqlDataReader Reader = myCommand1.ExecuteReader();

            string resume = "";
            string overview = "";
            string certification = "";
            string preview = "";


            while (Reader.Read())
            {
                resume = Reader.GetString(1);
                overview = Reader.GetString(2);
                certification = Reader.GetString(3);
                preview = Reader.GetString(4);
            }

            Overview.Text = overview;
            Certifications.Text = certification;
            PrevSites.Text = preview;
            Reader.Close();
            connection.Close();

        }
    }
}