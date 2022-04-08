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
        string sqlStr = "INSERT INTO houses (address, description, exchange_date, housing_type, house_type, user_id, booked_by) VALUES (@address, @description, @exchangeDate, @housingType,@HouseType, @userId, @bookedBy)";

        // Open the database connection
        con.Open();

        SqlCommand sqlCmd = new SqlCommand(sqlStr, con);
        sqlCmd.Parameters.AddWithValue("@address", TextBox1.Text);
        sqlCmd.Parameters.AddWithValue("@description", TextBox3.Text);
      
        sqlCmd.Parameters.AddWithValue("@exchangeDate", DBNull.Value);
        sqlCmd.Parameters.AddWithValue("@housingType", DBNull.Value);
        sqlCmd.Parameters.AddWithValue("@HouseType", houseTypeDropDownList.SelectedValue);
        sqlCmd.Parameters.AddWithValue("@userId", DropDownList1.SelectedValue);
        sqlCmd.Parameters.AddWithValue("@bookedBy", User.Identity.Name);




        // Execute the SQL command
        sqlCmd.ExecuteNonQuery();
        string lastId = "SELECT Id from houses WHERE Id = (select max(Id) from houses)";
        SqlCommand sqlCmd2 = new SqlCommand(lastId, con);
      
        sqlCmd2.ExecuteNonQuery();

        // Close the connection to the database
        con.Close();

        // Show the user that the booking has been added

        Response.Redirect("CreateHouse2.aspx");
     
    }

 
}