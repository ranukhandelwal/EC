<%@ Page Language="C#" MasterPageFile="~/Masters/expertspeaklinks.master" AutoEventWireup="True" CodeBehind="Expert_speak_articles.aspx.cs"  Inherits="ExamCrazy.Expert_speak.Expert_speak_articles" %>
<%@ MasterType VirtualPath="~/Masters/expertspeaklinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>Articles by Experts </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink1" runat="server" Text="What is Expert Speak" NavigateUrl="~/expertspeak.aspx"></asp:HyperLink> 
<br>For more details mail at expert.speak@gmail.com </td>
</tr>

    <tr>

      
      <td class="txt">
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="Promoting Energy Efficiency and Conservation" NavigateUrl="~/expert-speak/energy_efficiency_conservation.aspx"></asp:HyperLink> 
<br>By Prof Sunil Kumar, IEC College, Greater Noida 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><asp:HyperLink ID="HyperLink3" runat="server" Text="Presenting a Seminar in college" NavigateUrl="~/expert-speak/presenting_a_seminar_in_college.aspx"></asp:HyperLink> 
<br>By Deepa Gupta, Amity University, Noida 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><asp:HyperLink ID="HyperLink4" runat="server" Text="Career In Multimedia &amp; Networking" NavigateUrl="~/expert-speak/career_opportunities_in_multimedia_networking.aspx"></asp:HyperLink> 
<br>By Dr. Dharm Bir Singh, Director, NIET, Greater Noida 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><asp:HyperLink ID="HyperLink5" runat="server" Text="Engineers Vs Scientists" NavigateUrl="~/expert-speak/engineer_scientists.aspx"></asp:HyperLink> 
<br>By J P Agarwal, HOD ECE Department GIT, Jaipur 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><asp:HyperLink ID="HyperLink6" runat="server" Text="Emerging Business Proposals For Technology" NavigateUrl="~/expert-speak/emerging_business_proposals_for_technology.aspx"></asp:HyperLink> 
<br>By ChanderShekhar, Astt. Professor, CSE Department, SKIET, Kurukshetra 
</td>
</tr>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
<br><b>More material available at Expert Speak</b></td>
</tr></table>
<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><asp:HyperLink ID="HyperLink7" runat="server" Text="Tutorials from faculty" NavigateUrl="~/expert-speak/expert_speak_tutorials.aspx"></asp:HyperLink>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><asp:HyperLink ID="HyperLink8" runat="server" Text="Practice Tests prepared by Faculty" NavigateUrl="~/expert-speak/expert_speak_practice_tests.aspx"></asp:HyperLink>
</td>
</tr></table>
<br>
</td>
</tr></table>
</div>
</asp:Content>
