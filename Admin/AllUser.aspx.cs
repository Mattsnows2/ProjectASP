using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AllUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public int index;
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        index = Convert.ToInt32(GridView1.SelectedDataKey.Value);
        DeleteUser(sender, e);

    }

    protected void DeleteUser(object sender, EventArgs e)
    {
        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        // Creates a connection to our database
        SqlConnection con = new SqlConnection(dbstring);

        // The SQL statement to insert a booking. By using prepared statements,
        // we automatically get some protection against SQL injection.
        string sqlStr = "DELETE FROM [User] WHERE id=@userId";



        // Open the database connection
        con.Open();

        SqlCommand sqlCmd = new SqlCommand(sqlStr, con);

        sqlCmd.Parameters.Add("@userId", SqlDbType.Int);
        sqlCmd.Parameters["@userId"].Value = index;











        // Execute the SQL command
        sqlCmd.ExecuteNonQuery();





        // Close the connection to the database
        con.Close();
    }
}