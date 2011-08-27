<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeFile="popupgetuserswhohasnotactivatedaccount.aspx.cs" Inherits="popupgetuserswhohasnotactivatedaccount" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Users</title>
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
     $id('UserUnActivatedAccount_ctl0' + i + '_chkID').checked = true;
   }
} 
function unCheckAll()
{
    var theForm = document.forms[0]

   for(i=0; i<theForm.elements.length; i++)
   {
     $id('UserUnActivatedAccount_ctl0' + i + '_chkID').checked = false;
   }
} 
//  End -->                                            
</script>  
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="margin-bottom: 8px; margin-top: 8px;">
        <span class="content2"><b>Users Who Has Not Activated Their Account</b></span>
     </div>
      <div style="margin-bottom: 8px; margin-top: 12px;">
        <span class="content2">Unfortunately, sending multiple activation emails to different recipients does not work.
<br>If you can figure out other solution, just drop me an email. For now, only select 1 user to send an activation.</span>
     </div>
     <div style="margin-bottom: 12px; margin-top: 8px;">
        <a href="javascript:void(0)" title="Select All" class="content2" onClick="checkAll()">Check all</a>&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" title="Uncheck All" class="content2" onClick="unCheckAll()">UnCheck all</a>
     </div>
        <asp:Repeater id="UserUnActivatedAccount" runat="server">     
        <ItemTemplate>
            <div class="dcnt2" style="margin-top: 2px;">
             <asp:CheckBox ID="chkID" runat="server" ToolTip="Check to send activation to this user." />&nbsp;<a title="View profile." href="../popupuserprofile.aspx?uid=<%# Eval("UID")%>" target="_blank" class="content2"><%# Eval("UserName")%></a>&nbsp;<span class="content2">&nbsp;joined on <%# Eval("DateJoined", "{0:M/d/yyyy}")%></span>
             <asp:Label ID="User_name" runat="server" Text='<%# Eval("UserName")%>' style="visibility:hidden" />
            <asp:Label ID="User_guid" runat="server" Text='<%# Eval("GUID")%>' style="visibility:hidden" />
            <asp:Label ID="User_email" runat="server" Text='<%# Eval("Email")%>' style="visibility:hidden" />
            </div>         
       </ItemTemplate>
    </asp:Repeater>
    <br />
    <asp:Button ID="btnActivate" runat="server" CssClass="submitadmin" Text="Send Activation" CommandName="SendActivation" OnCommand="SendActivation_Click" />
    </div>
    </form>
</body>
</html>
