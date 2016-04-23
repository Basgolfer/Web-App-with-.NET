using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Microsoft.AspNet.Identity;


public partial class UserHub : System.Web.UI.Page
{
    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!User.Identity.IsAuthenticated)
        {
            Response.Redirect("~/Default.aspx"); 
        }
        //Hide client dash if developer, vice versa for client.
        Session["UserID"] = HttpContext.Current.User.Identity.GetUserId();
        Session["viewOnly"] = false;
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection connection = new SqlConnection(cs);
        connection.Open();
        SqlCommand myCommand1 = new SqlCommand("SELECT [IsDeveloper] FROM [AspNetUsers] WHERE ([Id] = @Id)", connection);
        SqlParameter param = myCommand1.Parameters.AddWithValue("@Id", Session["UserID"]);
        byte isD = (byte)myCommand1.ExecuteScalar();
        connection.Close();
        if (isD == 1)
        {
            clientdash.Visible = false;
        }
        else
        {
            devdash.Visible = false;
        }
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
    }

    protected void Page_Prerender(object sender, EventArgs e)
    {
        Session["UserID"] = HttpContext.Current.User.Identity.GetUserId();
    }
}