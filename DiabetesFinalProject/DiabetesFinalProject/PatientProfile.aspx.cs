﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiabetesFinalProject
{
    public partial class PatientProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (string.IsNullOrEmpty(Session["patientId"] as string))
            //{
            //    Response.Redirect("Default.aspx");
            //}
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientEditProfile.aspx");
        }
    }
}