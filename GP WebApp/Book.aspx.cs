using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Drawing;
using System.Text;

public partial class Book : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel4.Visible = false;
        btnBook.Visible = false;
        Button19.Enabled = false;
        Button20.Enabled = false;
        if (!IsPostBack)
        {
            SqlCommand cmd;
            string com;
            com = "select top 1 AId From App ORDER BY AId Desc;";
            con.Open();
            cmd = new SqlCommand(com, con);
            object count = cmd.ExecuteScalar();
            if (count != null)
            {
                int i = Convert.ToInt32(count);
                i++;
                txtAppID.Text = i.ToString();
            }
            else
            {
                txtAppID.Text = "101";
            }
            con.Close();
        }
    }

    protected void btnCheck_Click(object sender, EventArgs e)
    {
        if (ddlCategory.Text == "--Select--")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Select Category !!!')", true);

        }
        if (ddlDoctor.Text == "--Select--")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Select Doctor Name !!!')", true);

        }
        if (Label12.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Select Date!!!')", true);
        }
        else
        {
            white();
            Panel4.Visible = true;
            btnBook.Visible = true;
            SqlDataAdapter da;
            DataSet ds = new DataSet();
            string m = "select Time from App where DName='" + ddlDoctor.SelectedItem + "' and Date='" + Calendar1.SelectedDate.ToShortDateString() + "'";
            da = new SqlDataAdapter(m, con);
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (Button7.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button7.BackColor = Color.Red;
                    }
                    if (Button8.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button8.BackColor = Color.Red;
                    }
                    if (Button9.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button9.BackColor = Color.Red;
                    }
                    if (Button10.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button10.BackColor = Color.Red;
                    }
                    if (Button11.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button11.BackColor = Color.Red;
                    }
                    if (Button12.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button12.BackColor = Color.Red;
                    }
                    if (Button13.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button13.BackColor = Color.Red;
                    }
                    if (Button14.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button14.BackColor = Color.Red;
                    }
                    if (Button15.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button15.BackColor = Color.Red;
                    }
                    if (Button16.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button16.BackColor = Color.Red;
                    }
                    if (Button17.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button17.BackColor = Color.Red;
                    }
                    if (Button18.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button18.BackColor = Color.Red;
                    }
                    if (Button21.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button21.BackColor = Color.Red;
                    }
                    if (Button22.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button22.BackColor = Color.Red;
                    }
                    if (Button23.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button23.BackColor = Color.Red;
                    }
                    if (Button24.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button24.BackColor = Color.Red;
                    }
                    if (Button25.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button25.BackColor = Color.Red;
                    }
                    if (Button26.Text == ds.Tables[0].Rows[i][0].ToString())
                    {
                        Button26.BackColor = Color.Red;
                    }
                }
            }
        }
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date.CompareTo(DateTime.Today) < 0)
        {
            e.Day.IsSelectable = false;
        }
    }

    public void white()
    {
        Button7.BackColor = Color.White;
        Button8.BackColor = Color.White;
        Button9.BackColor = Color.White;
        Button10.BackColor = Color.White;
        Button11.BackColor = Color.White;
        Button12.BackColor = Color.White;
        Button13.BackColor = Color.White;
        Button14.BackColor = Color.White;
        Button15.BackColor = Color.White;
        Button16.BackColor = Color.White;
        Button17.BackColor = Color.White;
        Button18.BackColor = Color.White;
        Button21.BackColor = Color.White;
        Button22.BackColor = Color.White;
        Button23.BackColor = Color.White;
        Button24.BackColor = Color.White;
        Button25.BackColor = Color.White;
        Button26.BackColor = Color.White;
    }

    public void add(Color c, Button b)
    {
        if (b.BackColor == Color.Green)
        {
            SqlCommand cmd;
            string s = "insert into App values('" + txtAppID.Text + "','" + Session["id"].ToString() + "','" + ddlDoctor.SelectedItem + "','" + Calendar1.SelectedDate.ToShortDateString() + "','" + b.Text + "')";
            con.Open();
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Button7.BackColor = Color.Red;
            Label10.Text = Button7.Text;
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Booking Successfull');", true);
        }
    }

    void Popup(bool isDisplay)
    {
        StringBuilder builder = new StringBuilder();
        if (isDisplay)
        {
            builder.Append("<script language=JavaScript> ShowPopup(); </script>\n");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowPopup", builder.ToString());
        }
        else
        {
            builder.Append("<script language=JavaScript> HidePopup(); </script>\n");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "HidePopup", builder.ToString());
        }
    }

    protected void btnBook_Click(object sender, EventArgs e)
    {
        if (Label10.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Please Select Time Slot !!!')", true);
        }
        else
        {
            Popup(true);
        }
    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlDoctor.Items.Clear();

        if (ddlCategory.Text != "--Select--")
        {
            try
            {
                SqlDataAdapter cmd = new SqlDataAdapter("Select Name From Doctor Where Category = '" + ddlCategory.Text + "'", con);
                DataSet dr = new DataSet();
                cmd.Fill(dr);
                int cou = dr.Tables[0].Rows.Count;
                if (cou != 0)
                {
                    for (int i = 0; i < cou; i++)
                    {
                        ddlDoctor.Items.Add(dr.Tables[0].Rows[i][0].ToString());
                    }

                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('No Doctor for this Category !!!')", true);
                }
            }
            catch (Exception a)
            {

            }
        }
    }

    public void redcolor(Color c, Button b)
    {
        if (Label11.Text == "0")
        {

            if (c == Color.Red)
            {
                b.BackColor = Color.Red;
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('This Slot has already booked, Please Select other Solt')", true);
            }
            else if (b.BackColor == Color.White)
            {
                b.BackColor = Color.Green;
                Label10.Text = b.Text;
                Label11.Text = "1";
            }

        }
        else if (b.BackColor == Color.Green)
        {
            b.BackColor = Color.White;
            Label10.Text = "";
            Label11.Text = "0";

        }

        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('You had already selected the slot..if you want to select another slot deselect the selected slot..')", true);
        }
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button7.BackColor, Button7);
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button8.BackColor, Button8);
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button9.BackColor, Button9);
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button10.BackColor, Button10);
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button11.BackColor, Button11);
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button12.BackColor, Button12);
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button13.BackColor, Button13);
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button14.BackColor, Button14);
    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button15.BackColor, Button15);
    }
    protected void Button16_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button16.BackColor, Button16);
    }
    protected void Button17_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button17.BackColor, Button17);
    }
    protected void Button18_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button18.BackColor, Button18);
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        add(Button7.BackColor, Button7);
        add(Button8.BackColor, Button8);
        add(Button9.BackColor, Button9);
        add(Button10.BackColor, Button10);
        add(Button11.BackColor, Button11);
        add(Button12.BackColor, Button12);
        add(Button13.BackColor, Button13);
        add(Button14.BackColor, Button14);
        add(Button15.BackColor, Button15);
        add(Button16.BackColor, Button16);
        add(Button17.BackColor, Button17);
        add(Button18.BackColor, Button18);
        add(Button21.BackColor, Button21);
        add(Button22.BackColor, Button22);
        add(Button23.BackColor, Button23);
        add(Button24.BackColor, Button24);
        add(Button25.BackColor, Button25);
        add(Button26.BackColor, Button26);

        string no = "";
        string dmail = "";
        SqlDataAdapter daa;
        DataSet dss = new DataSet();
        string h = "select Email from Doctor where Name='" + ddlDoctor.SelectedItem + "'";
        daa = new SqlDataAdapter(h, con);
        daa.Fill(dss);
        dmail = dss.Tables[0].Rows[0][0].ToString();

        string umail = Session["email"].ToString();


        MailMessage mail = new MailMessage();

        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

        mail.From = new MailAddress("somshrestha1993@gmail.com");
        mail.To.Add(umail);
        mail.Subject = "Doctor Appiontment Alert";
        mail.Body = "Your Appiontment has been booked with Doctor :'" + no + "' at Date :'" + Calendar1.SelectedDate.ToShortDateString() + "' Time:'" + Label10.Text + "' ";
        SmtpServer.Port = 587;
        SmtpServer.Credentials = new System.Net.NetworkCredential("somshrestha1993@gmail.com", "undertaker");

        SmtpServer.EnableSsl = true;

        SmtpServer.Send(mail);

        MailMessage mail1 = new MailMessage();
        SmtpClient SmtpServer1 = new SmtpClient("smtp.gmail.com");
        mail1.From = new MailAddress("somshrestha1993@gmail.com");
        mail1.To.Add(dmail);
        mail1.Subject = "Doctor Appiontments Alert";
        mail1.Body = "Your Appiontment has been booked with User Id:'" + Session["id"].ToString() + "' at Date :'" + Calendar1.SelectedDate.ToShortDateString() + "' Time:'" + Label10.Text + "' ";
        SmtpServer1.Port = 587;
        SmtpServer1.Credentials = new System.Net.NetworkCredential("somshrestha1993@gmail.com", "undertaker");
        SmtpServer1.EnableSsl = true;
        SmtpServer1.Send(mail1);


        Panel4.Visible = false;
        btnBook.Visible = false;
        //Response.Redirect("Book.aspx");
        Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Your appointment is booked...')", true);
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label12.Text = Calendar1.SelectedDate.ToShortDateString();
    }

    protected void Button21_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button21.BackColor, Button21);
    }
    protected void Button22_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button22.BackColor, Button22);
    }
    protected void Button23_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button23.BackColor, Button23);
    }
    protected void Button24_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button24.BackColor, Button24);
    }
    protected void Button25_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button25.BackColor, Button25);
    }
    protected void Button26_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        btnBook.Visible = true;
        redcolor(Button26.BackColor, Button26);
    }


    protected void Button19_Click(object sender, EventArgs e)
    {

    }

    protected void Button20_Click(object sender, EventArgs e)
    {

    }
    protected void txtAppID_TextChanged(object sender, EventArgs e)
    {

    }
}