using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DynamicTable : System.Web.UI.UserControl
{
    // Rows property to hold the Rows in the ViewState
    protected int Rows
    {
        get
        {
            return ViewState["Rows"] != null ? (int)ViewState["Rows"] : 0;
        }
        set
        {
            ViewState["Rows"] = value;
        }
    }

    // Columns property to hold the Columns in the ViewState
    protected int Columns
    {
        get
        {
            return ViewState["Columns"] != null ? (int)ViewState["Columns"] : 0;
        }
        set
        {
            ViewState["Columns"] = value;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        // Run only once a postback has occured
        if (Page.IsPostBack)
        {
            //Set the Rows and Columns property with the value
            //entered by the user in the respective textboxes
            this.Rows = Int32.Parse(txtRows.Text);
            this.Columns = Int32.Parse(txtCols.Text);
        }

        CreateDynamicTable();
    }

    protected void btnGenerate_Click(object sender, EventArgs e)
    {
        CreateDynamicTable();
        RawTable.Visible = false;
    }


    private void CreateDynamicTable()
    {
        __dynamictable.Controls.Clear();

        // Fetch the number of Rows and Columns for the table 
        // using the properties
        int tblRows = Rows;
        int tblCols = Columns;
        // Create a Table and set its properties 
        Table tbl = new Table();
        // Add the table to the placeholder control
        __dynamictable.Controls.Add(tbl);
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
            CreateDynamicTable();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Just a click to cause postback
    }
}