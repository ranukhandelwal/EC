using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Text.RegularExpressions;

namespace DesktopTools
{
    public partial class frmCreateASPXs : Form
    {
        string oldAspFilePath = "";
        string NewAspXFilePath = "";
        string nameSpace = "";


        public frmCreateASPXs()
        {
            InitializeComponent();
        }

        private void frmCreateASPXs_Load(object sender, EventArgs e)
        {

        }

        private void btnCreateNewASPXs_Click(object sender, EventArgs e)
        {

            oldAspFilePath = @txtOldAspPath.Text;        //@"J:\01-Jan\OldEC\EC\Pre-Engineering";
            NewAspXFilePath = txtNewASPXPath.Text;       //@"J:\222\Pre-Engineering";
            nameSpace = NewAspXFilePath.Replace(@"j:\examcrazynewsite\", "ExamCrazy.");
            nameSpace = nameSpace.Replace(@"\",".");
            nameSpace = nameSpace.Replace("/",".");

            nameSpace = nameSpace.Replace("-", "_");

            //Looping through Old asp folder
            string[] fileEntries = Directory.GetFiles(oldAspFilePath, "*", SearchOption.TopDirectoryOnly);

            
            foreach (string fileName in fileEntries)
            {
                if (fileName.Contains(".asp") == true)
                {
                    if (fileName.ToLower().IndexOf("links") < 0)
                    {
                        FileInfo f = new FileInfo(fileName);
                        createNewASPXPage(oldAspFilePath, NewAspXFilePath, System.IO.Path.GetFileName(fileName));
                        createNewCSPage(NewAspXFilePath, fileName);
                        //createNewDesignerPage(NewAspXFilePath, System.IO.Path.GetFileName(fileName));
                        Application.DoEvents();
                        label3.Text = fileName;
                    }
                }
            }

            MessageBox.Show("Done");
        }

        public void createNewASPXPage(string oldAspFilePath1, string NewAspXFilePath, string fileName)
        {

            string newASPXPathAndFileName = NewAspXFilePath + "\\" + fileName.Replace(".asp", ".aspx");
            string oldFilePathAndName = oldAspFilePath1 + "\\" + System.IO.Path.GetFileName(fileName);

            if(!Directory.Exists(NewAspXFilePath))
                Directory.CreateDirectory(NewAspXFilePath);

            FileStream fs = null;
            if (File.Exists(newASPXPathAndFileName))
                File.Delete(newASPXPathAndFileName);

            fs = File.Create(newASPXPathAndFileName);
            fs.Close();


            string masterFileName = retMasterFileName(oldAspFilePath1 + "\\" + fileName);
            masterFileName.Trim();
            
            string newASPXCodeBehindPathAndName = NewAspXFilePath + System.IO.Path.GetFileName(fileName).Replace(".asp", ".aspx.cs");

            string constHeader1 = "<%@ Page Language=\"C#\" MasterPageFile=\"~/Masters/" + masterFileName + "\" AutoEventWireup=\"true\" CodeBehind=\"XXXXX.aspx.cs\"  Inherits=\"" + nameSpace + "." + fileName.Replace(".asp", "").Replace("-", "_") + "\" %>";
            constHeader1 = constHeader1.Replace("XXXXX", fileName.Replace(".asp", ""));
            string constHeader2 = "<%@ MasterType VirtualPath=\"~/Masters/" + masterFileName  + "\" %>";
            string constHeader3 = "<asp:Content ID=\"Content1\" ContentPlaceHolderID=\"head\" runat=\"server\"></asp:Content>";
            string constHeader4 = "<asp:Content ID=\"Content2\" ContentPlaceHolderID=\"AddToBreadCrum\" runat=\"server\"></asp:Content>";
            string constHeader5 = "<asp:Content ID=\"Content3\" ContentPlaceHolderID=\"MainContent\" runat=\"server\">";

            string bodyText = readFullOldFile(System.IO.Path.GetFileName(fileName));

            bodyText = bodyText.Replace("//image", "/image");

            string constHeader6 = "</asp:Content>";


            TextWriter tw = new StreamWriter(newASPXPathAndFileName);

            tw.WriteLine(constHeader1);
            tw.WriteLine(constHeader2);
            tw.WriteLine(constHeader3);
            tw.WriteLine(constHeader4);
            tw.WriteLine(constHeader5);
            tw.WriteLine(bodyText);
            tw.WriteLine(constHeader6);
            tw.Close();

        }

        public string retMasterFileName(string oldAspPath)
        {
            string contentOFOldAsp = File.ReadAllText(oldAspPath);
            contentOFOldAsp = contentOFOldAsp.ToLower();
            string tmpMasterFileName = "";

            contentOFOldAsp = contentOFOldAsp.Replace(".asp", ".master");
            contentOFOldAsp = contentOFOldAsp.Replace("-", "_");
            //Looping through Old asp folder
            string[] fileEntries = Directory.GetFiles(@"J:\ExamCrazyNewSite\Masters", "*", SearchOption.TopDirectoryOnly);

            foreach (string fileName in fileEntries)
            {
                if (fileName.Contains(".master"))
                {
                    tmpMasterFileName=System.IO.Path.GetFileName(fileName);
                    tmpMasterFileName = tmpMasterFileName.ToLower();
                    if (contentOFOldAsp.IndexOf(tmpMasterFileName) > 0)
                    {
                        return tmpMasterFileName;
                    }
                }
            }

            MessageBox.Show("can not detect any master for " + oldAspPath);
            return "";            
        }
    
        public void createNewCSPage(string NewAspXFilePath, string fileName)
        {
            string oldASPFileFullPathAndName = fileName;
            string metaDescription = "";
            string metaKeyphrase = "";
            string metaKeywords = "";
            string Title = "";


            metaDescription = getSpecificTextFromOldAsp(oldASPFileFullPathAndName,"<META name=\"description\" content=\"","\">");
            metaDescription = metaDescription.Replace(System.Environment.NewLine, " ");

            metaKeyphrase = getSpecificTextFromOldAsp(oldASPFileFullPathAndName, "<META name=\"keyphrase\" content=\"", "\">");
            metaKeyphrase = metaKeyphrase.Replace(System.Environment.NewLine, " ");

            metaKeywords = getSpecificTextFromOldAsp(oldASPFileFullPathAndName, "<META name=\"keywords\" content=\"", "\">");
            metaKeywords = metaKeywords.Replace(System.Environment.NewLine, " ");

            Title = getSpecificTextFromOldAsp(oldASPFileFullPathAndName, "<title>", "</title>");
            Title = Title.Replace(System.Environment.NewLine, " ");


            fileName = System.IO.Path.GetFileName(fileName);
            
            string neCSPathAndFileName = NewAspXFilePath + "\\" + fileName.Replace(".asp", ".aspx.cs");
            
            FileStream fs = null;
            if (File.Exists(neCSPathAndFileName))
                File.Delete(neCSPathAndFileName);

            fs = File.Create(neCSPathAndFileName);
            fs.Close();


            string tmpClassName = "";
            using (TextWriter tw = new StreamWriter(neCSPathAndFileName))
            {
                tmpClassName = "    public partial class XXXX : System.Web.UI.Page";
                tmpClassName = tmpClassName.Replace("XXXX", fileName.Replace(".asp", ""));
                tmpClassName = tmpClassName.Replace("-", "_");
                tw.WriteLine("using System;");
                tw.WriteLine("using System.Collections.Generic;");
                tw.WriteLine("");
                tw.WriteLine("using System.Web;");
                tw.WriteLine("using System.Web.UI;");
                tw.WriteLine("using System.Web.UI.WebControls;");
                tw.WriteLine("using System.Web.UI.HtmlControls;");
                tw.WriteLine("");
                tw.WriteLine("namespace " + nameSpace);
                tw.WriteLine("{");
                tw.WriteLine(tmpClassName);
                tw.WriteLine("    {");
                tw.WriteLine("        protected void Page_Load(object sender, EventArgs e)");
                tw.WriteLine("        {");
                
                tw.WriteLine("Page.Header.Title =\"" +  Title + "\";");
                tw.WriteLine("HtmlMeta metaTag = new HtmlMeta();");
                tw.WriteLine("metaTag.Name =  \"" + metaKeywords + "\";");
                tw.WriteLine("metaTag.Content=\"" + metaDescription + "\";");
                tw.WriteLine("this.Header.Controls.Add(metaTag);");
                
                tw.WriteLine("");
                tw.WriteLine("        }");
                tw.WriteLine("    }");
                tw.WriteLine("}");
                tw.Close();
            }
        }

        public string getSpecificTextFromOldAsp(string oldAspPath, string startText,string endText)
        {
            string textFound = "";
            string fullFileText = "";
            string tmpStrLeft = "";
            string tmpStrRight = "";
            int tmpLoc=-1;
            //oldASPFileFullPathAndName,"<META name=\"description\"","\">"
            
            fullFileText = File.ReadAllText(oldAspPath);

            fullFileText = fullFileText.Replace("   ", " ");
            fullFileText = fullFileText.Replace("  ", " ");
            fullFileText = fullFileText.Replace("  ", " ");
            fullFileText = fullFileText.Replace("\" >", "\">");
            fullFileText = fullFileText.Replace("<meta", "<META");

            fullFileText = fullFileText.Replace("<TITLE>", "<title>");
            fullFileText = fullFileText.Replace("</TITLE>", "</title>");

            tmpLoc = fullFileText.IndexOf((startText));

            if (tmpLoc > -1)
            {
                tmpStrRight = fullFileText.Substring(tmpLoc); //get the right part of string -Starting from start text
                tmpStrLeft = tmpStrRight.Substring(0, tmpStrRight.IndexOf(endText)); // get the left part from end text
                tmpStrLeft = tmpStrLeft.Substring(startText.Length); //remove the strat string from final outcome string
                textFound = tmpStrLeft;
            }
            else
            {
                textFound = "";
                if (startText.IndexOf("keyphrase") < 0) // do not shwo message for keyphrase as its not written in original files  also
                    MessageBox.Show("Did not fond " + startText + " in the file " + oldAspPath);
                textFound = "";
            }
            return textFound;

            

        }
        public void createNewDesignerPage(string NewAspXFilePath, string fileName)
        {
            string newDesignerPathAndFileName = NewAspXFilePath + "\\" + fileName.Replace(".asp", ".aspx.designer.cs");

            FileStream fs = null;
            if (File.Exists(newDesignerPathAndFileName))
                File.Delete(newDesignerPathAndFileName);

            fs = File.Create(newDesignerPathAndFileName);
            fs.Close();


            
            string tmpClassName = "";

            int indexOfEx = NewAspXFilePath.IndexOf("222");

            using (TextWriter tw = new StreamWriter(newDesignerPathAndFileName))
            {
                tmpClassName = "    public partial class XXXX {";
                tmpClassName = tmpClassName.Replace("XXXX", fileName.Replace(".asp", ""));
                tmpClassName = tmpClassName.Replace("-", "_");
                tw.WriteLine("//------------------------------------------------------------------------------");
                tw.WriteLine("// <auto-generated>");
                tw.WriteLine("//     This code was generated by a tool.");
                tw.WriteLine("//");
                tw.WriteLine("//     Changes to this file may cause incorrect behavior and will be lost if");
                tw.WriteLine("//     the code is regenerated. ");
                tw.WriteLine("// </auto-generated>");
                tw.WriteLine("//------------------------------------------------------------------------------");
                tw.WriteLine("");
                tw.WriteLine("namespace " + nameSpace + " {");
                tw.WriteLine("    ");
                tw.WriteLine("    ");
                tw.WriteLine(tmpClassName);
                tw.WriteLine("        ");
                tw.WriteLine("        /// <summary>");
                tw.WriteLine("        /// Master property.");
                tw.WriteLine("        /// </summary>");
                tw.WriteLine("        /// <remarks>");
                tw.WriteLine("        /// Auto-generated property.");
                tw.WriteLine("        /// </remarks>");
                tw.WriteLine("        public new ExamCrazy.Pre_Engineering.Engineering1 Master {");
                tw.WriteLine("            get {");
                tw.WriteLine("                return ((ExamCrazy.Pre_Engineering.Engineering1)(base.Master));");
                tw.WriteLine("            }");
                tw.WriteLine("        }");
                tw.WriteLine("    }");
                tw.WriteLine("}");
                tw.Close();
            }

        }

        public string readFullOldFile(string oldFileToRead)
        {
            oldFileToRead = oldFileToRead.ToLower();

            
            string htmlBodyPath = txtHTMLBodyPath.Text;
            string htmlFileName = oldFileToRead.Replace(".asp", ".htm");

            string content = "";
            if (Directory.Exists(@htmlBodyPath))// + "\\" + htmlFileName))
            {
                content = File.ReadAllText(@htmlBodyPath + "\\" + htmlFileName);
            }
            else
            {
                MessageBox.Show("html body not found");
                content = "PAGE UNDER CONSTRUCTION";
            }

            string imgaeFolderName = "img" + "_" + oldFileToRead.Replace(".asp", "");
            string folderToContainImageFolders = txtNewASPXPath.Text.Replace(@"j:\examcrazynewsite\", "/");
            string fullPathOfCurrentImageFolder =  txtNewASPXPath.Text + "\\" + imgaeFolderName;

            string tmpStr = txtNewASPXPath.Text + "\\" + imgaeFolderName + "\\";
            if (Directory.Exists(tmpStr))
            {
                Directory.Delete(tmpStr, true);
            }
            
            Directory.CreateDirectory(tmpStr);
            

            if(Directory.Exists(txtHTMLBodyPath.Text + "\\" + imgaeFolderName.Replace("img_","") +"\\word\\media"))
            {
                String[] files = Directory.GetFiles(txtHTMLBodyPath.Text + "\\" + imgaeFolderName.Replace("img_","") +"\\word\\media" , "*.*");
	 
	            foreach(string imgFile in files)
	            {
                    string destfile = Path.Combine(fullPathOfCurrentImageFolder, System.IO.Path.GetFileName(imgFile));
                    File.Copy(imgFile, destfile, true);
	         
	            }
            }

            content = content.Replace("C:\\AAAA\\", folderToContainImageFolders.Replace("\\","/") + "/" + imgaeFolderName + "/");
            content = content.Replace(@"C:\utils\ec\test\tmp\IdealDiode\word\media/", folderToContainImageFolders + "/" + imgaeFolderName + "/");

            content = content.Replace("<html>","");
            content = content.Replace("<head>", "");
            content = content.Replace("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>", "");
            content = content.Replace("</head>", "");


            //content = content.Replace(System.Environment.NewLine + "<br>", System.Environment.NewLine);
            content = content.Replace("<br></html>", "");
            content = content.Replace("</html>", "");
            content = ReplaceFirstOccurrence(content, "<table border=\"1\">", "<table border=\"0\" width=\"99%\" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>");
            content = content.Replace("<table border=\"1\">", "<Table border=\"1\" cellspacing=\"2\" cellpadding=\"2\" bordercolor=\"#c4c4c4\">");
            
            content = content.Replace("<table ", System.Environment.NewLine + "<table ");
            content = content.Replace("<tr>", System.Environment.NewLine + "    " + "<tr>");
            content = content.Replace("<td>", System.Environment.NewLine + "      " + "<td>");
            content = content.Replace("<td>", System.Environment.NewLine + "      " + "<td>");

            content = content.Replace("<td>", "<td class=\"txt\">");

            content = content.Replace("TargetMode=\"External>\"",">");
            content = content.Replace("<a  href","<a href");
            content = content.Replace("<a   href", "<a href");
            content = content.Replace("<a    href", "<a href");
            content = content.Replace("<a     href", "<a href");
            content = content.Replace("< /a>", "</a>");
            content = content.Replace("<  /a>", "</a>");
            content = content.Replace("<\" >", "\">");
            content = content.Replace("<\"  >", "\">");

            content = "<div class=\"gbody txt\">" + content + "</div>";
            content = ReplaceFirstOccurrence(content, "<br>", "");
            
            
            int hyperLinkCnt = 0;
            while (content.IndexOf("<a href") > 0)
            {
                hyperLinkCnt = hyperLinkCnt  + 1;
                content = strProcessURL(content,hyperLinkCnt );
            }

            return (content);
    
            /*content = returnSubStringOfContent(content, "<%@", "%>", "REMOVE");*/

        }

        public string strProcessURL(string sTmpContent, int hyperLinkID)
        {
            string strHypeLinkStr = "";
            string NavigateUrl = "";
            string NavigateUrlText = "";
            string newDotNetStyleURL = "";
            int startOfHLink = -1;
            int endOfHLink = -1;
            
            //sTmpContent = sTmpContent.ToLower().Replace("<%=root_path%>", "");
            Regex regex1 = new Regex("<%=root_path%>", RegexOptions.IgnoreCase);
            sTmpContent = regex1.Replace(sTmpContent, "");

            //Regex regex2 = new Regex("rupees", RegexOptions.IgnoreCase);
            //sTmpContent = regex2.Replace(sTmpContent, "RRRRRRRRRRR");

            startOfHLink = sTmpContent.IndexOf("<a href");
            endOfHLink = sTmpContent.IndexOf("</a>") + 4;

            strHypeLinkStr = sTmpContent.Substring(startOfHLink,endOfHLink-startOfHLink);

            if (strHypeLinkStr.ToLower().IndexOf(".asp") > 0)
            {
                NavigateUrl = strHypeLinkStr.Substring(strHypeLinkStr.IndexOf("\""), strHypeLinkStr.ToLower().IndexOf(".asp") - strHypeLinkStr.IndexOf("\""));
                NavigateUrl = NavigateUrl.ToLower().Replace("http://", "");
                NavigateUrl = NavigateUrl.ToLower().Replace("www.", "");
                NavigateUrl = NavigateUrl.ToLower().Replace("examcrazy.com/", "");
                NavigateUrl = NavigateUrl.ToLower().Replace(".asp", ".aspx");
                NavigateUrl = "~/" + NavigateUrl + ".aspx";
            
            }
            else if (strHypeLinkStr.ToLower().IndexOf(".php") > 0)
            {
                NavigateUrl = strHypeLinkStr.Substring(strHypeLinkStr.IndexOf("\""), strHypeLinkStr.ToLower().IndexOf(".php") - strHypeLinkStr.IndexOf("\""));
                NavigateUrl = NavigateUrl + ".php"; ;                
            
            }
            else if (strHypeLinkStr.ToLower().IndexOf(".com") > 0)
            {
                NavigateUrl = strHypeLinkStr.Substring(strHypeLinkStr.IndexOf("\""), strHypeLinkStr.ToLower().IndexOf(".com") - strHypeLinkStr.IndexOf("\""));
                NavigateUrl = NavigateUrl + ".com";                
            }
            else if (strHypeLinkStr.ToLower().IndexOf(".edu") > 0)
            {
                NavigateUrl = strHypeLinkStr.Substring(strHypeLinkStr.IndexOf("\""), strHypeLinkStr.ToLower().IndexOf(".edu") - strHypeLinkStr.IndexOf("\""));
                NavigateUrl = NavigateUrl + ".edu";
            }
            else if (strHypeLinkStr.ToLower().IndexOf(".pdf") > 0)
            {
                NavigateUrl = strHypeLinkStr.Substring(strHypeLinkStr.IndexOf("\""), strHypeLinkStr.ToLower().IndexOf(".pdf") - strHypeLinkStr.IndexOf("\""));
                NavigateUrl = NavigateUrl + ".pdf"; 
            }
            else if (strHypeLinkStr.ToLower().IndexOf(".in") > 0)
            {
                NavigateUrl = strHypeLinkStr.Substring(strHypeLinkStr.IndexOf("\""), strHypeLinkStr.ToLower().IndexOf(".in") - strHypeLinkStr.IndexOf("\""));
                NavigateUrl = NavigateUrl + ".in";
            }
            else if (strHypeLinkStr.ToLower().IndexOf(">") > 0)
            {
                NavigateUrl = strHypeLinkStr.Substring(strHypeLinkStr.IndexOf("\""), strHypeLinkStr.ToLower().IndexOf(">") - strHypeLinkStr.IndexOf("\""));
               // NavigateUrl = NavigateUrl + ")";
            }
            else if (strHypeLinkStr.ToLower().IndexOf(")") > 0)
            {
                NavigateUrl = strHypeLinkStr.Substring(strHypeLinkStr.IndexOf("\""), strHypeLinkStr.ToLower().IndexOf(")") - strHypeLinkStr.IndexOf("\""));
                NavigateUrl = NavigateUrl + ")";
            }
            else
            {
                NavigateUrl = strHypeLinkStr.Substring(strHypeLinkStr.IndexOf("\""), strHypeLinkStr.ToLower().IndexOf("();") - strHypeLinkStr.IndexOf("\""));
            }
            NavigateUrl = NavigateUrl.Replace("\"", "");
            

            NavigateUrlText = strHypeLinkStr.Substring(strHypeLinkStr.IndexOf(">")+1, strHypeLinkStr.IndexOf("</a>") - strHypeLinkStr.IndexOf(">")-1);
           // NavigateUrlText = ToUpperFirstLetter(NavigateUrlText);
            newDotNetStyleURL = "<asp:HyperLink ID=\"HyperLink" + hyperLinkID.ToString() + "\" runat=\"server\" Text=\"" + NavigateUrlText + "\" NavigateUrl=\"" + NavigateUrl + "\"></asp:HyperLink>";



            //Regex regex3 = new Regex(strHypeLinkStr, RegexOptions.IgnoreCase);
            //sTmpContent = regex1.Replace(sTmpContent, newDotNetStyleURL,1);
            sTmpContent = ReplaceFirstOccurrence(sTmpContent, strHypeLinkStr, newDotNetStyleURL);
            //sTmpContent = sTmpContent.Replace(strHypeLinkStr, newDotNetStyleURL);
            return sTmpContent;
        }

        public  string ToUpperFirstLetter(string source)
        {
            if (string.IsNullOrEmpty(source))
                return string.Empty;
            // convert to char array of the string
            char[] letters = source.ToCharArray();
            // upper case the first char
            letters[0] = char.ToUpper(letters[0]);
            // return the array made of the new char array
            return new string(letters);
        }

        public static string ReplaceFirstOccurrence(string Source, string Find, string Replace)
        {
            int Place = Source.IndexOf(Find);
            if (Place > -1)
            {
                string result = Source.Remove(Place, Find.Length).Insert(Place, Replace);
                return result;
            }
            else
                return Source;
                
        }

        public static string ReplaceLastOccurrence(string Source, string Find, string Replace)
        {
            int Place = Source.LastIndexOf(Find);
            string result = Source.Remove(Place, Find.Length).Insert(Place, Replace);
            return result;
        }

        public string returnSubStringOfContent(string lContent, string startChar, string endChar, string action1)
        {

            int searchStartIndex = -1;
            int searchEndIndex = -1;

            searchStartIndex = lContent.IndexOf(startChar);
            searchEndIndex = lContent.IndexOf(endChar);

            if (searchStartIndex > -1 && searchEndIndex > -1)
            { }
            else
            {
                MessageBox.Show("some issue for start/end chars of " + startChar + " AND " + endChar);
                return "";
            }

            switch (action1)
            {
                case "REMOVE":
                    {
                        lContent = lContent.Substring(searchEndIndex + endChar.Length);
                    }
                    return (lContent);

                case "COMMENT":
                    {

                        Regex r = new Regex(startChar, RegexOptions.IgnoreCase);
                        lContent = r.Replace(lContent, "<!--", 1);

                        Regex r1 = new Regex(endChar, RegexOptions.IgnoreCase);
                        lContent = r1.Replace(lContent, "-->", 1);

                    }
                    return (lContent);
                default:
                    return (lContent);

            }
        }

        private string prcessURLForMaster(string sTmpContent, int hyperLinkID,string newTmpFileName)
        {

            string strHypeLinkStr = "";
            string NavigateUrl = "";
            string NavigateUrlText = "";
            string newDotNetStyleURL = "";
            int startOfHLink = -1;
            int endOfHLink = -1;

            sTmpContent = sTmpContent.Replace("\n", "");
            startOfHLink = sTmpContent.ToLower().IndexOf("href=\"");
            endOfHLink = sTmpContent.ToLower().IndexOf("</a></td></tr>") + 14;

            strHypeLinkStr = sTmpContent.Substring(startOfHLink, endOfHLink - startOfHLink);

            NavigateUrl = strHypeLinkStr.Substring(strHypeLinkStr.IndexOf("\""), strHypeLinkStr.IndexOf("\">")-4);

            NavigateUrl = NavigateUrl.ToLower().Replace("http://", "");
            NavigateUrl = NavigateUrl.ToLower().Replace("www.", "");
            NavigateUrl = NavigateUrl.ToLower().Replace("examcrazy.com", "~/");
            NavigateUrl = NavigateUrl.ToLower().Replace("<%=root_path%>", "~/");
            NavigateUrl = NavigateUrl.ToLower().Replace(".asp", ".aspx");
            NavigateUrlText = strHypeLinkStr.Substring(strHypeLinkStr.IndexOf("\">") + 2, strHypeLinkStr.ToLower().IndexOf("</a>") - strHypeLinkStr.IndexOf("\">")-2);
            NavigateUrl = NavigateUrl.Replace("\"", "");
            //<a id="A1" href="~/pre-engineering/maths.aspx" runat=server title="B.E./B.Tech in India"><li class="active"><span class="icon"></span><span>B.E./B.Tech in India</span></li></a>

            newDotNetStyleURL = "<a id=\"HL" + hyperLinkID + "\" href=\"" + NavigateUrl + "\" runat=\"server\" title=\"" + NavigateUrlText + "\"<li class=\"active\"><span class=\"icon\"></span><span>" + NavigateUrlText + "</span></li></a>";
            newDotNetStyleURL = newDotNetStyleURL.Replace("</font>", "");
            newTmpFileName = newTmpFileName.ToLower();
            newTmpFileName = newTmpFileName.Replace(".master", ".asp");
            FileStream fs = null;
            if (!File.Exists(newTmpFileName))
            {
                fs = File.Create(newTmpFileName);
                fs.Close();
            }

            System.IO.File.AppendAllText(newTmpFileName, "\n" + newDotNetStyleURL);

            /*TextWriter tw = new StreamWriter(newTmpFileName);
            tw.WriteLine(newDotNetStyleURL);
            tw.Close();*/


            sTmpContent = sTmpContent.Substring(sTmpContent.IndexOf("</a></td></tr>") + 14);

            //System.IO.File.AppendAllText(newTmpFileName, sTmpContent);
            return sTmpContent;
            
        }

        private void copyAllLinkFiles()
        {
            string kk = "";
            string[] fileEntriesASPs = Directory.GetFiles(@"J:\ExamCrazyOldSite\ForJaySingh\EC-Asp", "*", SearchOption.AllDirectories);

            foreach (string fileNameASPs in fileEntriesASPs)
            {
                if (fileNameASPs.ToLower().IndexOf("link") > 0 || fileNameASPs.IndexOf("Link") > 0)
                {
                    kk = System.IO.Path.GetFileName(fileNameASPs).ToLower();
                    File.Copy(fileNameASPs, @"J:\ExamCrazyNewSite\Masters\OldASPLinkFiles\" + kk, false);
                }
            }
        
        }
        private void btnUpdateMaster_Click(object sender, EventArgs e)
        {
            
            string contentOFOldAsp ="";
            string masterFileName = "";
            string ASPLinkFileName = "";
            contentOFOldAsp = contentOFOldAsp.Replace(".asp", ".master");

            int hyperLinkCnt = 0;
            string[] fileEntries = Directory.GetFiles(@"J:\ExamCrazyNewSite\Masters", "*", SearchOption.TopDirectoryOnly);

            foreach (string fileName in fileEntries)
            {
                masterFileName = System.IO.Path.GetFileName(fileName).ToLower();
                if (fileName.Contains(".master"))
                {
                    string[] fileEntriesASPs = Directory.GetFiles(@"J:\ExamCrazyNewSite\Masters\OldASPLinkFiles", "*", SearchOption.TopDirectoryOnly);                    
                    foreach (string fileNameASPs in fileEntriesASPs)
                    {
                        ASPLinkFileName = System.IO.Path.GetFileName(fileNameASPs).ToLower().Replace("-","-");
                        if (ASPLinkFileName.Replace(".asp", "").Replace("-","_") == masterFileName.Replace(".master", ""))
                        {                            
                            contentOFOldAsp = File.ReadAllText(fileNameASPs);
                            hyperLinkCnt = 0;
                            string newTmpFileName = fileName.Replace(".master", ".asp");
                            FileStream fs = null;
                            if (!File.Exists(newTmpFileName))
                            {
                                while (contentOFOldAsp.IndexOf("llbg") > 0 || contentOFOldAsp.IndexOf("LLBG") > 0)
                                {
                                    hyperLinkCnt = hyperLinkCnt + 1;
                                    contentOFOldAsp = prcessURLForMaster(contentOFOldAsp, hyperLinkCnt, fileName);
                                }    
                            }
                            
                        }
                    }
                }
            }
            MessageBox.Show("done");
        }

        private void btnCopyAllLinkFilesToMaster_Click(object sender, EventArgs e)
        {
            copyAllLinkFiles();
        }
    }
}
