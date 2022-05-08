using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    public bool displayMessage;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // I create a DropDownList object representing the DropDownList in my page.
            // Since I converted the CreateUserWizard to a template the DropDownList is hidden inside the ContentTemplateContainer tag
            DropDownList theRoles = (DropDownList)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("RoleList");

            // I set the data source of the DropDownList to a list of all defined roles in the database, by
            // using the static Roles class
            theRoles.DataSource = Roles.GetAllRoles();

            // Bind the DropDownList object and its datasource to the actual DropDownList in my page
            theRoles.DataBind();

            // Run through the list of roles. If a "Student" role exist, then make that the start value in the DropDownList. 
            // If someone forgets to change the role it's better to create too many students than admins.
            for (int i = 0; i < theRoles.Items.Count; i++)
            {
                if ((theRoles.Items[i].Value).Equals("User"))
                {
                    theRoles.SelectedIndex = i;
                }
            }

        }
    }
    protected void Test()
    {
        /*  string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
          SqlConnection con = new SqlConnection(dbstring);
          string sqlStr = "INSERT INTO [User] (userName, password, email) VALUES (@userName, @password, @email)";

          con.Open();
          SqlCommand sqlCmd = new SqlCommand(sqlStr, con);

          sqlCmd.Parameters.AddWithValue("@userName", CreateUserWizard1.UserName);
          sqlCmd.Parameters.AddWithValue("@password", CreateUserWizard1.Password);
          sqlCmd.Parameters.AddWithValue("@email", CreateUserWizard1.Email);

          sqlCmd.ExecuteNonQuery();

          // Close the connection to the database
          con.Close();
          displayMessage = true;*/
      

        Response.AppendHeader("Refresh", "3;url=HomePage.aspx");
    }





   

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {

        Test();
        Roles.AddUserToRole(CreateUserWizard1.UserName, ((DropDownList)(CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("RoleList"))).SelectedValue);

    }
}