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
    public class AnnounceRepository : FeedRepository
    {
                private int FilterID;

        public AnnounceRepository()
        {
            foreach (sCategory c in constant.FeedCategory)
                if (c.Name == "ANNOUNCE")
                    CategoryID = c.ID;

        }

        public int Add(Announce u)
        {

            return base.Add(u);
        }

        public int Announce(Announce u)
        {
            return base.Update(u);
        }


        
        /// <summary>
        /// Get Announce title, author, date, hits, summmary, description etc from Announce id
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

        public static Announce ConvertFeedToAnnounce(Feed f)
        {
            Announce u = new Announce(f);
            return u;
        }

        public ExtendedCollection<Announce> GetAnnounceList()
        {
            ExtendedCollection<Announce> ulist = new ExtendedCollection<Announce>();
            IEnumerable<Announce> list = ulist.ConvertAll(base.GetFeedList(CategoryID), new Converter<Feed, Announce>(ConvertFeedToAnnounce));
            ulist.AddRange(list);
            return ulist;
        }

        public ExtendedCollection<Announce> GetAnnounceList(string s)
        {
            ExtendedCollection<Announce> ulist = new ExtendedCollection<Announce>();
            IEnumerable<Announce> list = ulist.ConvertAll(base.GetFeedList(CategoryID), new Converter<Feed, Announce>(ConvertFeedToAnnounce));
            ulist.AddRange(list);
            return ulist.FindAll(delegate(Announce u) { bool a = u.DisplayIn.Contains("," + s + ","); bool b = u.DisplayIn.Contains("," + s); bool c = u.DisplayIn.Contains(s + ","); bool d = u.DisplayIn.Equals(s); return a || b || c || d; });
            
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