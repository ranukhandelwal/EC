using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using EC.BL;
using EC.Model;
using EC.Common;

namespace ExamCrazy.Control
{
    public partial class Announcement : System.Web.UI.UserControl
    {
        public int PAGEID = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlLink csslink = new HtmlLink();
            if (Page.Header.FindControl("cssannouncement") == null)
            {
                csslink.ID = "cssannouncement";
                csslink.Attributes.Add("rel", "stylesheet");
                csslink.Attributes.Add("type", "text/css");
                csslink.Href = "CSS/announcement.css";
                Page.Header.Controls.Add(csslink);
            }
            if (!IsPostBack)
            {
                AnnounceRepository AnnounceList = new AnnounceRepository();
                ExtendedCollection<Announce> UC = AnnounceList.GetAnnounceList(PAGEID.ToString());
                //UC.Contains(
                Announce[] anouncements = new Announce[UC.Count];
                UC.CopyTo(anouncements, 0);
                AnnounceListId.DataSource = anouncements;
                AnnounceListId.DataBind();
            }

        }
    }
}