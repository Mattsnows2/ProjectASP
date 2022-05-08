    using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
using System.IO;
using System.Data;

public partial class Connected_CreateHouse2 : System.Web.UI.Page
{
    public bool displayMessage=false;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void browse(object sender, EventArgs e)
    {
      if(FileImageSave.PostedFile != null)
        {
            string imgFile = Path.GetFileName(FileImageSave.PostedFile.FileName);
            FileImageSave.SaveAs("\\images\\images\\Captures d’écran" + imgFile);
            string mainconn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();
            string sqlquery = "INSERT INTO houses_pictures (house_id, ImageName, ImagePath) VALUES (@houseID,@ImageName, @ImagePath)";
            SqlCommand sqlCmd = new SqlCommand(sqlquery, sqlconn);
            sqlCmd.Parameters.AddWithValue("@houseId", DropDownList1.SelectedValue);
            sqlCmd.Parameters.AddWithValue("@ImageName", imgFile);
            sqlCmd.Parameters.AddWithValue("@ImagePath", "../images/" + imgFile);
            sqlCmd.ExecuteNonQuery();
            sqlconn.Close();

        }
    }

    protected void createHouse(object sender, EventArgs e)
    {

        displayMessage = true;
        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(dbstring);
        string sqlStr = "INSERT INTO House_contraints (house_id, user_id) VALUES (@house_id, @user_id)";

        con.Open();
        SqlCommand sqlCmd = new SqlCommand(sqlStr, con);
        sqlCmd.Parameters.AddWithValue("@house_id", DropDownList1.SelectedValue);
        sqlCmd.Parameters.AddWithValue("@user_id", DropDownList2.SelectedValue);
        sqlCmd.ExecuteNonQuery();

        // Close the connection to the database
        con.Close();

       
        System.Threading.Thread.Sleep(3000);
        Response.Redirect("MyHouses.aspx");
        
    }


    protected void Unnamed1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Profil.aspx");
    }
}