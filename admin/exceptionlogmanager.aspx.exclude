<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeFile="exceptionlogmanager.aspx.cs" Inherits="exceptionlogmanager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Exception Log Viewer</title>
         <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript">                            
<!-- Begin
function $id(id)
{
	return document.getElementById(id);
}

function checkAll()
{
  var theForm = document.forms[0]

   for(i=0; i<theForm.elements.length; i++)
   {
     $id('ExceptionLog_ctl0' + i + '_chkID').checked = true;
   }
} 
function unCheckAll()
{
    var theForm = document.forms[0]

   for(i=0; i<theForm.elements.length; i++)
   {
     $id('ExceptionLog_ctl0' + i + '_chkID').checked = false;
   }
} 
//  End -->                                            
</script>       
<!--[if gte IE 5]>
<style>
fieldset {background: #ffffff;}
</style>
<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
<div style="margin-left: 5px; margin-top: 25px;">
        <h3>Exception Log Manager</h3>
<div style="margin-top: 6px;"><asp:Label font-names="verdana" font-size="9" ID="lblusername" runat="server" /></div>
<div style="margin-bottom: 4px; margin-top: 10px;">
<img src="../images/arrow.gif" align="absmiddle" /><a href="managermain.aspx" class="content12" title="Back to manager main page">Manager Main</a>&nbsp;&nbsp;<asp:Label runat="server" id="lblreset" Visible="false" CssClass="content12" EnableViewState="false" />
</div>
</div>
<input type="hidden" id="inputCsv" name="inputCsv" runat="server" />
<div style="margin-top: 30px; margin-left: 12px; margin-right: 12px;">
<fieldset><legend><span class="sortcat">Last 50 Exceptions</span></legend>
    <div style="margin-top: 12px;">
    <a href="javascript:void(0)" title="Select All" class="content2" onClick="checkAll()">Check all</a>&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" title="Uncheck All" class="content2" onClick="unCheckAll()">UnCheck all</a>
     </div>
    <asp:Repeater id="ExceptionLog" runat="server">     
        <ItemTemplate>
        <div style="border-bottom: solid 1px #cccccc; padding-bottom: 12px; padding-top: 15px;">
            <div class="dcnt2" style="margin-top: 6px;">
            <span class="content2"><b>URL:</b></span>&nbsp;<a href="<%# Eval("URL")%>" target="_blank" class="content2"><%# Eval("URL")%></a>
            </div>
            <div class="dcnt2" style="margin-top: 6px;">
            <span class="content2"><b>Date:</b>&nbsp;<%# Eval("Date")%></span>
            </div>
            <div class="dcnt2" style="margin-top: 6px;">
            <span class="content2"><%# Eval("Exception")%></span>
            </div>
            <div class="dcnt2" style="margin-top: 6px;">
            <asp:CheckBox ID="chkID" runat="server" ToolTip="Check to delete" /><asp:Label ID="ExID" runat="server" Text='<%#Eval("ID")%>' style="visibility:hidden" />
            </div>       
        </div>       
       </ItemTemplate>
    </asp:Repeater>
    <br />
    <asp:Button ID="btnDelete" runat="server" CssClass="submitadmin" Text="Delete" CommandName="Delete" OnCommand="Delete_Exception" OnClientClick="return confirm('Are you sure you want to delete the selected exceptions?');" />
    </fieldset>     
    </div>
    </div>
    </form>
        <!--Begin Footer-->
<div style="clear:both; margin-top: 150px;"><br /></div>
<div class="footerwrap">
<br />
<img src="../images/returntop.gif" alt="return to top" align="absmiddle" border="0" /><a class="dt2" title="Return to top of the page" href="#Top">Return to top</a>
<br />
<span class="content2">
Copyright © 2000 - 2008 Ex-designz.net. All rights reserved. Developed By <a class="dt2" title="Website" href="http://www.ex-designz.net">Dexter Zafra - Ex-designz.net</a></span>
<br />
  <asp:HyperLink id="Powered" cssClass="dt2" ToolTip="Visit our portal website" NavigateURL="http://www.ex-designz.net" runat="server">Powered By Ex-designz.net World Recipe .NET version</asp:HyperLink>
 </div>
<!--End Footer-->
</body>
</html>
