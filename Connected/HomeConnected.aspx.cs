using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Windows.Forms;

public partial class Connected_HomeConnected : System.Web.UI.Page
{
    public int index;
    public bool chooseDate;
    protected void Page_Load(object sender, EventArgs e)
    {

        Session["userName"] = User.Identity.Name;
      


    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
       index = Convert.ToInt32(GridView1.SelectedDataKey.Value);
        bookHouse(sender, e);
    }

    protected void bookHouse(object sender, EventArgs e)
    {


        Response.Write(index);
        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        // Creates a connection to our database
        SqlConnection con = new SqlConnection(dbstring);

        // The SQL statement to insert a booking. By using prepared statements,
        // we automatically get some protection against SQL injection.
        string sqlStr = "UPDATE houses SET booked_by = @User WHERE Id = @houseId";
      
       

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

        chooseDate = true;
    }

    protected void ViewHouse(object sender, EventArgs e)
    {

    }
    public DateTime theDate;
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        string bookingDateStr = bookingDate.Text;
        bookingDate.Text = Calendar1.SelectedDate.ToShortDateString();

        bookingDateStr = Calendar1.SelectedDate.ToShortDateString();
     
        string[] splitBookingDate = bookingDateStr.Split(new char[] { '-', '/' });
     
        DateTime theDate = new DateTime(Convert.ToInt32(splitBookingDate[2]), Convert.ToInt32(splitBookingDate[1]), Convert.ToInt32(splitBookingDate[0]));


        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(dbstring);

        // The SQL statement to insert a booking. By using prepared statements,
        // we automatically get some protection against SQL injection.

        string sqlStr2 = "INSERT INTO Bookings (asker_user,offer_houser,end_date,start_date) VALUES (@asker, @Owner, @endDate, @StartDate)";


        // Open the database connection
        con.Open();



        SqlCommand sqlCmd2 = new SqlCommand(@sqlStr2, con);

        sqlCmd2.Parameters.AddWithValue("@asker", User.Identity.Name);
        sqlCmd2.Parameters.AddWithValue("@Owner", houseTypeDropDownList.SelectedValue);

        sqlCmd2.Parameters.AddWithValue("@endDate", DBNull.Value);
        sqlCmd2.Parameters.AddWithValue("@StartDate", theDate);







        // Execute the SQL command

        sqlCmd2.ExecuteNonQuery();




        // Close the connection to the database
        con.Close();





    }
   
   
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        string bookingDateStr2 = bookingDate2.Text;
        bookingDate2.Text = Calendar2.SelectedDate.ToShortDateString();
        bookingDateStr2 = Calendar2.SelectedDate.ToShortDateString();
        string[] splitBookingDate2 = bookingDateStr2.Split(new char[] { '-', '/' });
        DateTime theDate2 = new DateTime(Convert.ToInt32(splitBookingDate2[2]), Convert.ToInt32(splitBookingDate2[1]), Convert.ToInt32(splitBookingDate2[0]));

        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(dbstring);

        // The SQL statement to insert a booking. By using prepared statements,
        // we automatically get some protection against SQL injection.

        string sqlStr3 = "UPDATE  Bookings SET end_date=@endDate WHERE Id = (select max(Id) from Bookings)";

       
       

        // Open the database connection
        con.Open();



        SqlCommand sqlCmd3 = new SqlCommand(@sqlStr3, con);
        sqlCmd3.Parameters.Add("@endDate", SqlDbType.Date);
        sqlCmd3.Parameters["@endDate"].Value = theDate2;

        









        // Execute the SQL command

        sqlCmd3.ExecuteNonQuery();

        string sqlStr4 = "UPDATE houses SET exchange_date = @exchangeDate WHERE id = @houseId";

        SqlCommand sqlCmd4 = new SqlCommand(@sqlStr4, con);
        sqlCmd4.Parameters.Add("@houseId", SqlDbType.Int);
        sqlCmd4.Parameters["@houseId"].Value = index;
        sqlCmd4.Parameters.Add("@exchangeDate", SqlDbType.NVarChar);
        sqlCmd4.Parameters["@exchangeDate"].Value = "yo";
        sqlCmd4.ExecuteNonQuery();




        // Close the connection to the database
        con.Close();


    }






      
}