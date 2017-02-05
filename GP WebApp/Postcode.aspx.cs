using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Postcode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string verify()
    {
        if (txtPostcode.Text == "")
        {
            return "Postcode";
        }
        return "OK";
    }

    protected void btnVerify_Click(object sender, EventArgs e)
    {
        if (verify() == "OK")
        {
            SqlDataReader reader = null;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT Postcode FROM Location WHERE Postcode = @Postcode ", con);
            cmd.Parameters.AddWithValue("@Postcode", txtPostcode.Text);
            reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Verification Sucessful');", true);
                    Response.Redirect("CReg.aspx");

                }
            }

            else

            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Verification Failed');", true);
            }
            }
        }   
    }
