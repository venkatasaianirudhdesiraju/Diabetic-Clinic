using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiabetesFinalProject
{
    public partial class AdminAddDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Method to clear all the text boxes
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

        //Click event to register the Doctor
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {   //giving the connection
                SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Diabetes;Integrated Security=True");
                //Opening the connection
                con.Open();
                //inserting all the input from the textboxes
                SqlCommand cmd = new SqlCommand("insert into DoctorRegister(Firstname, Lastname, Middlename, Email, Username, Password, Gender, AddressLine1, AddressLine2, City,  State, ZipCode, Phone) values('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtMiddleName.Text + "','" + txtEmail.Text + "','" + txtUserName.Text + "','" + txtPassword.Text + "','" + txtGender.Text + "','" + txtAdd1.Text + "','" + txtAdd2.Text + "','" + txtCity.Text + "','" + txtState.Text + "','" + txtZip.Text + "','" + txtPhone.Text + "')", con);
                cmd.ExecuteNonQuery();
                //closing the connection
                con.Close();

                //Displaying the Message if everything Succeed's
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Registered Successfully";

                //Calling the clear Method
                ClearText(Page);
            }
            //If any Exception Occurs it shows the message
            catch (Exception)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "There was Error in Adding Doctor";
            }

            
        }
    }
}