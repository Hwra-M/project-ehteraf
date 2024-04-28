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
    public partial class job : System.Web.UI.Page
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
            con.Open();
            String Sql = "insert into jobapp values ('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox9.Text + "' , '"
                + DropDownList4.SelectedItem +"' , '"+ TextBox6.Text +"' , '" + TextBox10.Text + "' , " +
                TextBox3.Text + ", '" + TextBox4.Text +"', '" + TextBox5.Text + "' , '" + TextBox8.Text + "' )";
            SqlCommand cmd = new SqlCommand(Sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Record inserted");
        }
    }
}