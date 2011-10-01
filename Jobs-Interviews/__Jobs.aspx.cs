using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.UI;
using EC.BL;
using EC.BL.Providers;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;
using EC.Security;


public partial class __Jobs : BasePage
{
    static string RequestedPage;
    JobRepository job = new JobRepository();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            

            RequestedPage = Request.QueryString["RequestedURL"];
            int jobid = job.isValidJob("ExamCrazy.com/jobsExamCrazy_Vacancy.asp", 2);
            if (jobid > 0)
            {
                job.FillUp(jobid);
            }
        }
        lblTitle.Text = job.Title;

    }
}

