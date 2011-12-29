<%@ Page Title="" Language="C#" MasterPageFile="~/AdminArticle.master" AutoEventWireup="true" CodeBehind="updatearticle.aspx.cs" Inherits="ExamCrazy.admin.updatearticle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headerquerycss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageName" runat="server">
Articles
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AddToBreadCrum" runat="server">
<img id="Img1" src="~/images/arrow.gif" align="absmiddle" runat="server" /><a id="A1"
        href="~/admin/ArticleManager.aspx" class="content12" title="Back to Article manager main page"
        runat="server">Article Manager Main Page</a>&nbsp;&nbsp;<asp:Label runat="server"
            ID="lblreset" Visible="false" CssClass="content12" EnableViewState="false" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageNameBox" runat="server">
Update Articles
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
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
<input type="text" id="Title1" name="Title1" class="textbox" size="78" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />
      <asp:RequiredFieldValidator runat="server"
        id="artname" ControlToValidate="Title1"
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
<asp:Literal id="JSLiteral" runat="server"></asp:Literal>
</asp:Content>
