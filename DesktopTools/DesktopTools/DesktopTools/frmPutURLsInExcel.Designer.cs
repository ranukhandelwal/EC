namespace DesktopTools
{
    partial class frmPutURLsInExcel
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnPutURLs = new System.Windows.Forms.Button();
            this.txtCurrentAspSiteRootPath = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtAllreadyCopiedDocx = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnPutURLs
            // 
            this.btnPutURLs.Location = new System.Drawing.Point(88, 196);
            this.btnPutURLs.Name = "btnPutURLs";
            this.btnPutURLs.Size = new System.Drawing.Size(209, 23);
            this.btnPutURLs.TabIndex = 0;
            this.btnPutURLs.Text = "Put all Old and New URLs in excel";
            this.btnPutURLs.UseVisualStyleBackColor = true;
            this.btnPutURLs.Click += new System.EventHandler(this.btnPutURLs_Click);
            // 
            // txtCurrentAspSiteRootPath
            // 
            this.txtCurrentAspSiteRootPath.Location = new System.Drawing.Point(88, 52);
            this.txtCurrentAspSiteRootPath.Name = "txtCurrentAspSiteRootPath";
            this.txtCurrentAspSiteRootPath.Size = new System.Drawing.Size(209, 20);
            this.txtCurrentAspSiteRootPath.TabIndex = 1;
            this.txtCurrentAspSiteRootPath.Text = "J:\\ExamCrazyOldSite\\ForJaySingh\\EC-Asp";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(88, 33);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(144, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "Current ASP Site Root Folder";
            // 
            // txtAllreadyCopiedDocx
            // 
            this.txtAllreadyCopiedDocx.Location = new System.Drawing.Point(88, 140);
            this.txtAllreadyCopiedDocx.Name = "txtAllreadyCopiedDocx";
            this.txtAllreadyCopiedDocx.Size = new System.Drawing.Size(209, 20);
            this.txtAllreadyCopiedDocx.TabIndex = 4;
            this.txtAllreadyCopiedDocx.Text = "J:\\ExamCrazyOldSite\\ForJaySingh\\EC-Docx";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(88, 121);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(130, 13);
            this.label2.TabIndex = 5;
            this.label2.Text = "Already copied Docx Path";
            // 
            // frmPutURLsInExcel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(384, 314);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtAllreadyCopiedDocx);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtCurrentAspSiteRootPath);
            this.Controls.Add(this.btnPutURLs);
            this.Name = "frmPutURLsInExcel";
            this.Text = "frmPutURLsInExcel";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnPutURLs;
        private System.Windows.Forms.TextBox txtCurrentAspSiteRootPath;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtAllreadyCopiedDocx;
        private System.Windows.Forms.Label label2;
    }
}