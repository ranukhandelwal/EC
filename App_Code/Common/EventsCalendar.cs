using System;
using System.Web.UI;
using System.ComponentModel;
using System.Web.UI.WebControls;
using System.Data;

namespace EC.Common.EventCalendar
{

    /********************************************************
      Class CalendarItem
        - serves as the container for a single calendar entry,
          allowing for databinding syntax like the following
          to be used in the .aspx page:
          
            <%# Container.DataItem("MyField") %>            
     ********************************************************/

    public class CalendarItem : Control, INamingContainer
    {
        private DataRow _dataItem;

        public CalendarItem(DataRow dr)
        {
            _dataItem = dr;
        }

        // because the source data will be a DataTable
        // object, it makes sense for our DataItem
        // property to return a DataRow object
        // (i.e. a single item in the data source
        //  corresponds to a single row of data)
        public DataRow DataItem
        {
            get { return _dataItem; }
            set { _dataItem = value; }
        }
    }


    /// <summary>
    /// Simple web control that exposes itself as a div
    /// </summary>
    public class DivCtrl : WebControl
    {
        private string m_innerText;
        public DivCtrl(string innerText)
            : base(HtmlTextWriterTag.Div)
        {
            m_innerText = innerText;
        }

        public DivCtrl()
            : base(HtmlTextWriterTag.Div)
        {
            m_innerText = null;
        }

        protected override void RenderContents(HtmlTextWriter writer)
        {
            if (m_innerText != null) writer.WriteEncodedText(m_innerText);
            base.RenderContents(writer);
        }
    }

    /********************************************************
      Class EventCalendar
        - subclass of the ASP.NET Calendar control for
          displaying events from a DataTable with support
          for templates
     ********************************************************/

    public class EventCalendar : Calendar, INamingContainer
    {
        private object _dataSource;
        private string _dataMember;
        private string _dayField;
        private string _listView;
        private Style dayNumberStyle;
        private ITemplate _itemTemplate;
        private ITemplate _noEventsTemplate;
        private TableItemStyle _dayWithEventsStyle;
        private TableItemStyle _USholidayWithEventsStyle;
        private DataTable _dtSource;

        /// <summary>
        /// Converts the given dayoftheweek name to abbrevation.
        /// </summary>
        private string GetDayNameAbbrev(string DayName)
        {
            string daynameabbrev = "";

            switch (DayName)
            {
                case "Sunday":
                    daynameabbrev = "Sun.";
                    break;
                case "Monday":
                    daynameabbrev = "Mon.";
                    break;
                case "Tuesday":
                    daynameabbrev = "Tue.";
                    break;
                case "Wednesday":
                    daynameabbrev = "Wed.";
                    break;
                case "Thursday":
                    daynameabbrev = "Thu.";
                    break;
                case "Friday":
                    daynameabbrev = "Fri.";
                    break;
                case "Saturday":
                    daynameabbrev = "Sat.";
                    break;
            }

            return daynameabbrev;
        }

        /// <summary>
        /// Converts the given month number to month name or abbrevation
        /// </summary>
        private string GetMonthNameOrAbbrev(int month, bool abbrev)
        {
            DateTime date = new DateTime(1900, month, 1);
            if (abbrev) return date.ToString("MMM");
            return date.ToString("MMMM");
        }

        // Support either a DataSet or DataTable object
        // for the DataSource property
        public object DataSource
        {
            get { return _dataSource; }
            set
            {
                if (value is DataTable || value is DataSet)
                    _dataSource = value;
                else
                    throw new Exception("The DataSource property of the EventCalendar control" +
                                        " must be a DataTable or DataSet object");
            }
        }

        // If a DataSet is supplied for DataSource,
        // use this property to determine which
        // DataTable within the DataSet should
        // be used; if DataMember is not supplied,
        // the first table in the DataSet will
        // be used.
        public string DataMember
        {
            get { return _dataMember; }
            set { _dataMember = value; }
        }

        public string ListView
        {
            get { return _listView; }
            set { _listView = value; }
        }

        // Specify the name of the field within
        // the source DataTable that contains
        // a DateTime value for displaying in the
        // calendar.
        public string DayField
        {
            get { return _dayField; }
            set { _dayField = value; }
        }

        public TableItemStyle DayWithEventsStyle
        {
            get { return _dayWithEventsStyle; }
            set { _dayWithEventsStyle = value; }
        }

        public TableItemStyle USHolidayWithEventsStyle
        {
            get { return _USholidayWithEventsStyle; }
            set { _USholidayWithEventsStyle = value; }
        }

        [TemplateContainer(typeof(CalendarItem))]
        public ITemplate ItemTemplate
        {
            get { return _itemTemplate; }
            set { _itemTemplate = value; }
        }


        [TemplateContainer(typeof(CalendarItem))]
        public ITemplate NoEventsTemplate
        {
            get { return _noEventsTemplate; }
            set { _noEventsTemplate = value; }
        }

        [PersistenceModeAttribute(PersistenceMode.InnerProperty)]
        [NotifyParentPropertyAttribute(true)]
        [DefaultValueAttribute("")]
        [DesignerSerializationVisibilityAttribute(DesignerSerializationVisibility.Content)]
        public Style DayNumberStyle
        {
            get
            {
                if (dayNumberStyle == null)
                {
                    dayNumberStyle = new Style();
                    if (IsTrackingViewState)
                        ((IStateManager)dayNumberStyle).TrackViewState();
                }
                return dayNumberStyle;
            }
        }

        // Constructor    
        public EventCalendar()
            : base()
        {
            // since this control will be used for displaying
            // events, set these properties as a default
            this.SelectionMode = CalendarSelectionMode.None;
            this.ShowGridLines = true;
        }

        private void SetupCalendarItem(TableCell cell, DataRow r, ITemplate t)
        {
            // given a calendar cell and a datarow, set up the
            // templated item and resolve data binding syntax
            // in the template
            CalendarItem dti = new CalendarItem(r);
            t.InstantiateIn(dti);
            dti.DataBind();
            cell.Controls.Add(dti);
        }

        private void USHolidayCellStyle(TableCell cell, DataRowView drv)
        {
            string eventType = drv["CATEGORY"].ToString();

            if (eventType == "USHoliday")
            {
                if (this.USHolidayWithEventsStyle != null)
                    cell.ApplyStyle(this.USHolidayWithEventsStyle);
            }
        }

        protected override void OnDayRender(TableCell cell, CalendarDay day)
        {
            cell.Controls.Clear();
            string strDateText;

            if (this.ListView == "ListView")
            {
                TableCell cellListView = new TableCell();
                cell.Controls.Add(cellListView);
                strDateText = GetDayNameAbbrev(day.Date.DayOfWeek.ToString()) + " " + GetMonthNameOrAbbrev(day.Date.Month, true) + ", " + day.DayNumberText + " " + day.Date.Year;
            }
            else
            {
                strDateText = day.DayNumberText;
            }

            DivCtrl div = new DivCtrl(strDateText);
            div.ApplyStyle(DayNumberStyle);
            div.Attributes.Add("onmouseover", "Tip('Click to add event<br>appointment or meeting<br>on - <b>" + GetMonthNameOrAbbrev(day.Date.Month, true) + ", " + day.DayNumberText + " " + day.Date.Year + "</b>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            div.Attributes.Add("onmouseout", "UnTip()");
            div.Attributes.Add("onclick", "AddEventCalendar('" + day.Date.ToShortDateString() + "')");
            cell.Controls.Add(div);

            // _dtSource was already set by the Render method            
            if (_dtSource != null)
            {
                // We have the data source as a DataTable now;                
                // filter the records in the DataTable for the given day;
                // force the date format to be MM/dd/yyyy
                // to ensure compatibility with RowFilter
                // date expression syntax (#date#).
                // Also, take the possibility of time
                // values into account by specifying
                // a date range, to include the full day
                DataView dv = new DataView(_dtSource);
                dv.RowFilter = string.Format(
                   "{0} >= #{1}# and {0} < #{2}#",
                   this.DayField,
                   day.Date.ToString("MM/dd/yyyy"),
                   day.Date.AddDays(1).ToString("MM/dd/yyyy")
                );

                string eventType = string.Empty;
                DateTime eDate;

                // are there events on this day?
                if (dv.Count > 0)
                {
                    // there are events on this day; if indicated, 
                    // apply the DayWithEventsStyle to the table cell
                    if (this.DayWithEventsStyle != null)
                        cell.ApplyStyle(this.DayWithEventsStyle);

                    // for each event on this day apply the
                    // ItemTemplate, with data bound to the item's row
                    // from the data source
                    if (this.ItemTemplate != null)
                        foreach (DataRowView drv in dv)
                        {
                            USHolidayCellStyle(cell, drv);
                            SetupCalendarItem(cell, drv.Row, this.ItemTemplate);
                        }
                }
                else
                {
                    // no events this day;
                    if (this.NoEventsTemplate != null)
                    {
                        SetupCalendarItem(cell, null, this.NoEventsTemplate);
                    }
                }
            }

            // call the base render method too
            base.OnDayRender(cell, day);

        }

        protected override void Render(HtmlTextWriter html)
        {
            _dtSource = null;

            if (this.DataSource != null && this.DayField != null)
            {
                // determine if the datasource is a DataSet or DataTable
                if (this.DataSource is DataTable)
                    _dtSource = (DataTable)this.DataSource;
                if (this.DataSource is DataSet)
                {
                    DataSet ds = (DataSet)this.DataSource;
                    if (this.DataMember == null || this.DataMember == "")
                        // if data member isn't supplied, default to the first table
                        _dtSource = ds.Tables[0];
                    else
                        // if data member is supplied, use it
                        _dtSource = ds.Tables[this.DataMember];
                }
                // throw an exception if there is a problem with the data source
                if (_dtSource == null)
                    throw new Exception("Error finding the DataSource.  Please check " +
                                        " the DataSource and DataMember properties.");
            }

            // call the base Calendar's Render method
            // allowing OnDayRender() to be executed
            base.Render(html);
        }
    }
}
