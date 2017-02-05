using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        //#region System Generated . . .
        //Class1 c = new Class1();
        //bool c1 = c.check("O71", con);
        //if (!c1)
        //{
        //    Response.Redirect("Login.aspx");
        //}
        //#endregion
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string s = "Select Pass,Name,Mobile,Email,Bg from Cust where UId='" + id.Text + "'";
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
                Session["fname"] = "user";
                Session["id"] = id.Text;
                Session["name"] = dr[1].ToString();
                Session["mob"] = dr[2].ToString();
                Session["email"] = dr[3].ToString();
                Session["bg"] = dr[4].ToString();
                Response.Redirect("Book.aspx");

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