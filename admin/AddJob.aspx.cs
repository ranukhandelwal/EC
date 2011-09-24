using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.UI;
using EC.Model;
using EC.BL;
using EC.Common.Utilities;

namespace ExamCrazy.admin
{
    public partial class AddJob : BasePageAdmin
    {
        Table tblsmmry = new Table();
        Table tbldtl = new Table();
        Table tbldtl2 = new Table();
        Table tblimpdate = new Table();
        Table tblpaidtest = new Table();
        Table tblfreetest = new Table();
        protected int smmryRows;
        protected int smmryColumns;
        protected int dtlRows;
        protected int dtlColumns;
        protected int dtl2Rows;
        protected int dtl2Columns;
        protected int impdateRows;
        protected int impdateColumns;
        protected int paidtestRows;
        protected int paidtestColumns;
        protected int freetestRows;
        protected int freetestColumns;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            // Run only once a postback has occured
            if (Page.IsPostBack)
            {
                //Set the Rows and Columns property with the value
                //entered by the user in the respective textboxes
                this.smmryRows = Int32.Parse(SummaryTxtRows.Text);
                this.smmryColumns = Int32.Parse(SummaryTxtCols.Text);
                this.dtlRows = Int32.Parse(DetailTxtRows.Text);
                this.dtlColumns = Int32.Parse(DetailTxtCols.Text);
                this.dtl2Rows = Int32.Parse(Detail2TxtRows.Text);
                this.dtl2Columns = Int32.Parse(Detail2TxtCols.Text);
                this.impdateRows = Int32.Parse(ImpDatesTxtRows.Text);
                this.impdateColumns = Int32.Parse(ImpDatesTxtCols.Text);
                this.paidtestRows = Int32.Parse(PaidTestTxtRows.Text);
                this.paidtestColumns = Int32.Parse(PaidTestTxtCols.Text);
                this.freetestRows = Int32.Parse(FreeTestTxtRows.Text);
                this.freetestColumns = Int32.Parse(FreeTestTxtCols.Text);
            }
            foreach (string jobcat in constant.JobCategory)
            {
                JobCategory.Items.Add(jobcat);
            }
            foreach (string jobtype in constant.JobType)
            {
                JobType.Items.Add(jobtype);
            }

            CreateDynamicTable(tblsmmry, smmryRows, smmryColumns, __smmrydynamictable);
            CreateDynamicTable(tbldtl, dtlRows, dtlColumns, __dtldynamictable);
            CreateDynamicTable(tbldtl2, dtl2Rows, dtl2Columns, __dtl2dynamictable);
            CreateDynamicTable(tblimpdate, impdateRows, impdateColumns, __impdatedynamictable);
            CreateDynamicTable(tblpaidtest, paidtestRows, paidtestColumns, __paidtestdynamictable);
            CreateDynamicTable(tblfreetest, freetestRows, freetestColumns, __freetestdynamictable);
        }
        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            //CreateDynamicTable();
            SummaryRawTable.Visible = false;
            DetailRawTable.Visible = false;
            Detail2RawTable.Visible = false;
            ImpDatesRawTable.Visible = false;
            PaidTestRawTable.Visible = false;
            FreeTestRawTable.Visible = false;
            GenrBtn.Visible = false;
            SubmitBtn.Visible = true;
        }


        private void CreateDynamicTable(Table tbl, int Rows, int Columns, PlaceHolder plchld)
        {
            plchld.Controls.Clear();

            // Fetch the number of Rows and Columns for the table 
            // using the properties
            int tblRows = Rows;
            int tblCols = Columns;
            // Create a Table and set its properties 
            //Table tbl = new Table();
            // Add the table to the placeholder control
            plchld.Controls.Add(tbl);
            // Now iterate through the table and add your controls 
            for (int i = 0; i < tblRows; i++)
            {
                TableRow tr = new TableRow();
                for (int j = 0; j < tblCols; j++)
                {
                    TableCell tc = new TableCell();
                    TextBox txtBox = new TextBox();
                    txtBox.Text = "RowNo:" + i + " " + "ColumnNo:" + " " + j;
                    // Add the control to the TableCell
                    tc.Controls.Add(txtBox);
                    // Add the TableCell to the TableRow
                    tr.Cells.Add(tc);
                }
                // Add the TableRow to the Table
                tbl.Rows.Add(tr);
            }

            // This parameter helps determine in the LoadViewState event,
            // whether to recreate the dynamic controls or not

            ViewState["dynamictable"] = true;
            
        }

        // Check the ViewState flag to determine whether to 
        // rebuild your table again
        protected override void LoadViewState(object earlierState)
        {
            base.LoadViewState(earlierState);
            if (ViewState["dynamictable"] == null)
            {
                CreateDynamicTable(tblsmmry, smmryRows, smmryColumns, __smmrydynamictable);
                CreateDynamicTable(tbldtl, dtlRows, dtlColumns, __dtldynamictable);
                CreateDynamicTable(tbldtl2, dtl2Rows, dtl2Columns, __dtl2dynamictable);
                CreateDynamicTable(tblimpdate, impdateRows, impdateColumns, __impdatedynamictable);
                CreateDynamicTable(tblpaidtest, paidtestRows, paidtestColumns, __paidtestdynamictable);
                CreateDynamicTable(tblfreetest, freetestRows, freetestColumns, __freetestdynamictable);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Just a click to cause postback
        }

        public void GenerateTableTags(ref string tabletag, Table item)
        {
            TableRow row;
            TableCell cell;
            TextBox txtbox = new TextBox();
            try
            {
                if (item.Rows.Count > 0)
                {
                    tabletag = "<table cellspacing=\"1\" cellpadding=\"1\" border=\"1\" bgcolor=\"#FFFFFF\"><tbody>";
                    for (int i = 0; i < item.Rows.Count; i++)
                    {
                        tabletag += "<tr>";
                        row = item.Rows[i];
                        for (int j = 0; j < row.Cells.Count; j++)
                        {
                            cell = row.Cells[j];
                            tabletag += "<td class=\"txt\">";
                            txtbox = (TextBox)cell.Controls[0];
                            tabletag += txtbox.Text;
                            tabletag += "</td>";
                        }
                        tabletag += "</tr>";
                    }
                    tabletag += "</tbody></table>";
                }
            }
            catch(Exception e)
            {
                throw e;
            }
        }

        public void GenerateSummary(ref string summarytags)
        {
            Utility Util = new Utility();
            summarytags = "<div class=\"jobDetail unit\">" +
                "<h3>" + Util.FormatTextForInput(Request.Form[JobTitle.UniqueID]) + "</h3>" +
                    "<table width=\"80%\"><tr><td align=\"left\"><img src=" + "\"" + Util.FormatTextForInput(Request.Form[logoimg.UniqueID]) + "\"" + "runat=\"server\"" + "/ ><td align=\"right\">" + Util.FormatTextForInput(Request.Form[LastDate.UniqueID]) + "</tr></table>" +
                    "<ul> <li> <table width=\"80%\"> <tr> <td class=\"txt\" width=\"25%\"><p><h5>Eligibility: </h5>" + "<td class=\"txt\" width=\"75%\">" + Util.FormatTextForInput(Request.Form[Eligiblity.UniqueID]) + "</p>" +
                    "<tr> <td class=\"txt\" width=\"25%\"><p><h5>Location: </h5>" + "<td class=\"txt\" width=\"75%\">" + Util.FormatTextForInput(Request.Form[Location.UniqueID]) + "</p>" +
                    "<tr> <td class=\"txt\" width=\"25%\"><p><h5>Job Category: </h5>" + "<td class=\"txt\" width=\"75%\">" + Util.FormatTextForInput(Request.Form[JobCategory.UniqueID]) + "</p>" +
                    "<tr> <td class=\"txt\" width=\"25%\"><p><h5>Last Date: </h5>" + "<td class=\"txt\" width=\"75%\">" + Util.FormatTextForInput(Request.Form[LastDate.UniqueID]) + "</p>" +
                    "<tr> <td class=\"txt\" width=\"25%\"><p><h5>Job Type: </h5>" + "<td class=\"txt\" width=\"75%\">" + Util.FormatTextForInput(Request.Form[JobType.UniqueID]) + "</p>" +
                    "<tr> <td class=\"txt\" width=\"25%\"><p><h5>Hiring Process: </h5>" + "<td class=\"txt\" width=\"75%\">" + Util.FormatTextForInput(Request.Form[HiringProcess.UniqueID]) + "</p>" +
                    "</table>";
                    

            string tmp = "";
            GenerateTableTags(ref tmp, tblsmmry);
            if (tmp.Length != 0)
            {
                summarytags += "<br />";
                summarytags += "<h5>" + Util.FormatTextForInput(Request.Form[SummaryTbl.UniqueID]) + "</h5>";
                summarytags += tmp;
            }

            summarytags += "</li></ul>";
            
        }

        public void GenerateDetails(ref string detailtags)
        {
            Utility Util = new Utility();
            detailtags = "<div class=\"jobDetail unit\">" + "<ul> <li>";
            string tmp = "";
            GenerateTableTags(ref tmp, tbldtl);
            if (tmp.Length != 0)
            {
                detailtags += "<h5>" + Util.FormatTextForInput(Request.Form[DetailTbl.UniqueID]) + "</h5>";
                detailtags += tmp;
                detailtags += "<br />";
            }

            tmp = "";
            GenerateTableTags(ref tmp, tbldtl2);
            if (tmp.Length != 0)
            {
                detailtags += "<h5>" + Util.FormatTextForInput(Request.Form[Detail2Tbl.UniqueID]) + "</h5>";
                detailtags += tmp;
                detailtags += "<br />";
            }

            detailtags += "<p><h5>How To Apply: </h5>" + Util.FormatTextForInput(Request.Form[HowToApply.UniqueID]) + "</p>";
            detailtags += "<br />";

            tmp = "";
            GenerateTableTags(ref tmp, tblimpdate);
            if (tmp.Length != 0)
            {
                detailtags += "<h5>" + Util.FormatTextForInput(Request.Form[ImpDatesTbl.UniqueID]) + "</h5>";
                detailtags += tmp;
                detailtags += "<br />";
            }

            detailtags += "<p><h5>How To Prepare: </h5>" + Util.FormatTextForInput(Request.Form[HowToPrepare.UniqueID]) + "</p>";
            detailtags += "<br />";

            tmp = "";
            GenerateTableTags(ref tmp, tblpaidtest);
            if (tmp.Length != 0)
            {
                detailtags += "<h5>" + Util.FormatTextForInput(Request.Form[PaidTestTbl.UniqueID]) + "</h5>";
                detailtags += tmp;
                detailtags += "<br />";
            }

            tmp = "";
            GenerateTableTags(ref tmp, tblfreetest);
            if (tmp.Length != 0)
            {
                detailtags += "<h5>" + Util.FormatTextForInput(Request.Form[FreeTestTbl.UniqueID]) + "</h5>";
                detailtags += tmp;
                detailtags += "<br />";
            }

            detailtags +=
                "</li></ul>";
        }

        public void SaveFeed(object s, EventArgs e)
        {
            AddFeed(2);
            SummaryPreview.Visible = true;
            DetailPreview.Visible = true;
        }

        public void SubmitFeed(object s, EventArgs e)
        {
            AddFeed(1);
        }

        public void PreviewFeed(object s, EventArgs e)
        {
            AddFeed(3);
            SummaryPreview.Visible = true;
            DetailPreview.Visible = true;
        }
        public void AddFeed(short state)
        {
            Feed feed = new Feed();
            Utility Util = new Utility();
            feed.Author = "Administrator";
            foreach (sCategory cat in constant.FeedCategory)
            {
                if(cat.Name == "JOBS")
                    feed.CategoryID = cat.ID;
            }
            feed.Title = Util.FormatTextForInput(Request.Form[JobTitle.UniqueID]);
            feed.Link = constant.DomainName + "/jobs" + Util.FormatTextForInput(Request.Form[JobLink.UniqueID]);

            string tmp = "";
            GenerateSummary(ref tmp);
            testsummary.Text = tmp;
            feed.Summary = tmp;
            //feed.
            GenerateDetails(ref tmp);
            testdetails.Text = tmp;
            feed.Description = tmp;

            feed.isValid = state;
            feed.DisplayIn = "-1";

            SummaryPreview.Visible = true;
            DetailPreview.Visible = true;

            if ((state == 1) || (state == 1))
            {
                FeedRepository feedrep = new FeedRepository();
                feedrep.Add(feed);
                feedrep = null;
            }

            Util = null;
            feed = null;
            
        }
    }
}
