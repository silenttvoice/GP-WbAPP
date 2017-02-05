using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class MyDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

        if (!IsPostBack)
        {
            SqlCommand cmd = new SqlCommand("Select * from Cust where UId='" + Session["id"].ToString() + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            txtUserID.Text = dr[0].ToString();
            txtName.Text = dr[1].ToString();
            txtAddress.Text = dr[2].ToString();
            txtMobileNo.Text = dr[3].ToString();
            txtEmail.Text = dr[4].ToString();
            con.Close();

            string s = "SELECT * FROM History where UId='" + txtUserID.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

        if (txtAddress.Text == "" || txtMobileNo.Text == "" || txtEmail.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Fill The Details !!!')", true);
        }
        else
        {
            string add, contact, email;
            add = txtAddress.Text;
            contact = txtMobileNo.Text;
            email = txtEmail.Text;
            SqlCommand cmd;
            string s = "update Cust set Address='" + add + "',Mobile='" + contact + "',Email='" + email + "' where UId='" + txtUserID.Text + "'";
            con.Open();
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Personal Details Updated !!!!')", true);

        }
    }
}