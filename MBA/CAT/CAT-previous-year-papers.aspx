<%@ Page Language="C#" MasterPageFile="~/Masters/catlinks.master" AutoEventWireup="True" CodeBehind="CAT-previous-year-papers.aspx.cs"  Inherits="ExamCrazy.MBA.CAT.CAT_previous_year_papers" %>
<%@ MasterType VirtualPath="~/Masters/catlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>cat previous year papers</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>cat 2007 paper</b>
<br>
<br><asp:hyperlink id="hyperlink1" runat="server" text="download the cat 2007 paper " navigateurl="http://examcrazy.com"></asp:hyperlink>
<br>
<br><asp:hyperlink id="hyperlink2" runat="server" text="see the cat 2007 key " navigateurl="~/mba/cat/cat-2007-paper-key.aspx"></asp:hyperlink>
<br>
<br><asp:hyperlink id="hyperlink3" runat="server" text="cat sample paper - 1 " navigateurl="~/mba/cat/cat-sample-test-section1.aspx"></asp:hyperlink>
<br>
<br><asp:hyperlink id="hyperlink4" runat="server" text="cat sample paper - 2 " navigateurl="~/mba/cat/cat-sample-test-section2.aspx"></asp:hyperlink>
<br>
<br><asp:hyperlink id="hyperlink5" runat="server" text="cat sample paper - 3 " navigateurl="~/mba/cat/cat-sample-test-section3.aspx"></asp:hyperlink>
<br>
<br>
<br><asp:hyperlink id="hyperlink6" runat="server" text="syllabus for the cat " navigateurl="~/mba/cat/cat-syllabus.aspx"></asp:hyperlink>
<br>
<br><asp:HyperLink ID="HyperLink7" runat="server" Text="cat 2007 analysis " NavigateUrl="~/mba/cat/cat-2007-analysis.aspx"></asp:HyperLink>
</td>
</tr></table>
</div>
</asp:Content>
