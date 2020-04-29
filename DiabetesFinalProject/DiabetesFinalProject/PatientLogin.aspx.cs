using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiabetesFinalProject
{
    public partial class PatientLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {          
            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            string strSQL;
            SqlDataReader dtrUser;

            con.ConnectionString = @"Data Source=.;Initial Catalog=Diabetes;Integrated Security=True";
            strSQL = "SELECT * FROM PatientRegister WHERE (Lastname=@last and DateOfBirt=@dob and Gender=@gender and City=@city and PhoneNumber=@phone)";
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = strSQL;
            cmd.Parameters.Add("@last", System.Data.SqlDbType.NVarChar).Value = txtLastName.Text;
            cmd.Parameters.Add("@gender", System.Data.SqlDbType.NVarChar).Value = txtGender.Text;
            cmd.Parameters.Add("@dob", System.Data.SqlDbType.Date).Value = txtDob.Text;
            cmd.Parameters.Add("@city", System.Data.SqlDbType.NVarChar).Value = txtCity.Text;
            cmd.Parameters.Add("@phone", System.Data.SqlDbType.NVarChar).Value = txtPhone.Text;

            con.Open();
            cmd.Connection = con;
            dtrUser = cmd.ExecuteReader();
            if (dtrUser.HasRows)
            {
                dtrUser.Read();
                Session["patientid"] = dtrUser["PatientId"];
                Response.Redirect("Patientindex.aspx");
            }
            else
            {
                lblMessage.Text = "Login Failed <br /> Please Re-Enter Your Correct Credentials";
            }
            dtrUser.Close();
            con.Close();           
        }
    }
}