﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiabetesFinalProject
{
    public partial class SpecialistSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (string.IsNullOrEmpty(Session["specialistId"] as string))
            //{
            //    Response.Redirect("Default.aspx");
            //}
        }

        protected void btnCreateSchedule_Click(object sender, EventArgs e)
        {
            Response.Redirect("SpecialistCreateSchedule.aspx");                
        }
    }
}