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
        //DO THE READ ONLY STATES HERE!!!!!!!!!!!!!!!!!!!


        Overview.ReadOnly = Certifications.ReadOnly = PrevSites.ReadOnly = true;




        String DevID = (String) Session["devID"];
//        string DevID = HttpContext.Current.User.Identity.GetUserId();//NEED TODO
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        if (!IsPostBack)
        {
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
}