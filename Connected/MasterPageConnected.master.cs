using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Connected_MasterPageConnected : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void redirectBooking(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("myBookings.aspx");
    }

    protected void redirectHouse(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("MyHouses.aspx");
    }

    protected void redirectDashboard(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("HomeConnected.aspx");
    }
}
