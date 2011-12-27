using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.UI;
using EC.BL;
//using EC.BL.Providers.Announcements;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;
using EC.BL.Providers.User;


namespace ExamCrazy
{
    public partial class AdminArticle : System.Web.UI.MasterPage
    {
        private string strURLRedirect;
        private int ResultCount;
        private int CAT_ID;
        private int Tab;
        private string Letter;
        private string fFind;
        private int Top;
        private int Year;
        private int Month;
        private int AnnouncementImage;
        private int LastViewed;
        public int ArticleCount;
        public string lastviewedselectedvalue;
        public string lastviewedlabel;

        //Instantiate utility/common object
        Utility Util = new Utility();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Handles dropdown list property
        public string SelectedValue
        {
            get
            {
                return CategoryName.SelectedValue;
            }
            set
            {
                CategoryName.SelectedValue = value;
            }
        }

        //Handle sort category selection redirect
        public void GetCatName_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(this.SelectedValue))
            {
                CategoryName.SelectedValue = this.SelectedValue;
            }

            strURLRedirect = "~/admin/feedmanager.aspx?catid=" + CategoryName.SelectedValue;
            Response.Redirect(strURLRedirect);
        }
    }
}