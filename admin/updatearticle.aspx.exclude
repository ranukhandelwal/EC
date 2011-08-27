<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeFile="updatearticle.aspx.cs" Inherits="admin_updatearticle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Admin adding cooking article</title>
    <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" />
    <!-- TinyMCE -->
<script type="text/javascript" src="../tinymce_editor/tiny_mce.js"></script>
<script type="text/javascript">
	tinyMCE.init({
		// General options
		editor_deselector : "mceNoEditor",
		mode : "textareas",
		theme : "advanced",
		plugins : "safari,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,inlinepopups",

		// Theme options
		theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
		theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
		theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
		theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak",
		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_statusbar_location : "bottom",
		theme_advanced_resizing : true,

		// Example word content CSS (should be your site CSS) this one removes paragraph margins
		content_css : "../CSS/word.css",

		// Drop lists for link/image/media/template dialogs
		template_external_list_url : "lists/template_list.js",
		external_link_list_url : "lists/link_list.js",
		external_image_list_url : "lists/image_list.js",
		media_external_list_url : "lists/media_list.js",

		// Replace values for the template plugin
		template_replace_values : {
			username : "Some User",
			staffid : "991234"
		}
	});
</script>
<!-- /TinyMCE -->
<!--[if gte IE 5]>
<style>
fieldset {background: #ffffff;}
</style>
<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!--End Insert Recipe Form-->
<table border="0" cellpadding="2" align="center" cellspacing="2" width="70%">
  <tr>
<td width="68%">
<div style="padding: 2px; text-align: left; margin-left: 1px; margin-right: 26px;">
<img src="../images/arrow.gif" alt="" /><a title="Back to Article Manager" href="articlemanager.aspx" class="dsort">Article Manager</a>
<br /><br />
<asp:Label font-names="verdana" font-size="9" ID="lblusername" runat="server" />
<br />
</div>
<fieldset><legend>Updating <asp:Label ID="lbtitle" runat="server" /> Article</legend>
 <div style="padding-top: 1px;">
<table border="0" cellpadding="2" align="center" cellspacing="2" width="60%">
  <tr>
    <td width="26%"><span class="content2">Category:</span></td>
    <td width="74%">
<asp:dropdownlist id="ddlarticlecategory" runat="server" cssClass="ddl" AutoPostBack="false"></asp:dropdownlist>&nbsp;
</td>
  </tr>
    <tr>
    <td width="1%"><span class="content2">Author:</span><span class="cred2">*</span></td>
    <td width="102%">
      <asp:Label ID="lblauthorname" runat="server" cssClass="cmaron" EnableViewState="false" />
      <input type="hidden" id="Userid" size="25" class="textbox" runat="server" />
</td>
  </tr>
  <tr>
    <td width="26%"><span class="content2">Title:</span><span class="cred2">*</span></td>
    <td width="74%">
<input type="text" id="Title" name="Title" class="textbox" size="78" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />
      <asp:RequiredFieldValidator runat="server"
        id="artname" ControlToValidate="Title"
        cssClass="cred2" errormessage="* Article Title:<br />"
        display="Dynamic" />
</td>
  </tr>
    <tr>
    <td width="26%" valign="top"><span class="content2">Content:</span><span class="cred2">*</span></td>
    <td width="74%">
<textarea runat="server" id="Content" name="Content" class="textbox" cols="80" style="width: 80%" rows="50" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />
      <asp:RequiredFieldValidator runat="server"
        id="cont" ControlToValidate="Content"
        cssClass="cred2" errormessage="* Content:<br />"
        display="Dynamic" />
</td>
  </tr>
      <tr>
    <td width="26%" valign="top"><span class="content2">Summary:</span><span class="cred2">*</span></td>
    <td width="74%">
<textarea runat="server" id="Summary" class="mceNoEditor" cols="80" rows="3" />
      <asp:RequiredFieldValidator runat="server"
        id="summa" ControlToValidate="Summary"
        cssClass="cred2" errormessage="* Summary:<br />"
        display="Dynamic" />
</td>
  </tr>
    <tr>
    <td width="26%"><span class="content2">Keyword:</span><span class="cred2">*</span></td>
    <td width="74%">
<input type="text" id="Keyword" name="Keyword" class="textbox" size="100" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />
      <asp:RequiredFieldValidator runat="server"
        id="keyw" ControlToValidate="Keyword"
        cssClass="cred2" errormessage="* Keyword:<br />"
        display="Dynamic" />
</td>
  </tr>
  <tr>
    <td width="26%"></td>
    <td width="74%">
<input type="text" class="textbox" ID="hd" name="hd" runat="server" style="visibility:hidden;">
<br />
<asp:Button runat="server" Text="Update" id="btn1" cssClass="submit" OnClick="Update_Article" />
</td>
  </tr>
</table>
 </div>
</fieldset>
</td>
  </tr>
</table>
<asp:Literal id="JSLiteral" runat="server"></asp:Literal>
<!--End Insert Article Form-->
    </div>
    </form>
    <!--Begin Footer-->
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

