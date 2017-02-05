using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class GFeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

        SqlCommand cmd = new SqlCommand("Insert Into Feedback(UId,Feed,Date) Values('" + Session["id"].ToString() + "','" + TextBox1.Text + "','" + DateTime.Now.ToShortDateString() + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Thank You For The Feedback');", true);
        TextBox1.Text = "";
    }
}