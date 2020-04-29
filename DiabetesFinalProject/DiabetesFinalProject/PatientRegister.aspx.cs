using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiabetesFinalProject
{
    public partial class PatientRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void ClearText(Control allclear)
        {
            foreach (Control c in allclear.Controls)
            {
                if (c.GetType() == typeof(TextBox))
                {
                    ((TextBox)c).Text = "";
                }
                if (c.HasControls())
                {
                    ClearText(c);
                }
            }
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Diabetes;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into PatientRegister(Firstname, Lastname, Middlename, Email, Gender, AddressLine1, AddressLine2, City,  State, ZipCode, PhoneNumber, DateOfBirt) values('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtMiddleName.Text + "','" + txtEmail.Text + "','" + txtGender.Text + "','" + txtAdd1.Text + "','" + txtAdd2.Text + "','" + txtCity.Text + "','" + txtState.Text + "','" + txtZip.Text + "','" + txtPhone.Text + "','" + txtDob.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();                

                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Registered Successfully...";
                ClearText(Page);
            }
            catch (Exception)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "There was Error in the Registration Process...";
            }
            
        }
    }
}