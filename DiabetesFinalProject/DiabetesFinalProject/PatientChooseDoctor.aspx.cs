using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiabetesFinalProject
{
    public partial class PatientChooseDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool a = checkSpecialist();
            bool y = checkdoctor();
            if(y == false & a == false)
            {
                lblHeader.Visible = true;
                DropDownList1.Visible = true;
                DataList1.Visible = true;
                btnSubmit.Visible = true;                
            }
            else
            {
                
                lblHeader.Visible = false;
                DropDownList1.Visible = false;
                DataList1.Visible = false;
                btnSubmit.Visible = false;
            }
            
            if(y == true)
            {
                GridView1.Visible = true;
                lblTableheader.Visible = true;
                GridView2.Visible = false;
                lblSpecialist.Visible = false;
            }
            else
            {
                GridView1.Visible = false;
                lblTableheader.Visible = false;
                GridView2.Visible = true;
                lblSpecialist.Visible = true;
            }
            
        }

        
        public Boolean checkSpecialist()
        {
            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            string strSQL;
            SqlDataReader dtrUser;


            con.ConnectionString = @"Data Source=.;Initial Catalog=Diabetes;Integrated Security=True";
            strSQL = "Select * from PatientSpecialist where PatientId = @patientId";
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = strSQL;
            cmd.Parameters.Add("@PatientId", System.Data.SqlDbType.Int).Value = Session["patientId"];


            con.Open();
            cmd.Connection = con;
            dtrUser = cmd.ExecuteReader();
            bool x = dtrUser.HasRows;
            dtrUser.Close();
            con.Close();
            return x;
        }
        public Boolean checkdoctor()
        {
            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            string strSQL;
            SqlDataReader dtrUser;


            con.ConnectionString = @"Data Source=.;Initial Catalog=Diabetes;Integrated Security=True";
            strSQL = "Select * from PatientDoctor where PatientId = @patientId";
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = strSQL;
            cmd.Parameters.Add("@PatientId", System.Data.SqlDbType.Int).Value = Session["patientId"];
            

            con.Open();
            cmd.Connection = con;
            dtrUser = cmd.ExecuteReader();
            bool x = dtrUser.HasRows;
            dtrUser.Close();
            con.Close();
            return x;
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
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
                try
                {
                    SqlConnection con = new SqlConnection();
                    SqlCommand cmd = new SqlCommand();
                    string strSQL;
                    SqlDataReader dtrUser;


                    con.ConnectionString = @"Data Source=.;Initial Catalog=Diabetes;Integrated Security=True";
                    strSQL = "INSERT INTO PatientDoctor values (@PatientId, @DoctorId)";
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.CommandText = strSQL;
                    cmd.Parameters.Add("@PatientId", System.Data.SqlDbType.Int).Value = Session["patientId"];
                    cmd.Parameters.Add("@DoctorId", System.Data.SqlDbType.Int).Value = DropDownList1.SelectedValue;

                    con.Open();
                    cmd.Connection = con;
                    dtrUser = cmd.ExecuteReader();

                    dtrUser.Close();
                    con.Close();

                    
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "You Have Choosed Your Doctor";
                    ClearText(Page);

                    Response.Redirect("PatientChooseDoctor.aspx");
                }
                catch (Exception)
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "You have already assigned a doctor";
                }
            
            

            
        }
    }
}