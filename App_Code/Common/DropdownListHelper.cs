#region XD World Recipe V 3
// FileName: DropdownListHelper.cs
// Author: Dexter Zafra
// Date Created: 6/19/2008
// Website: www.ex-designz.net
#endregion
using System;
using System.Data;
using System.Web.UI.WebControls;
using System.Collections;

namespace EC.Common
{
    /// <summary>
    /// Dropdownlist Helper
    /// </summary>
    public static class DropdownlistHelper
    {
        /// <summary>
        /// Populate dropdownlist
        /// </summary>
        /// <returns></returns>
        public static void FillUpDropDown(DropDownList ddl, Hashtable ht, string defaultselectedvalue)
        {
            string strText, strValue;

            IDictionaryEnumerator ie = ht.GetEnumerator();

            while (ie.MoveNext())
            {
                ddl.Items.Add(new ListItem(ie.Value.ToString(), ie.Key.ToString()));
            }

            if (!string.IsNullOrEmpty(defaultselectedvalue))
                ddl.Items.Insert(0, new ListItem(defaultselectedvalue, "0"));

            //Loop through the items, asign text and value, and sort by text ascending.
            for (int i = ddl.Items.Count - 1; i > 0; i--)
                for (int j = 1; j < i; j++)
                {
                    if (ddl.Items[j].Text.CompareTo(ddl.Items[j + 1].Text) > 0)
                    {
                        strText = ddl.Items[j].Text;
                        strValue = ddl.Items[j].Value;
                        ddl.Items[j].Text = ddl.Items[j + 1].Text;
                        ddl.Items[j].Value = ddl.Items[j + 1].Value;
                        ddl.Items[j + 1].Text = strText;
                        ddl.Items[j + 1].Value = strValue;
                    }
                }
        }

    }
}