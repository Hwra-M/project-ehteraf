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
    public partial class manageAcc : System.Web.UI.Page
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
            String Sql = "insert into UserDetails values (" + TextBox1.Text + ", '" + TextBox2.Text + "', '" + TextBox3.Text + "')";
            SqlCommand cmd = new SqlCommand(Sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Write("Record Inserted");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            String Sql = "update UserDetails set password = '" + TextBox2.Text + "' , email = '" 
                + TextBox3.Text + "' where usernumber = " + TextBox1.Text;
            SqlCommand cmd = new SqlCommand(Sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Write("Record updated"); 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            String Sql = "delete from UserDetails where usernumber = " + TextBox1.Text;
            SqlCommand cmd = new SqlCommand(Sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Write("Record deleted");
        }
    }
}