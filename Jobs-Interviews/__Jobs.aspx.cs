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
            int jobid = job.isValidJob(RequestedPage, 1);
            if (jobid > 0)
            {
                job.FillUp(jobid);
                job_details.Visible = true;
                joblistpanel.Visible = false;
            }
            else
            {
                ExtendedCollection<Job> joblist = job.GetJobList();
                Job[] jobs = new Job[joblist.Count];
                joblist.CopyTo(jobs, 0);
                job_details.Visible = false;
                joblistpanel.Visible = true;
                JobListId.DataSource = jobs;
                JobListId.DataBind();
            }
        }
        lblTitle.Text = job.Title;
        lblSummary.Text = job.Summary;
        lbldetails.Text = job.Description;

    }
}

