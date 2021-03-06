﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiabetesFinalProject
{
    public partial class DoctorCreateSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rvDate.MinimumValue = DateTime.Today.ToShortDateString();
            rvDate.MaximumValue = DateTime.Today.AddYears(15).ToShortDateString();

            rvDate0.MinimumValue = DateTime.Today.ToShortDateString();
            rvDate0.MaximumValue = DateTime.Today.AddDays(7).ToShortDateString();
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
                strSQL = "INSERT INTO DoctorSchedule values (@Schedule_name, @Schedule_from, @Schedule_to, @Monday, @Tuesday, @Wednesday, @Thursday, @Friday, @Saturday, @Sunday, @Others, @PatientId, @DoctorId)";
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = strSQL;
                cmd.Parameters.Add("@Schedule_name", System.Data.SqlDbType.NVarChar).Value = txtSchduleName.Text;
                cmd.Parameters.Add("@Schedule_from", System.Data.SqlDbType.DateTime).Value = txtFrmDate.Text;
                cmd.Parameters.Add("@Schedule_to", System.Data.SqlDbType.DateTime).Value = txtToDate.Text;
                cmd.Parameters.Add("@Monday", System.Data.SqlDbType.NVarChar).Value = txtMonday.Text;
                cmd.Parameters.Add("@Tuesday", System.Data.SqlDbType.NVarChar).Value = txtTuesday.Text;
                cmd.Parameters.Add("@Wednesday", System.Data.SqlDbType.NVarChar).Value = txtWednesday.Text;
                cmd.Parameters.Add("@Thursday", System.Data.SqlDbType.NVarChar).Value = txtThursday.Text;
                cmd.Parameters.Add("@Friday", System.Data.SqlDbType.NVarChar).Value = txtFriday.Text;
                cmd.Parameters.Add("@Saturday", System.Data.SqlDbType.NVarChar).Value = txtSaturday.Text;
                cmd.Parameters.Add("@Sunday", System.Data.SqlDbType.NVarChar).Value = txtSunday.Text;
                cmd.Parameters.Add("@Others", System.Data.SqlDbType.NVarChar).Value = txtOthers.Text;
                cmd.Parameters.Add("@PatientId", System.Data.SqlDbType.Int).Value = ddlPatient.SelectedValue;
                cmd.Parameters.Add("@DoctorId", System.Data.SqlDbType.Int).Value = Session["doctorId"];

                con.Open();
                cmd.Connection = con;
                dtrUser = cmd.ExecuteReader();

                dtrUser.Close();
                con.Close();

                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Schedule Created Succesfully";

                ClearText(Page);
                //Response.Redirect("DoctorCreateSchedule.aspx");

                
                
            }
            catch (Exception)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error in Adding the Schedule";
            }
            
        }

      

       
    }
}