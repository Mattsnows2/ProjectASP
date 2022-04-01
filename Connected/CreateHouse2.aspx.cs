using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Connected_CreateHouse2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    Bitmap imageClient;
    protected void browse(object sender, EventArgs e)
    {
          System.Windows.Forms.OpenFileDialog ofd = new System.Windows.Forms.OpenFileDialog();
          imageClient = (Bitmap)System.Drawing.Image.FromFile("C:\\Users\\matth\\Downloads\\&.jpg");
         /* if (ofd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
          {
              
           
          }*/
             ImageConverter converter = new ImageConverter();

          //  String  imagebyte= Convert.ToBase64String((byte[])converter.ConvertTo(imageClient, typeof(byte[])));
          byte[] imagebyte = (byte[])converter.ConvertTo(imageClient, typeof(byte[]));


                string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                  SqlConnection con = new SqlConnection(dbstring);
                  string sqlStr = "INSERT INTO houses_pictures (house_id, pictures) VALUES (@house_id, @pictures)";
                  con.Open();

                  SqlCommand sqlCmd = new SqlCommand(sqlStr, con);
                  sqlCmd.Parameters.AddWithValue("@house_id", 1);
                  sqlCmd.Parameters.AddWithValue("@pictures", imagebyte);
                  sqlCmd.ExecuteNonQuery();

                  // Close the connection to the database
                  con.Close();



    }

}