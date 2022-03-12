using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication60000
{
    public partial class DetailsPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\USER\source\repos\WebApplication60000\WebApplication60000\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select *from product where productId=@bid", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            cmd.Parameters.AddWithValue("@bid", Page.Request.QueryString["ProductId"].ToString());
            con.Open();
            adp.Fill(ds, "Product");
            cmd.ExecuteNonQuery();
            con.Close();
            FormView1.DataSource = ds;
            FormView1.DataBind();
        }

       
    }
}