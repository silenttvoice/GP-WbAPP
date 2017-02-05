using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Text;

public partial class Cancel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
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

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Popup(true);
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

        SqlCommand cmd = new SqlCommand("Select UId from App where AId = '" + txtBookingID.Text + "' And UId='" + Session["Id"].ToString() + "'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            con.Close();

            cmd = new SqlCommand("Delete from App where AId = '" + txtBookingID.Text + "' And UId='" + Session["Id"].ToString() + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Appointment Canceled Successfully');", true);

            string id = "somshrestha1993@gmail.com";
            string pass = "undertaker";

            string umail = Session["email"].ToString();
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress(id);
            mail.To.Add(umail);
            mail.Subject = "Doctor Appiontment Alert";
            mail.Body = "Your Appiontment AId: '" + txtBookingID.Text + "' has been Cancled";


            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential(id, pass);
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);

            txtBookingID.Text = "";
        }
        else
        {
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Invalid Id');", true);
        }
    }
}