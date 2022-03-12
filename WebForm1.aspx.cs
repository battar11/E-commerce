using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication60000
{
    
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\USER\source\repos\WebApplication60000\WebApplication60000\App_Data\Database1.mdf; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Insert into Customer values('" + TxtUser.Text + "','" + TxtFname.Text + "','" + TxtLname.Text + "','" + TxtEmail.Text + "','" + TxtPassword.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Resgistered successfully";
            }
        }
    }
}