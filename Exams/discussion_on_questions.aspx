<%@ Page Language="C#" MasterPageFile="~/Masters/examslinks.master" AutoEventWireup="True" CodeBehind="discussion_on_questions.aspx.cs"  Inherits="ExamCrazy.Exams.discussion_on_questions" %>
<%@ MasterType VirtualPath="~/Masters/examslinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>Can I use online study material for exam preparation? </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>This is the place where your coaching, group or internet comes into picture.
<br>If you have coaching or group use it. Another more powerful way is to use online discussions. There are many instances when we miss some very basic concept but hesitate to discuss it with teacher or friends. Use internet for this. No one is looking you when you are asking even foolish questions so go ahead.
<br>For technical questions we are providing discussion on questions, use it. We are starting discussion on each subject soon. Use it. 
<br>
<br>
<br>
<br><b>
<br></b><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Click if you want more from online education</b>" NavigateUrl="~/feedback-discussion/what-do-you-expect-from-online-education.aspx"></asp:HyperLink><b>
<br></b><b>
<br></b><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Active jobs for </b><b>Freshers</b>" NavigateUrl="~/technical-jobs.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Engineering Coaching Institutes for GATE/IES/DRDO/PSU's</b>" NavigateUrl="~/engineering/coaching-institutes-engineering-india-for-gate-ies-psus.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>MBA Coaching Institutes for CAT/MAT/JMET etc</b>" NavigateUrl="~/mba/coaching-institutes-offering-mba-preparation-classes.aspx"></asp:HyperLink><b>
<br></b>
<br>
</td>
</tr></table>
</div>
</asp:Content>
