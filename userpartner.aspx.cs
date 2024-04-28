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
    public partial class userpartner : System.Web.UI.Page
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
            String Sql = "update partner set name = '" + TextBox1.Text + "' , email = '" + TextBox4.Text + "', phoneno = " 
                + TextBox2.Text + " , doctype = '" + TextBox3.Text + "' where phoneno = " + DropDownList1.SelectedItem.Text;
            SqlCommand cmd = new SqlCommand(Sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            DropDownList1.DataBind();
            Response.Write("Record updated");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int phone = Int32.Parse(DropDownList1.SelectedItem.Text);
            con.Open();
            String Sql = " Select * from partner where phoneno  = " + phone;
            SqlCommand cmd = new SqlCommand(Sql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            TextBox1.Text = (dr["name"].ToString());
            TextBox4.Text = (dr["email"].ToString());
            TextBox2.Text = (dr["phoneno"].ToString());
            TextBox3.Text = (dr["doctype"].ToString());
            dr.Close();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int phone = Int32.Parse(DropDownList1.SelectedItem.Text);
            con.Open();
            String Sql = " delete from partner where phoneno = " + phone;
            SqlCommand cmd = new SqlCommand(Sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            DropDownList1.DataBind();
            Response.Write("Record deleted");
        }
    }
}