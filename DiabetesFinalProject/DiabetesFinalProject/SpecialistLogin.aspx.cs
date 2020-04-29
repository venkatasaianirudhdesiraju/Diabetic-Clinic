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
    public partial class SpecialistLogin : System.Web.UI.Page
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

            try
            {
                con.ConnectionString = @"Data Source=.;Initial Catalog=Diabetes;Integrated Security=True";
                strSQL = "SELECT * FROM SpecialistRegister WHERE Username=@user and Password=@pwd";
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = strSQL;
                cmd.Parameters.Add("@user", System.Data.SqlDbType.NVarChar).Value = txtUserName.Text;
                cmd.Parameters.Add("@pwd", System.Data.SqlDbType.NVarChar).Value = txtPassword.Text;

                con.Open();
                cmd.Connection = con;
                dtrUser = cmd.ExecuteReader();
                if (dtrUser.HasRows) 
                {
                    dtrUser.Read();
                    Session["user"] = dtrUser["Username"];
                    Session["specialistId"] = dtrUser["SpecialistId"];
                    Response.Redirect("Specialistindex.aspx");
                }
                else
                {
                    lblMessage.Text = "Not a user";
                }
                dtrUser.Close();
                con.Close();
            }
            catch (Exception)
            {

                lblMessage.Text = "Exception Occured";
            }
        
        
        }
    }
}