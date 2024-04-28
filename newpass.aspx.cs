using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace project
{
    public partial class newpass : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~/App_Data")); 
            con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["tiger"].ConnectionString);
            Response.Write("connected");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String Sql = "update UserDetails set password ='" + TextBox2.Text + "' where usernumber = " + TextBox1.Text;
            SqlCommand cmd = new SqlCommand(Sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("login.aspx");
        }



    }
    }
