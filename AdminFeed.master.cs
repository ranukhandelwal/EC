using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.UI;
using EC.BL;
//using EC.BL.Providers.Announcements;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;
using EC.BL.Providers.User;

namespace ExamCrazy
{
    public partial class AdminFeed : System.Web.UI.MasterPage
    {
        private string strURLRedirect;
        private int ResultCount;
        private int CAT_ID;
        private int Tab;
        private string Letter;
        private string fFind;
        private int Top;
        private int Year;
        private int Month;
        private int AnnouncementImage;
        private int LastViewed;
        public int ArticleCount;
        public string lastviewedselectedvalue;
        public string lastviewedlabel;

        //Instantiate utility/common object
        Utility Util = new Utility();

        protected void Page_Load(object sender, EventArgs e)
        {
                    

            //Get total article count
            ArticleCount = 10;// Blogic.ActionProcedureDataProvider.ArticleCountAll;

            //Assign selected value to lastviewed dropdown menu
            int lv = (int)Util.Val(Request.QueryString["lv"]);
            GetLastViewedSelectedValue(lv);

            if (!IsPostBack)
            {
                //Populate year in the dropdwonlist - starting from 2000 to the current year.
                int tempDT = DateTime.Now.Year;
                for (int i = tempDT; (tempDT - i) < 9; i--)
                    ddlyear.Items.Add(new ListItem(i.ToString(), i.ToString()));

                MonthSearch();

                //Populate dropdown category list
                GetDropdownCategoryList();

                //Display A-Z alhpabet letter announcement name 
                lblalphaletter.Text = AlphabetLink.BuildLink("feedmanager.aspx?l=", "dlet", "Browse all announcement starting with letter", "&nbsp;&nbsp;");

                //Get admin username from the sessioan variable and place it in the label.
                
                lblletterlegend.Text = "Announcement A-Z:";
                lblunapproved2.Visible = false;
                lblmangermainpage.Text = "Default View";
                lblmangeraddpagelink.Text = "Add Feed";
                lblmangermainpagelink.ToolTip = "Back to Default View";
                lbCountAnnouncement.Text = "Total Approved Announcements:&nbsp;";// +string.Format("{0:#,###}", Blogic.ActionProcedureDataProvider.GetHomepageTotalAnnouncementCount);
                lbCountCat.Text = "Total Category:&nbsp;";// +Blogic.ActionProcedureDataProvider.GetHomepageTotalCategoryCount;
                lblunapproved.Text = "Deactivated Feeds:&nbsp;";// +Blogic.ActionProcedureDataProvider.AdminAnnouncementManagerGetWaitingforApprovalCount;
                lblsaved.Text = "Saved Feeds:&nbsp;";
                //lblrecordperpage.Text = "Default 40 records per page";
                lblrecordperpageFooter.Text = "Showing default 40 records per page";
                lblrecordperpageTop.Text = "- 40 records per page";
                approvallink.ToolTip = "There are (";// +Blogic.ActionProcedureDataProvider.AdminAnnouncementManagerGetWaitingforApprovalCount + ") announcements waiting for your approval. Click this link to approve the announcement";

                
                //Data binding
                /*BindData();

                LastUpdatedAnnouncements.DataSource = Blogic.ActionProcedureDataProvider.GetLast10UpdatedAnnouncement;
                LastUpdatedAnnouncements.DataBind();
                */
                //Release allocated memory
                Util = null;
            }

        }

        //Show data in the datagrid
        private void BindData()
        {
            CAT_ID = (int)Util.Val(Request.QueryString["catid"]);
            Tab = (int)Util.Val(Request.QueryString["tab"]);
            Letter = Request.QueryString["l"];
            fFind = Request.QueryString["find"];
            Top = (int)Util.Val(Request.QueryString["top"]);
            Month = (int)Util.Val(Request.QueryString["month"]);
            Year = (int)Util.Val(Request.QueryString["year"]);
            AnnouncementImage = (int)Util.Val(Request.QueryString["img"]);
            LastViewed = (int)Util.Val(Request.QueryString["lv"]);

            
            
            

                //For search
                if (!string.IsNullOrEmpty(fFind))
                {
                    lblSortedCat.Text = "Your search for announcement name&nbsp;" + "(<b>" + fFind + "</b>) return:&nbsp;"; /*+ TotalRecordsCount + "&nbsp;records";*/
                    lblrcdCatcount.Visible = false;
                }

                //For top 100 announcement
                if (Top == 100)
                {
                    lblSortedCat.Text = "Top&nbsp;" + 100 + " popular&nbsp;announcements by hits";
                    lblrcdCatcount.Visible = false;
                }

            
                

            

            //EnabledDisabled_PagerButtons();
        }
        //Assign last viewed dropdown menu selected value and label
        private void GetLastViewedSelectedValue(int LastViewed)
        {
            switch (LastViewed)
            {
                case 1:
                    lastviewedselectedvalue = "Today";
                    lastviewedlabel = "Today";
                    break;
                case 2:
                    lastviewedselectedvalue = "2 days";
                    lastviewedlabel = "in the last 2 days";
                    break;
                case 3:
                    lastviewedselectedvalue = "3 days";
                    lastviewedlabel = "in the last 3 days";
                    break;
                case 4:
                    lastviewedselectedvalue = "4 days";
                    lastviewedlabel = "in the last 4 days";
                    break;
                case 5:
                    lastviewedselectedvalue = "5 days";
                    lastviewedlabel = "in the last 5 days";
                    break;
                case 6:
                    lastviewedselectedvalue = "6 days";
                    lastviewedlabel = "in the last 6 days";
                    break;
                case 7:
                    lastviewedselectedvalue = "1 week";
                    lastviewedlabel = "in 1 week";
                    break;
                case 14:
                    lastviewedselectedvalue = "2 weeks";
                    lastviewedlabel = "in 2 weeks";
                    break;
                case 30:
                    lastviewedselectedvalue = "1 month";
                    lastviewedlabel = "in a month";
                    break;
                default:
                    lastviewedselectedvalue = "Last Viewed Announcements";
                    break;
            }

        }

        
        private void GetDropdownCategoryList()
        {
            foreach (sCategory cat in constant.FeedCategory)
            {
                CategoryName.Items.Add(new ListItem(cat.Name.ToString(), cat.ID.ToString()));

            }

        }

        //Handles month search dropdownlist populate and set selected index. 
        private void MonthSearch()
        {
            int tempDT2 = DateTime.Now.Month;

            ddlmonth.Items.Insert(0, new ListItem(Utility.GetMonthName((int)tempDT2), tempDT2.ToString()));

            //Check whether search month was perform. If not, set the current month as selected index,
            //else get the month number from the querystring paramter and convert it to month name.
            if (!string.IsNullOrEmpty(Request.QueryString["year"]))
            {
                ddlmonth.Items.Insert(0, new ListItem(Utility.GetMonthName(int.Parse(Request.QueryString["month"])), tempDT2.ToString()));
            }

            //Populate dropdwonlist with month name or abbrevation. 
            //If it is true, then display month abbrevation, else display month name.
            DateTime month = Convert.ToDateTime("1/1/2000");
            for (int i = 0; i < 12; i++)
            {
                DateTime NextMonth = month.AddMonths(i);
                ddlmonth.Items.Add(new ListItem(Utility.GetMonthNameOrAbbrev((int)NextMonth.Month, false), NextMonth.Month.ToString()));
            }
        }

        //Handles admin sort by category
        public void AdminSortCat_Click(object sender, EventArgs e)
        {
            strURLRedirect = "feedmanager.aspx?category=" + Request.Form["category"];
            Response.Redirect(strURLRedirect);
        }

        //Handles search admin
        public void AdminSearch_Click(object sender, EventArgs e)
        {
            strURLRedirect = "~/admin/feedmanager.aspx?find=" + Request.Form[find.UniqueID];
            Response.Redirect(strURLRedirect);
        }

        //Handles search admin by month
        public void AdminSearchByMonth_Click(object sender, EventArgs e)
        {
            strURLRedirect = "~/admin/feedmanager.aspx?year=" + ddlyear.SelectedValue + "&month=" + ddlmonth.SelectedValue;
            Response.Redirect(strURLRedirect);
        }

        //Handles dropdown list property
        public string SelectedValue
        {
            get
            {
                return CategoryName.SelectedValue;
            }
            set
            {
                CategoryName.SelectedValue = value;
            }
        }

        //Handle sort category selection redirect
        public void GetCatName_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(this.SelectedValue))
            {
                CategoryName.SelectedValue = this.SelectedValue;
            }

            strURLRedirect = "~/admin/feedmanager.aspx?catid=" + CategoryName.SelectedValue;
            Response.Redirect(strURLRedirect);
        }

        
        //Handle edit databound
        public void Edit_Handle(object sender, DataGridCommandEventArgs e)
        {
            if ((e.CommandName == "edit"))
            {
                TableCell iIdNumber = e.Item.Cells[0];
                strURLRedirect = "editing.aspx?id=" + iIdNumber.Text;
                Server.Transfer(strURLRedirect);
            }
        }

        
        

        

  

    }
}
