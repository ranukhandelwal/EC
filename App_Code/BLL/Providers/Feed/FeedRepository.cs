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
using EC.Common.Utilities;

namespace EC.BL
{
    public class FeedRepository : BaseFeedObj
    {
        public FeedRepository()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        private IDataReader GetData
        {
            get
            {
                foreach (sState s in constant.JobState)
                    if (s.Name == "Valid")
                        isValid = Int16.Parse(s.ID.ToString());

                IDataReader dr = Blogic.ActionProcedureDataProvider.GetFeedList(CategoryID, isValid);
                return dr;
            }

        }
        public override int Add(Feed f)
        {
            return Blogic.AddNewFeed(f);
        }

        public int Update(Feed f)
        {
            return Blogic.UpdateFeed(f);
        }

        /// <summary>
        /// Duplicate Feed links in same Category should not be allowed
        /// </summary>
        public int isFeedLinkDuplicate(string Link, int CategoryID)
        {
            
            return Blogic.CheckFeedDuplicacy(Link, CategoryID);
                        
        }

        /// <summary>
        /// Is valid feed, checks with respect to link and category
        /// </summary>
        public int isValidFeed(string link, int Category, int State)
        {
            if ((link == null) || (Category <= 0))
                return -1;
            return Blogic.GetFeedID(link, Category, State);
            
        }


         /// <summary>
        /// Get Feed title, author, date, hits, summmary, description etc from feed id
        /// </summary>
        public override void FillUp(int ID)
        {
            Utility Util = new Utility();

            try
            {
                IDataReader dr = Blogic.ActionProcedureDataProvider.GetFeedDetails(ID);
                if (dr.Read())
                {
                    //dr.Read();
                    //Feed item = new Feed();
                    if (dr["Title"] != DBNull.Value)
                    {
                        this.Title = (string)dr["Title"];
                    }
                    
                    this.FeedID = ID;
                    
                    if (dr["Title"] != DBNull.Value)
                    {
                        this.Title = (string)dr["Title"];
                    }
                    if (dr["Author"] != DBNull.Value)
                    {
                        this.Author = (string)dr["Author"];
                    }
                    if (dr["Description"] != DBNull.Value)
                    {
                        this.Description = (string)dr["Description"];
                    }
                    if (dr["Summary"] != DBNull.Value)
                    {
                        this.Summary = (string)dr["Summary"];
                    }
                    if (dr["Link"] != DBNull.Value)
                    {
                        this.Link = (string)dr["Link"];
                    }
                    if (dr["Category"] != DBNull.Value)
                    {
                        this.CategoryID = (int)dr["Category"];
                    }
                    if (dr["DatePublished"] != DBNull.Value)
                    {
                        this.DatePublised = (DateTime)dr["DatePublished"];
                    }
                    if (dr["isValid"] != DBNull.Value)
                    {
                        this.isValid = Int16.Parse(dr["isValid"].ToString());
                    }
                    if (dr["DisplayIn"] != DBNull.Value)
                    {
                        this.DisplayIn = (string)dr["DisplayIn"];
                    }
                    
                }

                dr.Close();
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public ExtendedCollection<Feed> GetFeedList(int Category)
        {

            ExtendedCollection<Feed> list = new ExtendedCollection<Feed>();
            CategoryID = Category;
            IDataReader dr = GetData;

            while (dr.Read())
            {

                Feed item = new Feed();
                if (dr["Title"] != DBNull.Value)
                {
                    item.Title = (string)dr["Title"];
                }
                if (dr["FeedID"] != DBNull.Value)
                {
                    item.FeedID = (int)dr["FeedID"];
                }
                if (dr["Title"] != DBNull.Value)
                {
                    item.Title = (string)dr["Title"];
                }
                if (dr["Author"] != DBNull.Value)
                {
                    item.Author = (string)dr["Author"];
                }
                if (dr["Description"] != DBNull.Value)
                {
                    item.Description = (string)dr["Description"];
                }
                if (dr["Summary"] != DBNull.Value)
                {
                    item.Summary = (string)dr["Summary"];
                }
                if (dr["Link"] != DBNull.Value)
                {
                    item.Link = (string)dr["Link"];
                }
                if (dr["DatePublished"] != DBNull.Value)
                {
                    item.DatePublised = (DateTime)dr["DatePublished"];
                }
                list.Add(item);
            }

            dr.Close();

            return list;
        }

    }
}
