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
    public partial class userjob : System.Web.UI.Page
    {
        SqlConnection con; 
        protected void Page_Load(object sender, EventArgs e)
        {
            AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~/App_Data")); 
            con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["tiger"].ConnectionString);
            Response.Write("connected");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int phone = Int32.Parse(DropDownList1.SelectedItem.Text);
            con.Open();
            String Sql = " Select * from jobapp where phoneno = " + phone;
            SqlCommand cmd = new SqlCommand(Sql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            TextBox1.Text = (dr["fname"].ToString());
            TextBox2.Text = (dr["sname"].ToString());
            TextBox3.Text = (dr["bdate"].ToString());
            TextBox4.Text = (dr["gender"].ToString());
            TextBox5.Text = (dr["tfrom"].ToString());
            TextBox6.Text = (dr["tto"].ToString());
            TextBox7.Text = (dr["phoneno"].ToString());
            TextBox8.Text = (dr["email"].ToString());
            TextBox9.Text = (dr["nlanguage"].ToString());
            TextBox10.Text = (dr["tsubj"].ToString());
            dr.Close();
            con.Close(); 

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            String Sql = "update jobapp set fname = '" + TextBox1.Text + "' , sname = '" + TextBox2.Text + "', gender = '" 
                + TextBox4.Text + "', tfrom = '" + TextBox5.Text + "' , tto = '" + TextBox6.Text + "' , email = '" 
                + TextBox8.Text + "' , nlanguage = '" + TextBox9.Text + "' , tsubj = '" + TextBox10.Text + "' , phoneno = '" 
                + TextBox7.Text + "'where phoneno = " + DropDownList1.SelectedItem.Text ;
            SqlCommand cmd = new SqlCommand(Sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            DropDownList1.DataBind(); 
            Response.Write("Record updated");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int phone = Int32.Parse(DropDownList1.SelectedItem.Text);
            con.Open();
            String Sql = " delete from jobapp where phoneno = " + phone;
            SqlCommand cmd = new SqlCommand(Sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            DropDownList1.DataBind();
            Response.Write("Record deleted");


        }
    }
}