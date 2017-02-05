using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string s = "SELECT Password, Name from Doctor where DId = '" + id.Text + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            string pas = dr[0].ToString();
            if (pass.Text == pas)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Login Sucessful');", true);
                Session["fname"] = "doc";
                Session["DId"] = id.Text;
                Session["DName"] = dr[1].ToString();
                Response.Redirect("ViewPatient.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Wrong Password');", true);
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Wrong ID');", true);

        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}


