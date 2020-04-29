using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiabetesFinalProject
{
    public partial class PatientScheduledTreatment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool a = removeButtons();
            if(a==false)
            {
                Label1.Visible = true;
                btnClick.Visible = true;
            }
            else
            {                
                Label1.Visible = false;
                btnClick.Visible = false;
            }
        }

        public Boolean removeButtons()
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
        protected void btnClick_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientChooseSpecialist.aspx");
        }
    }
}