<%@ Page Language="C#" MasterPageFile="~/Masters/examslinks.master" AutoEventWireup="True" CodeBehind="books_to_follow_for_Competitive_Exams.aspx.cs"  Inherits="ExamCrazy.Exams.books_to_follow_for_Competitive_Exams" %>
<%@ MasterType VirtualPath="~/Masters/examslinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>Which books should I follow? Are my text books good for competitive exam too? </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Intelligent selection of books is required. Always refer to standard books for making concepts. 
<br>While selecting books check following:
<br>1) It is easy to understand (but don't compromise on quality) 
<br>2) It contains sufficient solved examples and unsolved numerical. 
<br>3) Some times some books are good for theory and some for numerical while selecting such books make sure that you have both books 
<br>4) If you are referring to e-books/e-articles select those books which allow you online discussion too, examcrazy.com is trying to provide you same. 
<br>5) Some times there are mistakes in book. Don't assume your self that there is mistake, consult with some expert or if you are following some e-book/e-tutorial then use discussion to clarify doubts. 
<br>
<br>
<br>
<br><b>
<br></b><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Click if you want more from online education</b>" NavigateUrl="~/feedback-discussion/what-do-you-expect-from-online-education.aspx"></asp:HyperLink><b>
<br></b><b>
<br></b><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Active jobs for </b><b>Freshers</b>" NavigateUrl="~/technical-jobs.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Engineering Coaching Institutes for GATE/IES/DRDO/PSU's</b>" NavigateUrl="~/engineering/coaching-institutes-engineering-india-for-gate-ies-psus.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>MBA Coaching Institutes for CAT/MAT/JMET etc</b>" NavigateUrl="~/mba/coaching-institutes-offering-mba-preparation-classes.aspx"></asp:HyperLink>
</td>
</tr></table>
</div>
</asp:Content>
