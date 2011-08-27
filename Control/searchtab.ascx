<%@ Control Language="C#" AutoEventWireup="true" Inherits="searchtab"  EnableViewState="false" Codebehind="searchtab.ascx.cs" %>
<!--Begin Search-->
<div style="margin-left: 10px; margin-right: 12px;">
<div class="toproundbluesearchtab">
<div class="toproundbluesearchtabheader"><span class="content3" style="color: #fff;">Recipe Search</span></div>
</div>
<div id="basic" class="tbcont">
<div style="padding-top: 5px; color: #000;">
<img src="images/search.gif" border="0" alt="Search recipe" align="absmiddle">
<input type="text" name="find" id="find" class="textboxsearch" size="20" value="Find..." onfocus="if(this.value=='Find...')value='';" onblur="if(this.value=='')value='Find...';" runat="server"> in 
<asp:dropdownlist id="SDropName" runat="server" cssClass="ddlsearch" AutoPostBack="false"></asp:dropdownlist>
<asp:Button ID="Sbuton" runat="server" cssClass="submitadmin" OnClick="SearchButton_Click" Text="Search" />
</div>
</div>
</div>
<!--End Search-->

