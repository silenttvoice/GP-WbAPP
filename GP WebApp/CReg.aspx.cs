using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class CReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        SqlCommand cmd;
        string com = "select top 1 UId From Cust ORDER BY UId Desc;";
        con.Open();
        cmd = new SqlCommand(com, con);
        object count = cmd.ExecuteScalar();
        if (count != null)
        {
            int i = Convert.ToInt32(count);
            i++;
            txtUserID.Text = i.ToString();
        }
        else
        {
            txtUserID.Text = "1";
        }
        con.Close();
    }

    public string check()
    {
        if (txtName.Text == "")
        {
            return "Name";
        }
        else if (txtAddress.Text == "")
        {
            return "Address";
        }
        else if (txtMobileNo.Text == "")
        {
            return "Mobile No";
        }
        else if (txtEmail.Text == "")
        {
            return "Email";
        }
        else if (txtAge.Text == "")
        {
            return "Year Of Birth";
        }
        else if (txtPass.Text == "")
        {
            return "Password";
        }
        return "OK";
    }

    public string passCheck()
    {
        if (txtPass.Text != txtConPass.Text)
        {
            return "wrong";
        }
        return "OK";
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
 
        if (check() == "OK")
        {
            if (passCheck() == "OK")
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Cust(UId,Name,Address,Pass,Email,Mobile,Sex,Age,Bg) values (@UserID,@Name,@Address,@Pass,@EMail,@Mobile,'" + ddlSex.Text + "','" + txtAge.Text + "','" + ddlBloodGroup.Text + "');", con);
                cmd.Parameters.AddWithValue("@UserID", txtUserID.Text);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@Pass", txtPass.Text);
                cmd.Parameters.AddWithValue("@Mobile", txtMobileNo.Text);
                cmd.Parameters.AddWithValue("@EMail", txtEmail.Text);
                cmd.ExecuteReader();
                con.Close();
                con.Open();

                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('User Registered With User Id : " + txtUserID.Text + "\n And Name : " + txtName +"');", true);
                txtName.Text = "";
                txtAddress.Text = "";
                txtPass.Text = "";
                txtMobileNo.Text = "";
                txtConPass.Text = "";
                txtEmail.Text = "";

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Password Not Matched ');", true);
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter " + check() + "');", true);
        }
    }
}