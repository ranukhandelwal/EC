using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;
using System.Text;
using EC.BL.Providers.User;

public partial class Header : System.Web.UI.UserControl
{
    public string HeaderXML = "~/XML/Header.xml";
    public string filter;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.ClientScript.IsClientScriptBlockRegistered(Page.GetType(),"newscript"))
        {
            StringBuilder s = new StringBuilder();
            s.Append("$(document).ready(function() {");
            s.Append("$(\".main-nav li a.main-link\").hover(function() {");
            s.Append("$(\".main-nav li a.close\").fadeIn();");
            s.Append("$(\".main-nav li a.main-link\").removeClass(\"active\");");
            s.Append("$(this).addClass(\"active\");");
            s.Append("$(\".sub-link-bar\").animate({");
            s.Append("height: \"40px\"");
            s.Append("});");
            s.Append("$(\".sub-links\").hide();");
            s.Append("$(this).siblings(\".sub-links\").fadeIn();");
            s.Append("});");

            s.Append("});");
            Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "newscript", s.ToString(), true);
        }
        lbltest.Text = "url=" + Request.RawUrl;
        if (!Page.IsPostBack)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath(HeaderXML));
            XmlNodeList nodes = doc.SelectNodes("Header/list[contains(@displayin,'" + filter + "')]");

            string tmp = nodes.Item(0).Attributes["link"].NamespaceURI;
            tmp = nodes.Item(0).Attributes["link"].InnerText;
            tmp = nodes.Item(0).Attributes["link"].LocalName;
            tmp = nodes.Item(0).Attributes["link"].Name;
            tmp = nodes.Item(0).Attributes["link"].Value;
            header.DataSource = nodes;
            header.DataBind();
     

        }

    }

    protected XmlNodeList GetChild(XmlNode x)
    {
        return x.SelectNodes("sub"+  "[contains(@displayin,'" + filter + "')]");
    }
}
