using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Connected_MyHouses : System.Web.UI.Page
{
    public bool showDetails;
    public bool displayHouse=false;
    protected void Page_Load(object sender, EventArgs e)
    {
     Session["userName"]=User.Identity.Name;
    
        if (GridView1.Rows.Count == 0)
        {
            displayHouse = true;
        }
    }

    public int index;
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        index = Convert.ToInt32(GridView1.SelectedDataKey.Value);
        DeleteHouse(sender, e);

    }

    protected void ViewHouse(object sender, EventArgs e)
    {
        showDetails = true;
    }

    protected void DeleteHouse(object sender, EventArgs e)
    {
        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        // Creates a connection to our database
        SqlConnection con = new SqlConnection(dbstring);

        // The SQL statement to insert a booking. By using prepared statements,
        // we automatically get some protection against SQL injection.
        string sqlStr2 = "DELETE FROM House_contraints WHERE house_id=@houseId";
        string sqlStr3 = "DELETE FROM houses_pictures WHERE house_id = @houseId2";
        string sqlStr = "DELETE FROM houses WHERE id=@houseId3";
        
        // Open the database connection
        con.Open();

        SqlCommand sqlCmd2 = new SqlCommand(sqlStr2, con);
        sqlCmd2.Parameters.Add("@houseId", SqlDbType.Int);
        sqlCmd2.Parameters["@houseId"].Value = index;
        sqlCmd2.ExecuteNonQuery();

        SqlCommand sqlCmd3 = new SqlCommand(sqlStr3, con);
        sqlCmd3.Parameters.Add("@houseId2", SqlDbType.Int);
        sqlCmd3.Parameters["@houseId2"].Value = index;
        sqlCmd3.ExecuteNonQuery();

        SqlCommand sqlCmd = new SqlCommand(sqlStr, con);
        sqlCmd.Parameters.Add("@User", SqlDbType.NVarChar);
        sqlCmd.Parameters["@User"].Value = User.Identity.Name;
        sqlCmd.Parameters.Add("@houseId3", SqlDbType.Int);
        sqlCmd.Parameters["@houseId3"].Value = index;

        // Execute the SQL command
        
        
        sqlCmd.ExecuteNonQuery();

        // Close the connection to the database
        con.Close();

        // Response.Redirect("~/Connected/HomeConnected.aspx");
    }
}