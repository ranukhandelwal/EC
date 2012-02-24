<%@ Page Language="C#" MasterPageFile="~/Masters/bschool_rankingslinks.master" AutoEventWireup="true" CodeBehind="Indian-B-schools-AIMA-mba-rankings-2007.aspx.cs"  Inherits="ExamCrazy.MBA.Bschool_rankings.Indian_B_schools_AIMA_mba_rankings_2007" %>
<%@ MasterType VirtualPath="~/Masters/bschool_rankingslinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>indian </b><b>bschool</b><b> rankings by aima 2007</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>grading of participating indian b schools</b>
<br>
<br>parameters considered for rating the b schools 
<br>
<br>&nbsp; &nbsp; intellectual capital
<br>&nbsp; &nbsp; admissions and placements
<br>&nbsp; &nbsp; infrastructure
<br>&nbsp; &nbsp; industry interface
<br>&nbsp; &nbsp; governance
<br>
<br><b>rating methodology</b>
<br>
<br>all participating institutes are rated into three categories - a, b and c. these are further subdivided :
<br>
<br>&nbsp; &nbsp; category a is divided into a+ and a
<br>&nbsp; &nbsp; category b is divided into b+ and b
<br>&nbsp; &nbsp; category c is divided into c+ and c
<br>
<br>subsequently, within each such category, the institutes are divided into two groups, one for the "better performers" within that group, and the other for the institutes figuring at lower positions within the group.
<br>all b-schools in each sub-group are listed alphabetically to make it impartial. no ranks are given in the survey. the b-schools are divided into broad bands with the top 10-15 b-schools given a special mention as "super league" (sl). 
<br>
<br><b>&nbsp; &nbsp; </b><asp:hyperlink id="hyperlink1" runat="server" text="<b>grade "super league" (sl) </b><b>bschools</b>" navigateurl="~/mba/bschool-rankings/aima-2007-rankings-grade-super-league-indian-bschools.aspx"></asp:hyperlink>
<br>
<br><b>&nbsp; &nbsp; </b><asp:hyperlink id="hyperlink2" runat="server" text="<b>grade a+ &amp; grade a </b><b>bschools</b>" navigateurl="~/mba/bschool-rankings/aima-2007-rankings-grade-a-plus-indian-bschools.aspx"></asp:hyperlink>
<br>
<br><b>&nbsp; &nbsp; </b><asp:hyperlink id="hyperlink3" runat="server" text="<b>grade b+ &amp; grade b </b><b>bschools</b>" navigateurl="~/mba/bschool-rankings/aima-2007-rankings-grade-b-plus-indian-bschools.aspx"></asp:hyperlink>
<br>
<br><b>&nbsp; &nbsp; </b><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>grade c+ &amp; grade c </b><b>bschools</b>" NavigateUrl="~/mba/bschool-rankings/aima-2007-rankings-grade-c-plus-indian-bschools.aspx"></asp:HyperLink>
<br>
<br>
<br>
<br>courtesy aima (all india management association) 
</td>
</tr></table>
</div>
</asp:Content>
