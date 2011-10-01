using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using EC.Model;
using EC.Common;
using EC.BL;

namespace EC.Model
{
    public class Job: Feed
    {
        public Job()
        {
            
        }

        public Job(Feed f)
        {
            this.Author = f.Author;
            this.CategoryID = f.CategoryID;
            this.CategorySTR = f.CategorySTR;
            this.DatePublised = f.DatePublised;
            this.Description = f.Description;
            this.DisplayIn = f.DisplayIn;
            this.FeedID = f.FeedID;
            this.isValid = f.isValid;
            this.Link = f.Link;
            this.Summary = f.Summary;
            this.Title = f.Title;
            for (int i; this.Hits < f.Hits; )
                i = this.IncrHit;
        }
    }
}
