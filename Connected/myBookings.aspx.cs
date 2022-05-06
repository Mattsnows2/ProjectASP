using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class myBookings : System.Web.UI.Page
{
    public int index;
    public bool displayMessageDeleteBooking;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["userName"]=User.Identity.Name; 
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        index = Convert.ToInt32(GridView1.SelectedDataKey.Value);
        DeleteBooking(sender, e);

    }
        protected void DeleteBooking(object sender,  EventArgs e)
    {
        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        // Creates a connection to our database
        SqlConnection con = new SqlConnection(dbstring);

        // The SQL statement to insert a booking. By using prepared statements,
        // we automatically get some protection against SQL injection.
        string sqlStr = "UPDATE houses SET booked_by = @User WHERE Id = @houseId ";
    
        // Open the database connection
        con.Open();

        SqlCommand sqlCmd = new SqlCommand(sqlStr, con);
        sqlCmd.Parameters.Add("@User", SqlDbType.NVarChar);
        sqlCmd.Parameters["@User"].Value = DBNull.Value;
        sqlCmd.Parameters.Add("@houseId", SqlDbType.Int);
        sqlCmd.Parameters["@houseId"].Value = index;

        // Execute the SQL command
        sqlCmd.ExecuteNonQuery();

        // Close the connection to the database
        con.Close();
        displayMessageDeleteBooking = true;
        Response.AppendHeader("Refresh", "3;url=myBookings.aspx");

    }
}