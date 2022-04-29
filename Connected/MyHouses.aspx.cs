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
    protected void Page_Load(object sender, EventArgs e)
    {
     Session["userName"]=User.Identity.Name;
       
      


    }

    public string MyHouses (bool active)
    {
        return active ? "Yes" : "No";
    }

    protected void editHouse(object sender, EventArgs e)
    {
        Response.Write("j'ai cliqué");
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
        string sqlStr = "DELETE FROM houses WHERE id=@houseId";



        // Open the database connection
        con.Open();

        SqlCommand sqlCmd = new SqlCommand(sqlStr, con);
        sqlCmd.Parameters.Add("@User", SqlDbType.NVarChar);
        sqlCmd.Parameters["@User"].Value = User.Identity.Name;
        sqlCmd.Parameters.Add("@houseId", SqlDbType.Int);
        sqlCmd.Parameters["@houseId"].Value = index;











        // Execute the SQL command
        sqlCmd.ExecuteNonQuery();





        // Close the connection to the database
        con.Close();
    }
}