using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication60000
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\USER\source\repos\WebApplication60000\WebApplication60000\App_Data\Database1.mdf;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Customer where userN='" + UserLogin.Text + "'and Pass='" + EntPassword.Text + "'",con);
            DataSet dt = new DataSet();
            sda.Fill(dt, "Customer");
            
            if (dt.Tables[0].Rows.Count> 0)
            {
                Label1.Text = "Login Successfull!";
                Label1.ForeColor = System.Drawing.Color.Green;
                Session["userN"] = UserLogin.Text;
                Response.Redirect("WebForm2.aspx");
               
            }
            
            else
            {
                Label1.Text = "Login Unsuccessfull!";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            
        
        }
    }
}