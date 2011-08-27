#region XD World Recipe V 2.8
// FileName: newrecipexml.cs
// Author: Dexter Zafra
// Date Created: 5/28/2008
// Website: www.ex-designz.net
#endregion
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using EC.UI;
using System.Xml;
using System.Text;
using System.IO;
using EC.BL;

public partial class newrecipexml : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int i = 0;

        //Note: You need to change the domain name "myasp-net.com and ex-designz.net" to your site domain
        Response.Clear();
        Response.ContentType = "text/xml";
        XmlTextWriter objX = new XmlTextWriter(Response.OutputStream, Encoding.UTF8);
        objX.WriteStartDocument();
        objX.WriteStartElement("rss");
        objX.WriteAttributeString("version", "2.0");
        objX.WriteStartElement("channel");
        objX.WriteElementString("title", "ExamCrazy.com Newest RSS Feed");
        objX.WriteElementString("link", "http://www.examcrazy.com");
        objX.WriteElementString("description", "ExamCrazy.Com RSS");
        objX.WriteElementString("copyright", "(c) 2005, ExamCrazy.Com. All rights reserved.");
        objX.WriteElementString("ttl", "10");
                
        //Get data
        IDataReader dr = Blogic.ActionProcedureDataProvider.GetRssNewFeed;

        //loop through all record, and write XML for each item.
        for (i = 0; (i <= 20 - 1) && (dr.Read() == true); i++)
        {
            objX.WriteStartElement("item");
            objX.WriteElementString("title", dr["Title"].ToString());
            objX.WriteElementString("link", dr["Title"].ToString());
            objX.WriteElementString("pubDate", Convert.ToDateTime(dr["DatePublished"]).ToShortDateString());
            objX.WriteEndElement();
        }

        dr.Close();

        //End of XML file
        objX.WriteEndElement();
        objX.WriteEndElement();
        objX.WriteEndDocument();

        //Close the XmlTextWriter object
        objX.Flush();
        objX.Close();
        Response.End(); 
    }
}