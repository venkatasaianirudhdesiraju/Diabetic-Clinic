using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;

namespace DiabetesFinalProject
{
    public partial class PatientReport : System.Web.UI.Page
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                SqlCommand cmd = new SqlCommand();
                string strSQL;
                SqlDataReader dtrUser;


                con.ConnectionString = @"Data Source=.;Initial Catalog=Diabetes;Integrated Security=True";
                strSQL = "INSERT INTO PatientReport values (@WeightLoss, @MoreThirsty, @FeelingHungry, @BlurryVision, @OrganFail, @FatherMother, @Cholestrol, @Ldl, @Hdl, @Vldl, @Trigl, @Others, @PatientId, @ReportDate)";
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = strSQL;
                cmd.Parameters.Add("@WeightLoss", System.Data.SqlDbType.NVarChar).Value = rbWeightLoss.SelectedValue;
                cmd.Parameters.Add("@MoreThirsty", System.Data.SqlDbType.NVarChar).Value = rbThirsty.SelectedValue;
                cmd.Parameters.Add("@FeelingHungry", System.Data.SqlDbType.NVarChar).Value = rbHungry.SelectedValue;
                cmd.Parameters.Add("@BlurryVision", System.Data.SqlDbType.NVarChar).Value = rbBlurry.SelectedValue;
                cmd.Parameters.Add("@OrganFail", System.Data.SqlDbType.NVarChar).Value = rbOrgan.SelectedValue;
                cmd.Parameters.Add("@FatherMother", System.Data.SqlDbType.NVarChar).Value = rbType.SelectedValue;
                cmd.Parameters.Add("@Cholestrol", System.Data.SqlDbType.NVarChar).Value = txtCholestrol.Text;
                cmd.Parameters.Add("@Ldl", System.Data.SqlDbType.NVarChar).Value = txtLdl.Text;
                cmd.Parameters.Add("@Hdl", System.Data.SqlDbType.NVarChar).Value = txtHdl.Text;
                cmd.Parameters.Add("@Vldl", System.Data.SqlDbType.NVarChar).Value = txtVldl.Text;
                cmd.Parameters.Add("@Trigl", System.Data.SqlDbType.NVarChar).Value = txtTri.Text;
                cmd.Parameters.Add("@Others", System.Data.SqlDbType.NVarChar).Value = txtOthers.Text;
                cmd.Parameters.Add("@PatientId", System.Data.SqlDbType.Int).Value = Session["patientid"];
                cmd.Parameters.Add("@ReportDate", System.Data.SqlDbType.Date).Value = DateTime.Now.ToShortDateString();

                con.Open();
                cmd.Connection = con;
                dtrUser = cmd.ExecuteReader();

                dtrUser.Close();
                con.Close();                   

                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Your Report has been Added";

                ClearText(Page);

                GridView1.DataBind();
            }
            catch (Exception)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error in Filling the Form";
            }
            //Response.Redirect("PatientReport.aspx");
            
        }  


    }
}