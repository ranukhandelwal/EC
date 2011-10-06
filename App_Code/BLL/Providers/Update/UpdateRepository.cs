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
    public class UpdateRepository : FeedRepository
    {
        private int FilterID;

        public UpdateRepository()
        {
            foreach (sCategory c in constant.FeedCategory)
                if (c.Name == "UPDATE")
                    CategoryID = c.ID;

        }

        public int Add(Update u)
        {

            return base.Add(u);
        }

        public int Update(Update u)
        {
            return base.Update(u);
        }


        
        /// <summary>
        /// Get Update title, author, date, hits, summmary, description etc from Update id
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

        public static Update ConvertFeedToUpdate(Feed f)
        {
            Update u = new Update(f);
            return u;
        }

        public ExtendedCollection<Update> GetUpdateList()
        {
            ExtendedCollection<Update> ulist = new ExtendedCollection<Update>();
            IEnumerable<Update> list = ulist.ConvertAll(base.GetFeedList(CategoryID), new Converter<Feed, Update>(ConvertFeedToUpdate));
            ulist.AddRange(list);
            return ulist;
        }

        public ExtendedCollection<Update> GetUpdateList(string s)
        {
            ExtendedCollection<Update> ulist = new ExtendedCollection<Update>();
            IEnumerable<Update> list = ulist.ConvertAll(base.GetFeedList(CategoryID), new Converter<Feed, Update>(ConvertFeedToUpdate));
            ulist.AddRange(list);
            return ulist.FindAll(delegate(Update u) { bool a = u.DisplayIn.Contains("," + s + ","); bool b = u.DisplayIn.Contains("," + s); bool c = u.DisplayIn.Contains(s + ","); bool d = u.DisplayIn.Equals(s); return a || b || c || d; });
            
        }

        public bool FilterDisplay<T>(string s)
        {
            s = "," + s + ",";
            if(DisplayIn.Contains(s))
                return true;

            s = "," + s;
            if (DisplayIn.Contains(s))
                return true;

            s = s + ",";
            if (DisplayIn.Contains(s))
                return true;

            // s = s;
            if (DisplayIn.Contains(s))
                return true;

            return false;
            
        }

    }
}
