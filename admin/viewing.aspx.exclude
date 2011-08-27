<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeFile="viewing.aspx.cs" Inherits="admin_viewing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Reviewing Recipe for Approval</title>
    <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
               <table width=100% height=100%>
               <tr>
	        <td valign="middle">
                       <table width=40% border="0" cellpadding="0" cellspacing="0" align="center">
                           <tr>
            	                   <td colspan=2  bgcolor="#6898d0">
                                     <div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div class="dcntmenu"><asp:Label id="lblapprovalstatus" cssclass="contadmin" runat="server" /></div>
</div>
    </td>
</tr>
       <tr>
             <td bgcolor="#ffffff">
            	     <table width="100%" border=0 cellpadding=3 cellspacing=0>       

            		                  <tr>
          <td bgcolor="#F4F9FF" class="content2">Name:</td>   		
         <td bgcolor="#FBFDFF">
<asp:Label runat="server" id="lblname" cssClass="cmaron4" />
            			                 </td>
            		                  </tr>
<tr>
          <td bgcolor="#F4F9FF" class="content2">Category:</td>   		
         <td bgcolor="#FBFDFF">
<asp:Label runat="server" id="lblCatName" cssClass="content2" />
            			                 </td>
            		                  </tr>
                     <tr>
                       <td bgcolor="#F4F9FF" class="content2">Author:</td>   		
                       <td bgcolor="#FBFDFF">
      <asp:Label runat="server" id="lblauthor" cssClass="content2" />
            			 </td>        		                  
                                   </tr>

            		                  <tr>
          <td bgcolor="#F4F9FF" class="content2">Hits:</td>   		
         <td bgcolor="#FBFDFF">
<asp:Label runat="server" id="lblhits" cssClass="cmaron3" />
            			                 </td>
            		                  </tr>
                     <tr>
                       <td bgcolor="#F4F9FF" class="content2">Date Submitted:</td>   		
                       <td bgcolor="#FBFDFF">
                     <asp:Label runat="server" id="lbldate" cssClass="cyel" />
            			 </td>          		                  
                                    </tr>
                                                         <tr>
                       <td bgcolor="#F4F9FF" class="content2">Last Viewed:</td>   		
                       <td bgcolor="#FBFDFF">
                     <asp:Label runat="server" id="lblastviewed" cssClass="cyel" />
            			 </td>          		                  
                                    </tr>
     <tr>
         <td valign="top" bgcolor="#F4F9FF" class="content2">Photo:</td>
            	 <td bgcolor="#FBFDFF">       	 
            	 <img src="<%=strRecipeImage%>" style="margin-top: 12px; border: solid 1px #A0BEE2; padding: 1px;" width="150" height="120" />           	 
       </td>
 </tr>
            		                  <tr>
            			         <td valign="top" bgcolor="#F4F9FF" class="content2">Ingredients:</td>
            			            <td bgcolor="#FBFDFF">
 <asp:TextBox runat="server" id="Ingredients" cssClass="textbox" textmode="multiline" columns="70" rows="14" readonly />
            			                 </td>
            		                  </tr>
                                           <tr>
            			            <td valign="top" bgcolor="#F4F9FF" class="content2">Instructions:</td>  		
            			            <td bgcolor="#FBFDFF">
 <asp:TextBox runat="server" id="Instructions" cssClass="textbox" textmode="multiline" columns="70" rows="14" readonly />
<br />
<div style="text-align: left;" class="content2"><asp:Button runat="server" Text="Approve This Recipe" id="approvebutton" cssClass="submitadmin" ToolTip="Click to approve this recipe" onclick="Approve_Recipe"/></div>
            			                 </td>
            		                  </tr>          		                  
            	                   </table>
<br />
<div style="text-align: center;" class="content2"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="JavaScript:onClick= window.close()" cssClass="content2">Close Window</asp:HyperLink></div>
                                </td>
		                    </tr>
		               </table>
	               </td>
               </tr>
           </table>
    </div>
    </form>
</body>
</html>
