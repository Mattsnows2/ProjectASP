using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    public bool displayMessage;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Test()
    {
        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(dbstring);
        string sqlStr = "INSERT INTO [User] (userName, password, email) VALUES (@userName, @password, @email)";

        con.Open();
        SqlCommand sqlCmd = new SqlCommand(sqlStr, con);

        sqlCmd.Parameters.AddWithValue("@userName", CreateUserWizard1.UserName);
        sqlCmd.Parameters.AddWithValue("@password", CreateUserWizard1.Password);
        sqlCmd.Parameters.AddWithValue("@email", CreateUserWizard1.Email);

        sqlCmd.ExecuteNonQuery();

        // Close the connection to the database
        con.Close();
        displayMessage = true;

        Response.AppendHeader("Refresh", "3;url=HomePage.aspx");
    }





   

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {

        Test();
        
    }
}