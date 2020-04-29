using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;


namespace DiabetesFinalProject
{
    public partial class DoctorContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (MailMessage mm = new MailMessage(txtEmail.Text, "admodclinic@gmail.com"))
            {
                mm.Subject = txtSubject.Text;
                mm.Body = txtMsg.Text;

                mm.IsBodyHtml = false;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("admodclinic@gmail.com", "adminodclinic");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
                lblMessage.Text = "Thank you and You will be Contacted Soon....";
            }
        }
    }
}