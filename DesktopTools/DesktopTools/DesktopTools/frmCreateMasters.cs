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
    public partial class frmCreateMasters : Form
    {
        public frmCreateMasters()
        {
            InitializeComponent();
        }

        private void btnStart_Click(object sender, EventArgs e)
        {
            string[] fileEntries = Directory.GetFiles(@"J:\ExamCrazyNewSite\Masters", "*", SearchOption.TopDirectoryOnly);
            foreach (string fileName in fileEntries)
            {
                if (fileName.Contains(".master") == true && fileName.Contains(".master.cs") == false && fileName.Contains(".master.designer.cs") == false)
                {
                    label1.Text = fileName;
                    createDotMasterFile(fileName,System.IO.Path.GetFileName(fileName));
                    createDotMasterDotCSFile(System.IO.Path.GetFileName(fileName));
                    Application.DoEvents();
                }
            }

            MessageBox.Show("Done");
        }

        private void createDotMasterFile(string OldmasterFileNameAndPath, string NewMasterFileName)
        {
            string newMasterFileLocation = @"J:\ExamCrazyNewSite\Masters\Generated";
            string oldASPLinkFileNameAndPath = searchAndReturnOldASPLinkFile(NewMasterFileName);
            
            FileStream fs = null;
            //if (!File.Exists(OldmasterFileNameAndPath))
           // {
                fs = File.Create(newMasterFileLocation + "\\" + NewMasterFileName);
                fs.Close();


                TextWriter tw = new StreamWriter(newMasterFileLocation + "\\" + NewMasterFileName);
                string constHeaderT1 = returnFirstLineOfOldMaster(@"J:\ExamCrazyNewSite\Masters" + "\\" + NewMasterFileName);
                string constHeaderT1_1 = "<%@ MasterType VirtualPath=\"~/HeaderFooter.master\" %>";    
                string constHeaderT2 = "<%@ Register TagPrefix=\"ucl\" TagName=\"login\" Src=\"~/Control/Login.ascx\" %>";
                string constHeaderT3 = "<asp:Content ID=\"Content1\" ContentPlaceHolderID=\"head\" runat=\"server\">";
                string constHeaderT4 = "    <asp:ContentPlaceHolder ID=\"head\" runat=\"server\"></asp:ContentPlaceHolder>";
                string constHeaderT5 = "</asp:Content>";
                string constHeaderT6 = "<asp:Content ID=\"Content2\" ContentPlaceHolderID=\"AddToBreadCrum\" runat=\"server\">";
                string constHeaderT7 = "    <asp:ContentPlaceHolder ID=\"AddToBreadCrum\" runat=\"server\"></asp:ContentPlaceHolder>";
                string constHeaderT8 = "</asp:Content>";
                string constHeaderT9 = "<asp:Content ID=\"Content3\" ContentPlaceHolderID=\"LeftPanelHolder\" runat=\"server\">";
                string constHeaderT10 = "   <h3>Categories</h3>";
                string constHeaderT11 = "   <div class=\"LeftPanelNavigation\">";
                string constHeaderT12 = "        <div id=\"masterdiv\">";
                tw.WriteLine(constHeaderT1);
                tw.WriteLine(constHeaderT1_1);
                tw.WriteLine(constHeaderT2);
                tw.WriteLine(constHeaderT3);
                tw.WriteLine(constHeaderT4);
                tw.WriteLine(constHeaderT5);
                tw.WriteLine(constHeaderT6);
                tw.WriteLine(constHeaderT7);
                tw.WriteLine(constHeaderT8);
                tw.WriteLine(constHeaderT9);
                tw.WriteLine(constHeaderT10);
                tw.WriteLine(constHeaderT11);
                tw.WriteLine(constHeaderT12);
                //Body section - STARTS


                FileStream fileStream = null;
                StreamReader streamReader = null;
                fileStream = new FileStream(oldASPLinkFileNameAndPath, FileMode.Open);
                streamReader = new StreamReader(fileStream);


                int isBottomPartWritingPending = 0;
                int subMenuCount = 0;
                int hyperLinkCount = 0;
                while (true)
                {
                    string line = streamReader.ReadLine();

                    if (streamReader == null)
                        streamReader.Close();
                    if (fileStream == null)
                    {
                        fileStream.Close();
                        break;
                    }

                    if (line == null)
                        break;
                    if (line.IndexOf("\"LMH\"") > 0 || line.IndexOf("\"lmh\"") > 0)
                    {
                        if (isBottomPartWritingPending == 1)
                        {
                            string constHeaderMB1 = "                   </ul>";
                            string constHeaderMB2 = "               </span>";
                            string constHeaderMB3 = "            </div>";
                            string constHeaderMB4 = "        </ul>";

                            tw.WriteLine(constHeaderMB1);
                            tw.WriteLine(constHeaderMB2);
                            tw.WriteLine(constHeaderMB3);
                            tw.WriteLine(constHeaderMB4);

                        }

                        if (1 == 1)
                        {
                            line = line.Replace("\" >", "\">");
                            line = line.Replace("\"  >", "\">");
                            line = line.Replace("< /", "</");
                            line = line.ToString();
                            int startPos = 0;
                            int endPos = 0;

                            startPos = line.IndexOf("\">") + 2;
                            endPos = line.IndexOf("</");

                            string abc = line.Substring(startPos, endPos - startPos);

                            subMenuCount = subMenuCount + 1;

                            string constHeaderM1 = "        <ul>";
                            string constHeaderM2 = "             <div class=\"menutitle\" onclick=\"SwitchMenu('sub" + subMenuCount + "')\">";
                            string constHeaderM3 = "                <li class=\"\"><span>" + abc + "</span><span class=\"iconArrow\"></span></li>";
                            string constHeaderM4 = "                <span class=\"submenu\" id=\"sub" + subMenuCount + "\">";
                            string constHeaderM5 = "                    <ul>";

                            tw.WriteLine(constHeaderM1);
                            tw.WriteLine(constHeaderM2);
                            tw.WriteLine(constHeaderM3);
                            tw.WriteLine(constHeaderM4);
                            tw.WriteLine(constHeaderM5);
                            isBottomPartWritingPending = 0;
                        }


                    }

                    if (line.IndexOf("\"LL\"") > 0 || line.IndexOf("href") > 0)
                    {
                        hyperLinkCount = hyperLinkCount + 1;
                        tw.WriteLine("                          " + returnURL(line, hyperLinkCount));
                        isBottomPartWritingPending = 1;

                    }

                }


                //Body section - ENDS
                string constHeaderMB11 = "                   </ul>";
                string constHeaderMB21 = "               </span>";
                string constHeaderMB31 = "            </div>";
                string constHeaderMB41 = "        </ul>";

                tw.WriteLine(constHeaderMB11);
                tw.WriteLine(constHeaderMB21);
                tw.WriteLine(constHeaderMB31);
                tw.WriteLine(constHeaderMB41);



                string constHeaderB001 = "      </div>";
                string constHeaderB002 = "  </div>";
                string constHeaderB01 = "   <div class=\"leftSideAdd unit\"><a href=\"#\" title=\"add\"><img id=\"Img1\" src=\"~/img/left-side-add.gif\" alt=\"\" title=\"\" runat=\"server\" /></a></div>";
                string constHeaderB02 = "   <div class=\"leftSideAdd unit\"><a href=\"#\" title=\"add\"><img id=\"Img2\" src=\"~/img/addhre.gif\" alt=\"\" title=\"\" runat=\"server\" /></a></div>";
                string constHeaderB03 = "   <div class=\"leftSideAdd unit\"><a href=\"#\" title=\"add\"><img id=\"Img3\" src=\"~/img/addhre.gif\" alt=\"\" title=\"\" runat=\"server\" /></a></div>";
                string constHeaderB04 = "   <div class=\"leftSideAdd unit\"><a href=\"#\" title=\"add\"><img id=\"Img4\" src=\"~/img/addhre.gif\" alt=\"\" title=\"\" runat=\"server\" /></a></div>";
                string constHeaderB05 = "</asp:Content>";
                string constHeaderB1 = "<asp:Content ID=\"Content4\" ContentPlaceHolderID=\"MainContent\" runat=\"server\">";
                string constHeaderB2 = "    <div class=\"size3of4 unit\">";
                string constHeaderB3 = "        <div class=\"midddlePart\"><asp:ContentPlaceHolder ID=\"MainContent\" runat=\"server\"></asp:ContentPlaceHolder></div>";
                string constHeaderB4 = "    </div>";
                string constHeaderB5 = "    <div class=\" size1of4 unit\">";
                string constHeaderB6 = "        <div class=\"rightPanel unit\">";
                string constHeaderB7 = "            <ucl:login ID=\"login\" runat=\"server\" />";
                string constHeaderB8 = "            <div class=\"rightAdd unit\"><img id=\"Img5\" src=\"~/img/add2.gif\" alt=\"\" title=\"\" runat=\"server\" /></div>";
                string constHeaderB9 = "            <div class=\"rightAdd unit\"><img id=\"Img6\" src=\"~/img/add2.gif\" alt=\"\" title=\"\" runat=\"server\" /></div>";
                string constHeaderB10 = "            <div class=\"rightAdd unit\"><img id=\"Img7\" src=\"~/img/biyani.gif\" title=\"\" alt=\"\" runat=\"server\" /></div>";
                string constHeaderB11 = "            <div class=\"rightAdd unit\"><img id=\"Img8\" src=\"~/img/googleadd.gif\" title=\"\" alt=\"\" runat=\"server\" /></div>";
                string constHeaderB12 = "        </div>";
                string constHeaderB13 = "    </div>";
                string constHeaderB14 = "    <div class=\"addvertiseBig unit\">";
                string constHeaderB15 = "        <a href=\"#\" title=\"add\"><img id=\"Img9\" src=\"~/img/add7.gif\" alt=\"Adds\" title=\"adds\" runat=\"server\" /></a>";
                string constHeaderB16 = "    </div>";
                string constHeaderB17 = "</asp:Content>";

                tw.WriteLine(constHeaderB001);
                tw.WriteLine(constHeaderB002);
                tw.WriteLine(constHeaderB01);
                tw.WriteLine(constHeaderB02);
                tw.WriteLine(constHeaderB03);
                tw.WriteLine(constHeaderB04);
                tw.WriteLine(constHeaderB05);
                tw.WriteLine(constHeaderB1);
                tw.WriteLine(constHeaderB2);
                tw.WriteLine(constHeaderB3);
                tw.WriteLine(constHeaderB4);
                tw.WriteLine(constHeaderB5);
                tw.WriteLine(constHeaderB6);
                tw.WriteLine(constHeaderB7);
                tw.WriteLine(constHeaderB8);
                tw.WriteLine(constHeaderB9);
                tw.WriteLine(constHeaderB10);
                tw.WriteLine(constHeaderB11);
                tw.WriteLine(constHeaderB12);
                tw.WriteLine(constHeaderB13);
                tw.WriteLine(constHeaderB14);
                tw.WriteLine(constHeaderB15);
                tw.WriteLine(constHeaderB16);
                tw.WriteLine(constHeaderB17);
                //=======================

                tw.Close();
            //}

        }

        private int returnPageID(string fileName)
        {
            string tmpStr = fileName;
            tmpStr = tmpStr.ToLower();

            if (tmpStr.IndexOf("DDD") > 0)
                return 1; //for GATE
            
            if (tmpStr.IndexOf("DDD") > 0)
                return 2; //for IES

            if (tmpStr.IndexOf("DDD") > 0)
                return 3; //for Colleges

            if (tmpStr.IndexOf("DDD") > 0)
                return 4; //for JOBS

            if (tmpStr.IndexOf("DDD") > 0)
                return 5; //for Engineering

            if (tmpStr.IndexOf("DDD") > 0)
                return 6; //for AIEEE

            if (tmpStr.IndexOf("DDD") > 0)
                return 7; //for MBA

            if (tmpStr.IndexOf("DDD") > 0)
                return 8; //for Software-QA

            if (tmpStr.IndexOf("DDD") > 0)
                return 9; //for software-Dev

            if (tmpStr.IndexOf("DDD") > 0)
                return 10; //for medical
            MessageBox.Show("Did not find master name");
            return 0;
        }
        
        private void createDotMasterDotCSFile(string fileName)
        {
            string newMasterFileLocation = @"J:\ExamCrazyNewSite\Masters\Generated";
            
            FileStream fs = null;
           // if (!File.Exists(@"J:\ExamCrazyNewSite\Masters" + "\\" + fileName + ".cs"))
           // {
                fs = File.Create(newMasterFileLocation + "\\" + fileName + ".cs");
                fs.Close();


                TextWriter tw = new StreamWriter(newMasterFileLocation + "\\" + fileName + ".cs");

                tw.WriteLine("using System;");
                tw.WriteLine("using System.Collections.Generic;");
                tw.WriteLine("using System.Web;");
                tw.WriteLine("using System.Web.UI;");
                tw.WriteLine("using System.Web.UI.WebControls;");
                tw.WriteLine("namespace ExamCrazy.Masters");
                tw.WriteLine("{");
                tw.WriteLine("    public partial class " + fileName.Replace(".master", "").Replace("-", "_") + " : System.Web.UI.MasterPage");
                tw.WriteLine("    {");
                tw.WriteLine("      public int PAGEID = DDD;");
                tw.WriteLine("      public string HeaderFilter; //default value;");
                tw.WriteLine("       protected void Page_Load(object sender, EventArgs e)");
                tw.WriteLine("        {");
                tw.WriteLine("              if(this.PAGEID != 0)");
                tw.WriteLine("                  Master.PAGEID = this.PAGEID;");
                tw.WriteLine("              if(this.HeaderFilter != null)");
                tw.WriteLine("                  Master.HeaderFilter = this.HeaderFilter;");
                tw.WriteLine("              login.loginpanelno = 1;");
                tw.WriteLine("        }");
                tw.WriteLine("    }");
                tw.WriteLine("}");
                tw.Close();
           // }

        }

        private string searchAndReturnOldASPLinkFile(string masterFileName)
        {
            masterFileName = masterFileName.ToLower();
            string[] fileEntries = Directory.GetFiles(@"J:\ExamCrazyNewSite\Masters\OldASPLinkFiles", "*", SearchOption.TopDirectoryOnly);
            foreach (string fileName in fileEntries)
            {
                if (System.IO.Path.GetFileName(fileName).ToLower().Replace("-","_") == masterFileName.Replace(".master", ".asp"))
                {
                    return fileName;
                }
            }

            MessageBox.Show("did not find old asp for current master file " + masterFileName);
            return "";
        }


        private string returnFirstLineOfOldMaster(string oldMasterFilePathAndName)
        {
            FileStream fileStream = null;
            StreamReader streamReader = null;
            fileStream = new FileStream(oldMasterFilePathAndName, FileMode.Open);
            streamReader = new StreamReader(fileStream);
            
            string sLine = streamReader.ReadLine();
            return sLine;
        }


        private string returnURL(string sTmpContent, int hyperLinkID)
        {
            string strHypeLinkStr = "";
            string NavigateUrl = "";
            string NavigateUrlText = "";
            string newDotNetStyleURL = "";
            int startOfHLink = -1;
            int endOfHLink = -1;

            Regex regex1 = new Regex("href", RegexOptions.IgnoreCase);
            sTmpContent = regex1.Replace(sTmpContent, "href");

            Regex regex2 = new Regex("</a>", RegexOptions.IgnoreCase);
            sTmpContent = regex2.Replace(sTmpContent, "</a>");

            Regex regex3 = new Regex("<%=root_path%>", RegexOptions.IgnoreCase);
            sTmpContent = regex3.Replace(sTmpContent, "");

            startOfHLink = sTmpContent.IndexOf("href");
            endOfHLink = sTmpContent.IndexOf("</a>") + 4;

            strHypeLinkStr = sTmpContent.Substring(startOfHLink, endOfHLink - startOfHLink);

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
            NavigateUrlText = strHypeLinkStr.Substring(strHypeLinkStr.IndexOf(">") + 1, strHypeLinkStr.IndexOf("</a>") - strHypeLinkStr.IndexOf(">") - 1);
            
            //newDotNetStyleURL = "<asp:HyperLink ID=\"HyperLink" + hyperLinkID.ToString() + "\" runat=\"server\" Text=\"" + NavigateUrlText + "\" NavigateUrl=\"" + NavigateUrl + "\"></asp:HyperLink>";

            newDotNetStyleURL = "<a id=\"A" + hyperLinkID + "\" href=\"" + NavigateUrl + "\" runat=\"server\" title=\"" + NavigateUrlText + "\"><li class=\"active\"><span class=\"icon\"></span><span>" + NavigateUrlText + "</span></li></a>";
            return newDotNetStyleURL;
        }

    }
}
