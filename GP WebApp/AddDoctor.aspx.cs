using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class AddDoctor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

        if (Session["AddDoctor"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Doctor Registered');", true);
            Session["AddDoctor"] = "";
            txtName.Text = "";
            txtPass.Text = "";
            txtAddress.Text = "";
            txtMobile.Text = "";
            txtEmail.Text = "";
        }
        if (!IsPostBack)
        {
            SqlCommand cmd;
            string com = "select top 1 DId From Doctor ORDER BY DId Desc;";
            con.Open();
            cmd = new SqlCommand(com, con);
            object count = cmd.ExecuteScalar();
            if (count != null)
            {
                int i = Convert.ToInt32(count);
                i++;
                txtDocID.Text = i.ToString();
            }
            else
            {
                txtDocID.Text = "11";
            }
            con.Close();
        }
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
        else if (txtMobile.Text == "")
        {
            return "Mobile No";
        }
        else
        {
            return "OK";
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (check() == "OK")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Doctor(DId,Name,Address,Mobile,Category,Password,Email) values (@DId,@Name,@Address,@Mobile,@Category,@Password,@Email);", con);
            cmd.Parameters.AddWithValue("@DId", txtDocID.Text);
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
            cmd.Parameters.AddWithValue("@Category", ddlCategory.Text);
            cmd.Parameters.AddWithValue("@Password", txtPass.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.ExecuteReader();
            con.Close();
            con.Open();
            Session["AddDoctor"] = "Data";
            Response.Redirect("AddDoctor.aspx");

        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter " + check() + "');", true);
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewUser.aspx");
    }

}