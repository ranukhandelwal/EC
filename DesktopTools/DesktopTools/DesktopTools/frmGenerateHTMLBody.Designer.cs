﻿namespace DesktopTools
{
    partial class frmGenerateHTMLBody
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
            this.btnStartGeneratingHTMLBody = new System.Windows.Forms.Button();
            this.txtDocxRootFolderPath = new System.Windows.Forms.TextBox();
            this.lblDocxPath = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnStartGeneratingHTMLBody
            // 
            this.btnStartGeneratingHTMLBody.Location = new System.Drawing.Point(144, 189);
            this.btnStartGeneratingHTMLBody.Name = "btnStartGeneratingHTMLBody";
            this.btnStartGeneratingHTMLBody.Size = new System.Drawing.Size(187, 23);
            this.btnStartGeneratingHTMLBody.TabIndex = 0;
            this.btnStartGeneratingHTMLBody.Text = "Start Generating HTML";
            this.btnStartGeneratingHTMLBody.UseVisualStyleBackColor = true;
            this.btnStartGeneratingHTMLBody.Click += new System.EventHandler(this.btnStartGeneratingHTMLBody_Click);
            // 
            // txtDocxRootFolderPath
            // 
            this.txtDocxRootFolderPath.Location = new System.Drawing.Point(144, 119);
            this.txtDocxRootFolderPath.Name = "txtDocxRootFolderPath";
            this.txtDocxRootFolderPath.Size = new System.Drawing.Size(187, 20);
            this.txtDocxRootFolderPath.TabIndex = 1;
            this.txtDocxRootFolderPath.Text = "J:\\ExamCrazyOldSite\\ForJaySingh\\EC-Docx";
            // 
            // lblDocxPath
            // 
            this.lblDocxPath.AutoSize = true;
            this.lblDocxPath.Location = new System.Drawing.Point(144, 83);
            this.lblDocxPath.Name = "lblDocxPath";
            this.lblDocxPath.Size = new System.Drawing.Size(115, 13);
            this.lblDocxPath.TabIndex = 2;
            this.lblDocxPath.Text = "Docx Root Folder Path";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(144, 267);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(35, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "label1";
            // 
            // frmGenerateHTMLBody
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(446, 337);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lblDocxPath);
            this.Controls.Add(this.txtDocxRootFolderPath);
            this.Controls.Add(this.btnStartGeneratingHTMLBody);
            this.Name = "frmGenerateHTMLBody";
            this.Text = "frmGenerateHTMLBody";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnStartGeneratingHTMLBody;
        private System.Windows.Forms.TextBox txtDocxRootFolderPath;
        private System.Windows.Forms.Label lblDocxPath;
        private System.Windows.Forms.Label label1;
    }
}