using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiabetesFinalProject
{
    public partial class PatientChooseSpecialist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void deleteSchedule()
        {
            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            string strSQL;
            SqlDataReader dtrUser;


            con.ConnectionString = @"Data Source=.;Initial Catalog=Diabetes;Integrated Security=True";
            strSQL = "DELETE FROM DoctorSchedule WHERE PatientId = @patientId";
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = strSQL;

            cmd.Parameters.Add("@PatientId", System.Data.SqlDbType.Int).Value = Session["patientId"];


            con.Open();
            cmd.Connection = con;
            dtrUser = cmd.ExecuteReader();

            dtrUser.Close();
            con.Close();
        }
        public void deletedoctor()
        {
            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            string strSQL;
            SqlDataReader dtrUser;


            con.ConnectionString = @"Data Source=.;Initial Catalog=Diabetes;Integrated Security=True";
            strSQL = "DELETE FROM PatientDoctor WHERE PatientId = @patientId";
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = strSQL;

            cmd.Parameters.Add("@PatientId", System.Data.SqlDbType.Int).Value = Session["patientId"];
            

            con.Open();
            cmd.Connection = con;
            dtrUser = cmd.ExecuteReader();

            dtrUser.Close();
            con.Close();
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
            deletedoctor();
            deleteSchedule();
            try
            {
                SqlConnection con = new SqlConnection();
                SqlCommand cmd = new SqlCommand();
                string strSQL;
                SqlDataReader dtrUser;


                con.ConnectionString = @"Data Source=.;Initial Catalog=Diabetes;Integrated Security=True";
                strSQL = "INSERT INTO PatientSpecialist values (@PatientId, @SpecialistId)";
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = strSQL;
                cmd.Parameters.Add("@PatientId", System.Data.SqlDbType.Int).Value = Session["patientId"];
                cmd.Parameters.Add("@SpecialistId", System.Data.SqlDbType.Int).Value = ddlSpecialist.SelectedValue;

                con.Open();
                cmd.Connection = con;
                dtrUser = cmd.ExecuteReader();

                dtrUser.Close();
                con.Close();

                Response.Redirect("PatientChooseDoctor.aspx");

                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "You Have Choosed Your Specialist";
                ClearText(Page);
            }
            catch (Exception)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "You Have Already Assigned a Specialist";
            }
        }
    }
}