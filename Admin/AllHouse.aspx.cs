using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AllHouse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public int index;
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        index = Convert.ToInt32(GridView1.SelectedDataKey.Value);
        DeleteHouse(sender, e);

    }

    protected void DeleteHouse(object sender, EventArgs e)
    {
        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        // Creates a connection to our database
        SqlConnection con = new SqlConnection(dbstring);

        // The SQL statement to insert a booking. By using prepared statements,
        // we automatically get some protection against SQL injection.
        string sqlStr = "DELETE FROM houses WHERE id=@houseId";



        // Open the database connection
        con.Open();

        SqlCommand sqlCmd = new SqlCommand(sqlStr, con);
       
        sqlCmd.Parameters.Add("@houseId", SqlDbType.Int);
        sqlCmd.Parameters["@houseId"].Value = index;











        // Execute the SQL command
        sqlCmd.ExecuteNonQuery();





        // Close the connection to the database
        con.Close();
    }
}