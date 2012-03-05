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
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void btnCreateASPXs_Click(object sender, EventArgs e)
        {
            frmCreateASPXs FrmCreateASPXs = new frmCreateASPXs();
            FrmCreateASPXs.ShowDialog();
        }

        private void btnCreateHTMLBody_Click(object sender, EventArgs e)
        {
            frmGenerateHTMLBody FrmGenerateHTMLBody = new frmGenerateHTMLBody();
            FrmGenerateHTMLBody.ShowDialog();
        }

        private void btnPutURLsInExcel_Click(object sender, EventArgs e)
        {
            frmPutURLsInExcel FrmPutURLsInExcel = new frmPutURLsInExcel();

            FrmPutURLsInExcel.ShowDialog();
        }

        private void button1_Click(object sender, EventArgs e)
        {




            string sPat = @" J:\ExamCrazyNewSiteUpld";

            //Looping through Old asp folder
            string[] FolderEntries = Directory.GetDirectories(sPat, "*", SearchOption.AllDirectories);
            
 
            foreach (string folderName in FolderEntries)
            {
                if (folderName.Contains("img_"))
                {
                    System.IO.Directory.Delete(folderName,true);
                }
            }

            MessageBox.Show("Done");

        }

        //STARTS - One time used metods 

        private void renameFiles()
        {

            string sPat = @"J:\ExamCrazyOldSite\OldBodyDocxFiles\FIlesCopiedTillNow\Indian University System";

            //Looping through Old asp folder
            string[] fileEntries = Directory.GetFiles(sPat, "*", SearchOption.TopDirectoryOnly);

            string oldFileName = "";
            string newFileName = "";
            string tmpSrchAndRepString = "httpexamcrazy.comEducation-SystemIndia";


            foreach (string fileName in fileEntries)
            {

                if (fileName.Contains(tmpSrchAndRepString))
                {
                    oldFileName = fileName;

                    newFileName = fileName.Replace(".asp", "");
                    newFileName = newFileName.Replace(tmpSrchAndRepString, "");
                    //newFileName = newFileName.Replace(" ", "");

                    File.Move(oldFileName, newFileName);

                }
            }

            MessageBox.Show("Done");

        }

        private void btnPutASPXForAllURLs_Click(object sender, EventArgs e)
        {

            //Looping through Old asp folder
            string[] fileEntries = Directory.GetFiles(@"J:\ExamCrazyNewSite", "*", SearchOption.AllDirectories);

            string curFileName = "";

            foreach (string fileName in fileEntries)
            {
                curFileName = fileName.ToLower();
                if (fileName.Contains(".aspx") && !fileName.Contains(".aspx.cs") && !fileName.Contains(".aspx.designer.cs"))
                {

                }
            }



            //END - One time used metods 
        }

        private void btnCreateMasters_Click(object sender, EventArgs e)
        {
            frmCreateMasters FrmCreateMasters = new frmCreateMasters();

            FrmCreateMasters.ShowDialog();
        }
    }
}
