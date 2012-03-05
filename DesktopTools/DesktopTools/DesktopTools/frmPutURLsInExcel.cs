using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace DesktopTools
{
    public partial class frmPutURLsInExcel : Form
    {
        public frmPutURLsInExcel()
        {
            InitializeComponent();
        }

        private void btnPutURLs_Click(object sender, EventArgs e)
        {

            string oldAspFilePath = @txtCurrentAspSiteRootPath.Text;
            string strDocxPath = @txtAllreadyCopiedDocx.Text;
            
            string tmpTxtFile = @"c:\tmpTXT.txt";
            
            FileStream fs = null;
            fs = File.Create(tmpTxtFile);
            fs.Close();

            TextWriter tw = new StreamWriter(tmpTxtFile);


            string[] fileEntries = Directory.GetFiles(oldAspFilePath, "*", SearchOption.AllDirectories);

            int tmpNumber = 1;
            string pageURL = "";
            string newURL = "";
            
            foreach (string fileName in fileEntries)
            {
                if (fileName.Contains(".asp") || fileName.Contains(".htm"))
                {
                    FileInfo f = new FileInfo(fileName);
                    pageURL = fileName.Replace(oldAspFilePath, "");
                    pageURL = pageURL.Replace(@"\","/");
                    pageURL = pageURL.Replace("//", "/");
                    pageURL = "http://examcrazy.com/" + pageURL;

                    newURL = pageURL.Replace("examcrazy.com", "GateTutor.in");
                    newURL = newURL.Replace(".asp", "");
                    newURL = newURL.Replace(".html", "");
                    newURL = newURL.Replace(".htm", "");

                    tw.WriteLine(f.Directory + "," + System.IO.Path.GetFileName(fileName) + "," + pageURL + "," + newURL); 

                    tmpNumber = tmpNumber + 1;
                }
            }


            
            tw.Close();

            MessageBox.Show("Text file is created at " + tmpTxtFile + "  change extention to CSV");
        }

        
    }
}
