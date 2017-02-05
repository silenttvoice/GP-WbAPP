using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DoctorDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlCommand cmd = new SqlCommand("Select * from Doctor where DId ='" + Session["DId"].ToString() + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();

            TextBox1.Text = dr[0].ToString();
            TextBox2.Text = dr[1].ToString();
            TextBox3.Text = dr[2].ToString();
            TextBox4.Text = dr[3].ToString();
            TextBox5.Text = dr[4].ToString();
            con.Close();
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text == "" || TextBox4.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Fill the Deatils !!!')", true);
        }
        else
        {
            SqlCommand cmd;
            string t = "update Doctor set Address='" + TextBox3.Text + "',Mobile='" + TextBox4.Text + "' where Did='" + TextBox1.Text + "'";
            con.Open();
            cmd = new SqlCommand(t, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Details Updated !!!')", true);
        }
    }
}