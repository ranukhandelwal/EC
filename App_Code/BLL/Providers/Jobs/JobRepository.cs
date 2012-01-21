using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;
using EC.Model;
using EC.Common;
using EC.BL;
using EC.Common.Utilities;

namespace EC.BL
{
    public class JobRepository : FeedRepository
    {
        
        public JobRepository()
        {
            foreach (sCategory c in constant.FeedCategory)
                if (c.Name == "JOBS")
                    CategoryID = c.ID;
            
        }

        public int Add(Job j)
        {

            return base.Add(j);
        }

        public int Update(Job j)
        {
            return base.Update(j);
        }


        /// <summary>
        /// Is valid feed, checks with respect to link and category
        /// </summary>
        public int isValidJob(string link, int State)
        {
            return base.isValidFeed(constant.JobsPageBase + link, CategoryID, State);
        }


        /// <summary>
        /// Get Job title, author, date, hits, summmary, description etc from job id
        /// </summary>
        public override void FillUp(int ID)
        {
            
            try
            {
                base.FillUp(ID);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public static Job ConvertFeedToJob(Feed f)
        {
            Job j = new Job(f);
            return j;
        }

        public ExtendedCollection<Job> GetJobList()
        {
            ExtendedCollection<Job> jlist = new ExtendedCollection<Job>();
            IEnumerable<Job> list = jlist.ConvertAll(base.GetFeedList(CategoryID), new Converter<Feed, Job>(ConvertFeedToJob));
            jlist.AddRange(list);
            return jlist;
        }
        
    }
}
 