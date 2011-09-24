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
                IDataReader dr = Blogic.ActionProcedureDataProvider.GetFeedList(CategoryID);
                return dr;
            }

        }
        public override int Add(Feed f)
        {
            return Blogic.AddNewFeed(f);
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
                if (dr["DatePublised"] != DBNull.Value)
                {
                    item.DatePublised = (DateTime)dr["DatePublised"];
                }
                list.Add(item);
            }

            dr.Close();

            return list;
        }

    }
}
