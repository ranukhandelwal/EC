using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using EC.UI;
using EC.BL;
//using EC.BL.Providers.Announcements;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;
using EC.BL.Providers.User;

namespace ExamCrazy.admin
{
    public partial class FeedManager : BasePageAdmin
    {
        //Declare page level variables
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
            if (!IsPostBack)
            {
                //Populate year in the dropdwonlist - starting from 2000 to the current year.

                lblrecordperpageFooter.Text = "Showing default 40 records per page";

                //Set the default pagesize.
                dgrd_announcement.PageSize = 40;

                //Data binding
                BindData();


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
            

            //Set default pageindex and pagesize to pass to the BLL
            int PageIndex = dgrd_announcement.CurrentPageIndex + 1;
            int PageSize = 40;// Convert.ToInt32(LstRecpage.SelectedItem.Value);

            //Get pagesize from the pagesize dropdown menu
            dgrd_announcement.PageSize = PageSize;

            //Return datatable with custom paging SQL Row_Number. 
            DataTable dt = Blogic.ActionProcedureDataProvider.AdminAnnouncementManagerWithCustomPaging(CAT_ID, Letter, fFind, Tab, Top, Year, Month, AnnouncementImage, LastViewed, PageIndex, PageSize);

            //Assign datatable to new DataView object
            DataView dv = new DataView(dt);

            try
            {
                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.Rows[0];

                    if (Top == 100)
                    {   //100 Most popular announcement by hits count
                        dgrd_announcement.VirtualItemCount = 100;
                    }
                    else
                    {
                        //Assigned Total records count to grid virtual count
                        dgrd_announcement.VirtualItemCount = (int)dr["RCount"];
                    }

                    //Initialize variable for total record count to get record count for filter
                    int TotalRecordsCount = (int)dr["RCount"];

                    //Release datarow object in memory
                    dr = null;

                    //Sort by announcement ID
                    /*if (lbOrderBy.Text == "")
                    {
                        dv.Sort = "FeedID";
                    }
                    else
                    {
                        try
                        {
                            dv.Sort = lbOrderBy.Text + " " + lbDesc.Text;
                        }
                        catch
                        {
                            dv.Sort = "Category";
                        }
                    }*/

                    //Assign dataview to grid datasource
                    dgrd_announcement.DataSource = dv;

                    //Bind the data
                    dgrd_announcement.DataBind();

                    //For Alphabet Letter
                    if (!string.IsNullOrEmpty(Letter))
                    {
                        // lblSortedCat.Text = "There are&nbsp;" + TotalRecordsCount + "&nbsp;announcements starting with letter&nbsp;<b>" + Letter + "</b>";
                        lblrcdalphaletterfooter.Text = TotalRecordsCount + "&nbsp;announcements starting with letter&nbsp;<b>" + Letter + "</b>&nbsp;-";
                        //lblrcdCatcount.Visible = false;
                    }

                    //For search
                    if (!string.IsNullOrEmpty(fFind))
                    {
                        // lblSortedCat.Text = "Your search for announcement name&nbsp;" + "(<b>" + fFind + "</b>) return:&nbsp;" + TotalRecordsCount + "&nbsp;records";
                        //lblrcdCatcount.Visible = false;
                    }

                    //For top 100 announcement
                    if (Top == 100)
                    {
                        //    lblSortedCat.Text = "Top&nbsp;" + 100 + " popular&nbsp;announcements by hits";
                        //  lblrcdCatcount.Visible = false;
                    }

                    //For year and month announcement submission
                    if (!string.IsNullOrEmpty(Request.QueryString["year"]) && !string.IsNullOrEmpty(Request.QueryString["month"]))
                    {
                        //lblSortedCat.Text = "There are&nbsp;" + TotalRecordsCount + " announcements submitted on &nbsp;" + Utility.GetMonthName(Month) + ", " + Year;
                        //lblrcdCatcount.Visible = false;
                    }

                    //Waiting for approval
                    if (Tab == 1)
                    {
                        //Hide the footer total records count
                        LblPageInfo.Visible = false;
                        lblrecordperpageFooter.Visible = false;
                        /*lblrecordperpageTop.Visible = false;
                        approvallink.Enabled = false;
                        lblSortedCat.Text = "How To? - To approve a announcement, click the Announcement Name link inside the grid.";
                        lblthese.Text = "There are&nbsp;";
                        lblthese2.Text = TotalRecordsCount + "&nbsp;announcement(s) waiting for approval.";
                        lblmangermainpage.Text = "Announcement Manager Main";
                        lblmangermainpagelink.ToolTip = "Back to Main Announcement Manager Page";
                        lblunapproved2.Visible = true;*/
                    }

                    //Filter for images
                    if (AnnouncementImage == 1)
                    {/*
                        lblSortedCat.Text = "There are&nbsp;" + TotalRecordsCount + "&nbsp;announcement with photo";
                        lblrcdCatcount.Visible = false;*/
                    }

                    //Filter for lastviewed
                    if (LastViewed > 0)
                    {
                        /*
                        lblSortedCat.Text = "There are&nbsp;" + TotalRecordsCount + "&nbsp;announcements viewed " + lastviewedlabel;
                        lblrcdCatcount.Visible = false;*/
                    }

                    //Filter top 100 announcements
                    if (Top == 100)
                    {
                        /*
                        LblPageInfoTop.Text = "Total Records: 100 - Showing Page: <b>" + PageIndex.ToString() + "</b> of <b>" + dgrd_announcement.PageCount.ToString() + "</b> - Displaying: <b>" + Convert.ToInt32(LstRecpage.SelectedItem.Value) + "</b> Records Per Page";
                        lblrcdCatcountfooter.Text = "Total Records: 100";*/
                    }
                    else
                    {/*
                        LblPageInfoTop.Text = "Total Records: " + string.Format("{0:#,###}", TotalRecordsCount) + " - Showing Page: <b>" + PageIndex.ToString() + "</b> of <b>" + dgrd_announcement.PageCount.ToString() + "</b> - Displaying: <b>" + Convert.ToInt32(LstRecpage.SelectedItem.Value) + "</b> Records Per Page";*/
                        lblrcdCatcountfooter.Text = "Total records: " + string.Format("{0:#,###}", TotalRecordsCount);
                    }
                }
                    /*
                    lblrcdCatcount.Text = "There are " + string.Format("{0:#,###}", TotalRecordsCount) + " announcements including unapproved announcements";
                    */
                    //Display the pagecount in the top and footer
                LblPageInfo.Text = "Showing Page: <b>" + PageIndex.ToString() + "</b> of <b>" + dgrd_announcement.PageCount.ToString() + "</b> - Displaying: <b>" /*+ Convert.ToInt32(LstRecpage.SelectedItem.Value)*/ + "</b> Records Per Page" + "&nbsp;-&nbsp;";

            }
            catch (Exception e)
            {
                throw e;
            }

            //Lets hide some unneeded control
            lblrecordperpageFooter.Visible = false;
            //            lblrecordperpageTop.Visible = false;

            //Release datatable allocated memory
            dt = null;

            //EnabledDisabled_PagerButtons();
        }

        //Handle enabled and disabled pager buttons
        private void EnabledDisabled_PagerButtons()
        {
            //Disabled and enabled footer pager button
            if (dgrd_announcement.CurrentPageIndex != 0)
            {
                Prev_Buttons();
                Firstbutton.Enabled = true;
                Prevbutton.Enabled = true;

                //Assign tooltip
                Firstbutton.ToolTip = "Jump back to page: 1";
                Prevbutton.ToolTip = "Back to previous page: " + dgrd_announcement.CurrentPageIndex.ToString();
            }
            else
            {
                Firstbutton.Enabled = false;
                Prevbutton.Enabled = false;

                //Clear tooltip
                Firstbutton.ToolTip = "";
                Prevbutton.ToolTip = "";
            }

            if (dgrd_announcement.CurrentPageIndex != (dgrd_announcement.PageCount - 1))
            {
                Next_Buttons();
                Lastbutton.Enabled = true;

                //Assign tooltip
                Nextbutton.ToolTip = "Go to next page: " + (dgrd_announcement.CurrentPageIndex + 2).ToString();
                Lastbutton.ToolTip = "Jump to last page: " + dgrd_announcement.PageCount.ToString();
            }
            else
            {
                //if there are less than 20 records, we're not going to allow page size change, so disabled the dropdownlist          
                //LstRecpage.Enabled = false;

                //Disable next and last button if pagecount not equal to currentpageindex.
                Lastbutton.Enabled = false;
                Nextbutton.Enabled = false;

                //Clear tooltip
                Nextbutton.ToolTip = "";
                Lastbutton.ToolTip = "";
            }
        }

        //Previous footer button
        private void Prev_Buttons()
        {
            int PrevSet;
            if (dgrd_announcement.CurrentPageIndex + 1 != 1 && ResultCount != -1)
            {
                PrevSet = dgrd_announcement.PageSize;
            }
        }

        //Next footer button
        private void Next_Buttons()
        {
            int NextSet;
            if (dgrd_announcement.CurrentPageIndex + 1 < dgrd_announcement.PageCount)
            {
                NextSet = dgrd_announcement.PageSize;
            }
        }

        //Handles footer button pager click event
        public void FooterPagerClick(object sender, CommandEventArgs e)
        {
            //Used by external paging
            string arg;
            arg = e.CommandArgument.ToString();

            switch (arg)
            {
                case "next":
                    //The next Button was Clicked
                    if ((dgrd_announcement.CurrentPageIndex < (dgrd_announcement.PageCount - 1)))
                    {
                        dgrd_announcement.CurrentPageIndex += 1;
                    }

                    break;

                case "prev":
                    //The prev button was clicked
                    if ((dgrd_announcement.CurrentPageIndex > 0))
                    {
                        dgrd_announcement.CurrentPageIndex -= 1;
                    }

                    break;

                case "last":
                    //The Last Page button was clicked
                    dgrd_announcement.CurrentPageIndex = (dgrd_announcement.PageCount - 1);
                    break;

                default:
                    //The First Page button was clicked
                    dgrd_announcement.CurrentPageIndex = Convert.ToInt32(arg);
                    break;
            }

            //Rebind the data
            BindData();
        }

        //Handle edit databound
        public void Edit_Handle(object sender, DataGridCommandEventArgs e)
        {
            if ((e.CommandName == "edit"))
            {
                TableCell iIdNumber = e.Item.Cells[0];
                strURLRedirect = "~/admin/EditFeed.aspx?id=" + iIdNumber.Text;
                Server.Transfer(strURLRedirect);
            }
        }

        //Handle the delete button click event
        public void Delete_Announcements(object sender, DataGridCommandEventArgs e)
        {
            if ((e.CommandName == "Delete"))
            {
                TableCell iIdNumber2 = e.Item.Cells[0];
                TableCell iIAnnouncementname = e.Item.Cells[1];

                #region Delete Announcement Image
                //Delete the announcement image if the announcement has an image.

                try
                {
                    IDataReader dr = Blogic.ActionProcedureDataProvider.GetAnnouncementImageFileNameForUpdate(int.Parse(iIdNumber2.Text));

                    dr.Read();

                    if (dr["AnnouncementImage"] != DBNull.Value)
                    {
                        //System.IO.File.Delete(Server.MapPath(GetAnnouncementImage.ImagePath + dr["AnnouncementImage"].ToString()));
                    }

                    dr.Close();
                }
                catch
                {
                }
                #endregion

                //Refresh cached data
                /*Caching.PurgeCacheItems("MainCourse_AnnouncementCategory");
                Caching.PurgeCacheItems("Ethnic_AnnouncementCategory");
                Caching.PurgeCacheItems("AnnouncementCategory_SideMenu");
                Caching.PurgeCacheItems("Newest_AnnouncementsSideMenu_");

                AnnouncementRepository Announcement = new AnnouncementRepository();

                Announcement.ID = int.Parse(iIdNumber2.Text);

                //Perform delete announcement
                Announcement.Delete(Announcement);
                
                Announcement = null;
                */
                //Redirect to confirm delete page
                strURLRedirect = "confirmdel.aspx?catname=" + iIAnnouncementname.Text + "&mode=del";
                Server.Transfer(strURLRedirect);
            }
        }
        public void dgAnnouncement_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            object strIDcell;
            strIDcell = DataBinder.Eval(e.Item.DataItem, "FeedID");

            //Disbabled viewstate in certain item cells to minimize viewstate size
            e.Item.Cells[2].EnableViewState = false;
            e.Item.Cells[3].EnableViewState = false;
            e.Item.Cells[4].EnableViewState = false;
            e.Item.Cells[5].EnableViewState = false;
            e.Item.Cells[6].EnableViewState = false;
            //e.Item.Cells[7].EnableViewState = false;

            //First, make sure we're not dealing with a Header or Footer row
            if (e.Item.ItemType != ListItemType.Header && e.Item.ItemType != ListItemType.Footer)
            {
                LinkButton deleteButton = (LinkButton)(e.Item.Cells[7].Controls[0]);
                LinkButton editButton = (LinkButton)(e.Item.Cells[6].Controls[0]);

                /*  
                  //Check for null or empty string value
                  if (Convert.IsDBNull(DataBinder.Eval(e.Item.DataItem, "AnnouncementImage")) || (string)DataBinder.Eval(e.Item.DataItem, "AnnouncementImage") == "")
                  {
                      e.Item.Cells[2].Text = "No";
                  }
                  else
                  {
                      e.Item.Cells[2].Text = "Yes";
                      e.Item.Cells[2].ToolTip = "Click to view - Image Name: " + DataBinder.Eval(e.Item.DataItem, "AnnouncementImage");
                      e.Item.Cells[2].Attributes.Add("OnMouseOver", "this.style.cursor='pointer';this.style.color='#ff3e3e';showimage('getimagepopupajax.aspx?id=" + strIDcell + "&imgname=" + DataBinder.Eval(e.Item.DataItem, "AnnouncementImage") + "',this);return false");
                      e.Item.Cells[2].Attributes.Add("OnMouseOut", "this.style.cursor='pointer';this.style.color='#007AF4'");
                      e.Item.Cells[2].ForeColor = System.Drawing.ColorTranslator.FromHtml("#007AF4");
                  }
                  */
                //We can now add the onclick event handler
                deleteButton.Attributes["onclick"] = "javascript:return confirm('Are you sure you want to delete " + DataBinder.Eval(e.Item.DataItem, "Title") + " Announcement, FeedID#  " + DataBinder.Eval(e.Item.DataItem, "FeedID") + "?')";
                deleteButton.ToolTip = "Delete announcement (" + DataBinder.Eval(e.Item.DataItem, "Title") + ") FeedID :" + DataBinder.Eval(e.Item.DataItem, "FeedID");
                editButton.ToolTip = "Edit announcement (" + DataBinder.Eval(e.Item.DataItem, "Title") + ") FeedID :" + DataBinder.Eval(e.Item.DataItem, "FeedID");

                //Data row mouseover changecolor
                e.Item.Attributes.Add("OnMouseOver", "this.style.backgroundColor='#ECF5FF'");
                e.Item.Attributes.Add("OnMouseOut", "this.style.backgroundColor='#ffffff'");

                //handle cell 1 Announcement name change cell and font color
                e.Item.Cells[1].Attributes.Add("OnMouseOver", "this.style.backgroundColor='#F0E68C';this.style.cursor='pointer';this.style.color='#ff3e3e'");
                e.Item.Cells[1].Attributes.Add("OnMouseOut", "this.style.backgroundColor='#fff';this.style.cursor='pointer';this.style.color='#007AF4'");
                e.Item.Cells[1].ForeColor = System.Drawing.ColorTranslator.FromHtml("#007AF4");

                //Handle cell 1 - Announcement name click event
                e.Item.Cells[1].Attributes.Add("Onclick", "javascript:window.open('viewing.aspx?id=" + strIDcell + "'," + "'','height=815,width=700')");

                //Display cell tooltip in the grid
                e.Item.Cells[0].ToolTip = "Announcement  " + DataBinder.Eval(e.Item.DataItem, "FeedID");

                if (string.IsNullOrEmpty(Request.QueryString["lv"]))
                {
                    e.Item.Cells[1].ToolTip = "Click to view: " + DataBinder.Eval(e.Item.DataItem, "Title") + " announcement";
                }
                else
                {
                    e.Item.Cells[1].Text = DataBinder.Eval(e.Item.DataItem, "Title") + " - (Lastviewed on: " + DataBinder.Eval(e.Item.DataItem, "HIT_DATE") + ")";
                    e.Item.Cells[1].ToolTip = "Click to view: " + DataBinder.Eval(e.Item.DataItem, "Title") + " announcement - Lastviewed on: " + DataBinder.Eval(e.Item.DataItem, "HIT_DATE");
                }

                e.Item.Cells[1].ToolTip = "Click to view: " + DataBinder.Eval(e.Item.DataItem, "Title") + " announcement";
                e.Item.Cells[2].ToolTip = "Category: " + DataBinder.Eval(e.Item.DataItem, "Category");
                e.Item.Cells[3].ToolTip = "Announcement author: " + DataBinder.Eval(e.Item.DataItem, "Author");
                e.Item.Cells[4].ToolTip = "Submitted on: " + DataBinder.Eval(e.Item.DataItem, "DatePublished");
                e.Item.Cells[5].ToolTip = "This announcement has been viewed: " + DataBinder.Eval(e.Item.DataItem, "Hits");

                //If we're in the approval tab, then we change the tooltip
                if (Request.QueryString["tab"] == "1")
                {
                    e.Item.Cells[1].ToolTip = "Waiting for approval, click to review and approve: " + DataBinder.Eval(e.Item.DataItem, "Title") + " announcement";
                }

                //Display the sorted category name from the dropdownlist
                if (Request.QueryString["catid"] != null)
                {
                    //lblSortedCat.Text = "Sorted by Category: " + DataBinder.Eval(e.Item.DataItem, "FeedID");
                }
                
                //Category should display category name and not category id
                foreach (sCategory cat in constant.FeedCategory)
                {
                    if(DataBinder.Eval(e.Item.DataItem, "Category").ToString() == cat.ID.ToString())
                        e.Item.Cells[2].Text = cat.Name;
                }
                
            }

            //Handles the header link tooltip
            //First, we make sure we're dealing with the Header
            if (e.Item.ItemType == ListItemType.Header)
            {
                #region Show Sort Image Arrow Up and Arrow Down

                string Sort = lbsort.Text;

                switch (Sort)
                {
                    case "FeedID":
                        if (lblCurrentSort.Text == "ASC")
                        {
                            e.Item.Cells[0].Text = "FeedID" + " <img src='../images/arrow_up2.gif'>";
                        }
                        else
                        {
                            e.Item.Cells[0].Text = "FeedID" + " <img src='../images/arrow_down2.gif'>";
                        }
                        break;

                    case "Title":
                        if (lblCurrentSort.Text == "ASC")
                        {
                            e.Item.Cells[1].Text = "Announcement Title" + " <img src='../images/arrow_up2.gif'>";
                        }
                        else
                        {
                            e.Item.Cells[1].Text = "Announcement Title" + " <img src='../images/arrow_down2.gif'>";
                        }
                        break;
                    /*
                case "AnnouncementImage":
                    if (lblCurrentSort.Text == "ASC")
                    {
                        e.Item.Cells[2].Text = "Photo" + " <img src='../images/arrow_up2.gif'>";
                    }
                    else
                    {
                        e.Item.Cells[2].Text = "Photo" + " <img src='../images/arrow_down2.gif'>";
                    }
                    break;
                    */
                    case "Category":
                        if (lblCurrentSort.Text == "ASC")
                        {
                            e.Item.Cells[2].Text = "Category" + " <img src='../images/arrow_up2.gif'>";
                        }
                        else
                        {
                            e.Item.Cells[2].Text = "Category" + " <img src='../images/arrow_down2.gif'>";
                        }
                        break;

                    case "Author":
                        if (lblCurrentSort.Text == "ASC")
                        {
                            e.Item.Cells[3].Text = "Author" + " <img src='../images/arrow_up2.gif'>";
                        }
                        else
                        {
                            e.Item.Cells[3].Text = "Author" + " <img src='../images/arrow_down2.gif'>";
                        }
                        break;

                    case "DatePublished":
                        if (lblCurrentSort.Text == "ASC")
                        {
                            e.Item.Cells[4].Text = "DatePublished" + " <img src='../images/arrow_up2.gif'>";
                        }
                        else
                        {
                            e.Item.Cells[4].Text = "DatePublished" + " <img src='../images/arrow_down2.gif'>";
                        }
                        break;

                    case "Hits":
                        if (lblCurrentSort.Text == "ASC")
                        {
                            e.Item.Cells[5].Text = "Hits" + " <img src='../images/arrow_up2.gif'>";
                        }
                        else
                        {
                            e.Item.Cells[5].Text = "Hits" + " <img src='../images/arrow_down2.gif'>";
                        }
                        break;
                }
                #endregion

                //Perform header style on announcement name column
                if (!string.IsNullOrEmpty(Request.QueryString["l"]) || !string.IsNullOrEmpty(Request.QueryString["find"]))
                {
                    e.Item.Cells[1].BackColor = System.Drawing.ColorTranslator.FromHtml("#0057D9");
                }
                //Perform header style based on category column
                /*
                if (!string.IsNullOrEmpty(Request.QueryString["img"]))
                {
                    e.Item.Cells[2].BackColor = System.Drawing.ColorTranslator.FromHtml("#0057D9");
                }
                 * */
                //Perform header style based on category column
                if (!string.IsNullOrEmpty(Request.QueryString["catid"]))
                {
                    e.Item.Cells[2].BackColor = System.Drawing.ColorTranslator.FromHtml("#0057D9");
                }
                //Perform header style on date column
                if (!string.IsNullOrEmpty(Request.QueryString["year"]))
                {
                    e.Item.Cells[4].BackColor = System.Drawing.ColorTranslator.FromHtml("#0057D9");
                }
                //Perform header style on Hits column
                if (!string.IsNullOrEmpty(Request.QueryString["top"]))
                {
                    e.Item.Cells[5].BackColor = System.Drawing.ColorTranslator.FromHtml("#0057D9");
                }

                //Display cell header tooltip
                e.Item.Cells[0].ToolTip = "Sort by ID - ASC or DESC";
                e.Item.Cells[1].ToolTip = "Sort by Announcement Name";
                //e.Item.Cells[2].ToolTip = "Sort by Announcement Photo";
                e.Item.Cells[2].ToolTip = "Sort by Announcement Category";
                e.Item.Cells[3].ToolTip = "Sort by Author";
                e.Item.Cells[4].ToolTip = "Sort by Submitted date";
                e.Item.Cells[5].ToolTip = "Sort by Most Popular - Hits";

                //Handles clickable and change color cell header on mouseover
                //If you add/delete or made changes to the order of the columns, make sure you change
                //the static javascript postback to get the right unique control id.
                e.Item.Cells[0].Attributes.Add("OnMouseOver", "this.style.backgroundColor='#ACCE22';this.style.cursor='pointer'");
                e.Item.Cells[0].Attributes.Add("OnMouseOut", "this.style.backgroundColor='#CEE76D';this.style.cursor='pointer'");
                e.Item.Cells[0].Attributes.Add("Onclick", "javascript:__doPostBack('dgrd_announcement$ctl02$ctl00')");
                e.Item.Cells[1].Attributes.Add("OnMouseOver", "this.style.backgroundColor='#ACCE22';this.style.cursor='pointer'");
                e.Item.Cells[1].Attributes.Add("OnMouseOut", "this.style.backgroundColor='#CEE76D';this.style.cursor='pointer'");
                e.Item.Cells[1].Attributes.Add("Onclick", "javascript:__doPostBack('dgrd_announcement$ctl02$ctl01')");
                /*e.Item.Cells[2].Attributes.Add("OnMouseOver", "this.style.backgroundColor='#ACCE22';this.style.cursor='pointer'");
                e.Item.Cells[2].Attributes.Add("OnMouseOut", "this.style.backgroundColor='#CEE76D';this.style.cursor='pointer'");
                e.Item.Cells[2].Attributes.Add("Onclick", "javascript:__doPostBack('dgrd_announcement$ctl02$ctl02')");*/
                e.Item.Cells[2].Attributes.Add("OnMouseOver", "this.style.backgroundColor='#ACCE22';this.style.cursor='pointer'");
                e.Item.Cells[2].Attributes.Add("OnMouseOut", "this.style.backgroundColor='#CEE76D';this.style.cursor='pointer'");
                e.Item.Cells[2].Attributes.Add("Onclick", "javascript:__doPostBack('dgrd_announcement$ctl02$ctl03')");
                e.Item.Cells[3].Attributes.Add("OnMouseOver", "this.style.backgroundColor='#ACCE22';this.style.cursor='pointer'");
                e.Item.Cells[3].Attributes.Add("OnMouseOut", "this.style.backgroundColor='#CEE76D';this.style.cursor='pointer'");
                e.Item.Cells[3].Attributes.Add("Onclick", "javascript:__doPostBack('dgrd_announcement$ctl02$ctl04')");
                e.Item.Cells[4].Attributes.Add("OnMouseOver", "this.style.backgroundColor='#ACCE22';this.style.cursor='pointer'");
                e.Item.Cells[4].Attributes.Add("OnMouseOut", "this.style.backgroundColor='#CEE76D';this.style.cursor='pointer'");
                e.Item.Cells[4].Attributes.Add("Onclick", "javascript:__doPostBack('dgrd_announcement$ctl02$ctl05')");
                e.Item.Cells[5].Attributes.Add("OnMouseOver", "this.style.backgroundColor='#ACCE22';this.style.cursor='pointer'");
                e.Item.Cells[5].Attributes.Add("OnMouseOut", "this.style.backgroundColor='#CEE76D';this.style.cursor='pointer'");
                e.Item.Cells[5].Attributes.Add("Onclick", "javascript:__doPostBack('dgrd_announcement$ctl02$ctl06')");
            }

            //Make sure we're not dealing with a Header
            if (e.Item.ItemType != ListItemType.Header)
            {
                //Change the color of the announcement name column when sorted by alpha letter
                if (!string.IsNullOrEmpty(Request.QueryString["l"]))
                {
                    e.Item.Cells[1].BackColor = System.Drawing.Color.Ivory;
                    e.Item.Cells[1].Attributes.Add("OnMouseOver", "this.style.backgroundColor='#F0E68C';this.style.cursor='pointer';this.style.color='#ff3e3e'");
                    e.Item.Cells[1].Attributes.Add("OnMouseOut", "this.style.backgroundColor='Ivory';this.style.cursor='pointer';this.style.color='#007AF4'");
                }

                //Change the color of the announcement name column when sorted by alpha letter
                if (!string.IsNullOrEmpty(Request.QueryString["find"]))
                {
                    e.Item.Cells[1].BackColor = System.Drawing.Color.Ivory;
                    e.Item.Cells[1].Attributes.Add("OnMouseOver", "this.style.backgroundColor='#F0E68C';this.style.cursor='pointer';this.style.color='#ff3e3e'");
                    e.Item.Cells[1].Attributes.Add("OnMouseOut", "this.style.backgroundColor='Ivory';this.style.cursor='pointer';this.style.color='#007AF4'");
                }

                //Change the color of the category column when sorted category
                if (!string.IsNullOrEmpty(Request.QueryString["catid"]))
                {
                    e.Item.Cells[3].BackColor = System.Drawing.Color.Ivory;
                    e.Item.Cells[3].Attributes.Add("OnMouseOver", "this.style.backgroundColor='#F0E68C'");
                    e.Item.Cells[3].Attributes.Add("OnMouseOut", "this.style.backgroundColor='Ivory'");
                }

                //Perform column style based on search criteria
                if (!string.IsNullOrEmpty(Request.QueryString["year"]))
                {
                    e.Item.Cells[5].BackColor = System.Drawing.Color.Ivory;
                    e.Item.Cells[5].Attributes.Add("OnMouseOver", "this.style.backgroundColor='#F0E68C'");
                    e.Item.Cells[5].Attributes.Add("OnMouseOut", "this.style.backgroundColor='Ivory'");
                }
                if (!string.IsNullOrEmpty(Request.QueryString["top"]))
                {
                    e.Item.Cells[6].BackColor = System.Drawing.Color.Ivory;
                    e.Item.Cells[6].Attributes.Add("OnMouseOver", "this.style.backgroundColor='#F0E68C'");
                    e.Item.Cells[6].Attributes.Add("OnMouseOut", "this.style.backgroundColor='Ivory'");
                }
                /*
                //Image filter
                if (!string.IsNullOrEmpty(Request.QueryString["img"]))
                {
                    e.Item.Cells[2].ToolTip = "Click to view - Image Name: " + DataBinder.Eval(e.Item.DataItem, "AnnouncementImage");
                    e.Item.Cells[2].Attributes.Add("OnMouseOver", "this.style.cursor='pointer';this.style.color='#ff3e3e';showimage('getimagepopupajax.aspx?id=" + strIDcell + "&imgname=" + DataBinder.Eval(e.Item.DataItem, "AnnouncementImage") + "',this);return false");
                    e.Item.Cells[2].Attributes.Add("OnMouseOut", "this.style.cursor='pointer';this.style.color='#007AF4';");
                    e.Item.Cells[2].ForeColor = System.Drawing.ColorTranslator.FromHtml("#007AF4");
                    e.Item.Cells[2].BackColor = System.Drawing.Color.Ivory;
                }
                 * */
            }
        }

        //The SortCommand event handler
        public void Announcements_SortCommand(object sender, DataGridSortCommandEventArgs e)
        {
            //Toggle SortAscending if the column that the data was sorted by has
            //been clicked again...
            if (lbOrderBy.Text == e.SortExpression)
            {
                if (lbDesc.Text == "desc")
                {
                    lbDesc.Text = "";
                    lblCurrentSort.Text = "ASC";
                    lbsort.Text = e.SortExpression;
                }
                else
                {
                    lbDesc.Text = "desc";
                    lblCurrentSort.Text = "DESC";
                    lbsort.Text = e.SortExpression;
                }
            }
            else
            {
                lbOrderBy.Text = e.SortExpression;
                lbDesc.Text = "";
                lblCurrentSort.Text = "ASC";
                lbsort.Text = e.SortExpression;
            }

            BindData();
            //rebind the DataGrid data
        }

        //Handles page change links - paging system
        public void New_Page(object sender, DataGridPageChangedEventArgs e)
        {
            dgrd_announcement.CurrentPageIndex = e.NewPageIndex;
            BindData();
        }

    }
}
