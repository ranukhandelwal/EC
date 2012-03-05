using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Diagnostics;
using System.IO;

namespace DesktopTools
{
    public partial class frmGenerateHTMLBody : Form
    {
        public frmGenerateHTMLBody()
        {
            InitializeComponent();
        }

        private void btnStartGeneratingHTMLBody_Click(object sender, EventArgs e)
        {
            string[] fileEntries = Directory.GetFiles(txtDocxRootFolderPath.Text, "*", SearchOption.AllDirectories);
            string tempFolderName = "";
            foreach (string fileName in fileEntries)
            {
                FileInfo f = new FileInfo(fileName);

                if (fileName.Contains(".zip") == false && fileName.Contains(".docx")==true)
                { 
                    f.MoveTo(Path.ChangeExtension(f.FullName + f.Extension, ".zip"));

                    tempFolderName = f.Directory.ToString() + "\\" + f.Name;
                    tempFolderName = tempFolderName.Replace(".zip", "");
                    tempFolderName = tempFolderName.Replace(".asp", "");
                    tempFolderName = tempFolderName.Replace(".docx", "");
                    ZipUtil.UnZipFiles(fileName + ".zip", tempFolderName, "", true);




                    ProcessStartInfo startInfo = new ProcessStartInfo();
                    startInfo.CreateNoWindow = true;
                    startInfo.UseShellExecute = true;
                    startInfo.FileName = "C:\\perl\\bin\\perl.exe";
                    startInfo.WindowStyle = ProcessWindowStyle.Hidden;
                    //startInfo.Arguments = "C:\\Utils\\EC\\test\\content\\xml_generator.pl" + " " + "C:\\Utils\\EC\\test\\tmp\\IdealDiode";

                    

                    string docxFolderPath = fileName;
                    label1.Text = docxFolderPath;
                    Application.DoEvents();
                    docxFolderPath = docxFolderPath.ToLower();
                    docxFolderPath = docxFolderPath.Replace(".docx", "");
                    docxFolderPath =   docxFolderPath.Replace(".asp", "");

                    startInfo.Arguments = "C:\\Utils\\EC\\test\\content\\xml_generator.pl" + " " + docxFolderPath;
                    try
                    {
                        // Start the process with the info we specified.
                        // Call WaitForExit and then the using statement will close.
                        using (Process exeProcess = Process.Start(startInfo))
                        {
                            exeProcess.WaitForExit();
                        }
                    }
                    catch(Exception ex)
                    {
                        MessageBox.Show(ex.ToString());
                    }

                    
                
                }

            }
            
            MessageBox.Show ("Done");
        }

        

        private void testFun()
        {
            
        }
    }
}
