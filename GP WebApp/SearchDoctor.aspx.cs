using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class SearchDoctor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Button1.Visible = true;
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlSearch.Text == "Name")
        {
            Button1.Visible = true;
            Button2.Visible = false;
            Button3.Visible = false;
        }
        else if (ddlSearch.Text == "Type")
        {
            Button2.Visible = true;
            Button1.Visible = false;
            Button3.Visible = false;
        }
        else if (ddlSearch.Text == "Address")
        {
            Button3.Visible = true;
            Button2.Visible = false;
            Button1.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

        string s = "SELECT DId,Name,Address,Mobile,Category FROM Doctor where Name Like '%" + txtName.Text + "%' Order By Name";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

        string s = "SELECT DId,Name,Address,Mobile,Category FROM Doctor where Category Like '%" + txtName.Text + "%' Order By Name";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

        string s = "SELECT DId,Name,Address,Mobile,Category FROM Doctor where Address Like '%" + txtName.Text + "%' Order By Name";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}