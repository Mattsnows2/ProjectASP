using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;


public partial class Connected_CreateHouse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
            
        Session["userName"] = User.Identity.Name;
        resultLabel.Text = "House created" + Session["userName"];
    }

    protected void BookingButton_Click(object sender, EventArgs e)
    {

        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        // Creates a connection to our database
        SqlConnection con = new SqlConnection(dbstring);

        // The SQL statement to insert a booking. By using prepared statements,
        // we automatically get some protection against SQL injection.
        string sqlStr = "INSERT INTO houses (address, description, exchange_date, housing_type, house_type, location) VALUES (@address, @description, @exchangeDate, @housingType,@HouseType, @locations)";

        // Open the database connection
        con.Open();

        SqlCommand sqlCmd = new SqlCommand(sqlStr, con);
        sqlCmd.Parameters.AddWithValue("@address", TextBox1.Text);
        sqlCmd.Parameters.AddWithValue("@description", TextBox3.Text);
      
        sqlCmd.Parameters.AddWithValue("@exchangeDate", DBNull.Value);
        sqlCmd.Parameters.AddWithValue("@housingType", DBNull.Value);
        sqlCmd.Parameters.AddWithValue("@HouseType", TextBox2.Text);
        sqlCmd.Parameters.AddWithValue("@locations", DBNull.Value);


        

        // Execute the SQL command
        sqlCmd.ExecuteNonQuery();

        // Close the connection to the database
        con.Close();

        // Show the user that the booking has been added
  

    }

 
}