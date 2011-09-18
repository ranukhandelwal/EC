using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.UI;
using EC.Model;
using EC.BL;
using EC.Common.Utilities;

namespace ExamCrazy.admin
{
    public partial class AddJob : BasePageAdmin
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Add_Feed(object s, EventArgs e)
        {
            Feed feed = new Feed();
            Utility Util = new Utility();
            feed.Author = "Administrator";
            foreach (sCategory cat in constant.FeedCategory)
            {
                if(cat.Name == "JOBS")
                    feed.CategoryID = cat.ID;
            }
            string title;
            title = Util.FormatTextForInput(Request.Form[JobTitle.UniqueID]);
            string link = constant.DomainName + "/jobs" + title;

            feed.Description = "<br />" + "<b>Summary</b>" + Util.FormatTextForInput(Request.Form[Summary.UniqueID]) + "<br /><br />"
                + "<b>Last Date to Apply:</b><br />" + Util.FormatTextForInput(Request.Form[LastDate.UniqueID]);

            Util = null;
            feed = null;
        }
    }
}
