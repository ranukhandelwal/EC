namespace DesktopTools
{
    partial class frmMain
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
            this.btnCreateASPXs = new System.Windows.Forms.Button();
            this.btnCreateHTMLBody = new System.Windows.Forms.Button();
            this.btnPutURLsInExcel = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.btnPutASPXForAllURLs = new System.Windows.Forms.Button();
            this.btnCreateMasters = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnCreateASPXs
            // 
            this.btnCreateASPXs.Location = new System.Drawing.Point(62, 143);
            this.btnCreateASPXs.Name = "btnCreateASPXs";
            this.btnCreateASPXs.Size = new System.Drawing.Size(186, 23);
            this.btnCreateASPXs.TabIndex = 0;
            this.btnCreateASPXs.Text = "Create ASPXs";
            this.btnCreateASPXs.UseVisualStyleBackColor = true;
            this.btnCreateASPXs.Click += new System.EventHandler(this.btnCreateASPXs_Click);
            // 
            // btnCreateHTMLBody
            // 
            this.btnCreateHTMLBody.Location = new System.Drawing.Point(62, 77);
            this.btnCreateHTMLBody.Name = "btnCreateHTMLBody";
            this.btnCreateHTMLBody.Size = new System.Drawing.Size(186, 23);
            this.btnCreateHTMLBody.TabIndex = 1;
            this.btnCreateHTMLBody.Text = "Generate HTML Body";
            this.btnCreateHTMLBody.UseVisualStyleBackColor = true;
            this.btnCreateHTMLBody.Click += new System.EventHandler(this.btnCreateHTMLBody_Click);
            // 
            // btnPutURLsInExcel
            // 
            this.btnPutURLsInExcel.Location = new System.Drawing.Point(62, 206);
            this.btnPutURLsInExcel.Name = "btnPutURLsInExcel";
            this.btnPutURLsInExcel.Size = new System.Drawing.Size(186, 23);
            this.btnPutURLsInExcel.TabIndex = 2;
            this.btnPutURLsInExcel.Text = "Put URLs in Excel";
            this.btnPutURLsInExcel.UseVisualStyleBackColor = true;
            this.btnPutURLsInExcel.Click += new System.EventHandler(this.btnPutURLsInExcel_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(62, 251);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(186, 23);
            this.button1.TabIndex = 3;
            this.button1.Text = "temp ations";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // btnPutASPXForAllURLs
            // 
            this.btnPutASPXForAllURLs.Location = new System.Drawing.Point(62, 307);
            this.btnPutASPXForAllURLs.Name = "btnPutASPXForAllURLs";
            this.btnPutASPXForAllURLs.Size = new System.Drawing.Size(186, 23);
            this.btnPutASPXForAllURLs.TabIndex = 4;
            this.btnPutASPXForAllURLs.Text = "Put .aspx Extension to all URLS";
            this.btnPutASPXForAllURLs.UseVisualStyleBackColor = true;
            this.btnPutASPXForAllURLs.Click += new System.EventHandler(this.btnPutASPXForAllURLs_Click);
            // 
            // btnCreateMasters
            // 
            this.btnCreateMasters.Location = new System.Drawing.Point(62, 370);
            this.btnCreateMasters.Name = "btnCreateMasters";
            this.btnCreateMasters.Size = new System.Drawing.Size(186, 23);
            this.btnCreateMasters.TabIndex = 5;
            this.btnCreateMasters.Text = "Create Master Forms";
            this.btnCreateMasters.UseVisualStyleBackColor = true;
            this.btnCreateMasters.Click += new System.EventHandler(this.btnCreateMasters_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(526, 434);
            this.Controls.Add(this.btnCreateMasters);
            this.Controls.Add(this.btnPutASPXForAllURLs);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.btnPutURLsInExcel);
            this.Controls.Add(this.btnCreateHTMLBody);
            this.Controls.Add(this.btnCreateASPXs);
            this.Name = "frmMain";
            this.Text = "Main";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnCreateASPXs;
        private System.Windows.Forms.Button btnCreateHTMLBody;
        private System.Windows.Forms.Button btnPutURLsInExcel;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btnPutASPXForAllURLs;
        private System.Windows.Forms.Button btnCreateMasters;
    }
}

