<%@ Page Language="C#" MasterPageFile="~/Masters/catlinks.master" AutoEventWireup="True" CodeBehind="CAT-eligibility.aspx.cs"  Inherits="ExamCrazy.MBA.CAT.CAT_eligibility" %>
<%@ MasterType VirtualPath="~/Masters/catlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>cat eligibility</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>the candidate must hold a bachelor's degree, with at least 50% marks or equivalent cgpa [45% in case of the candidates belonging to scheduled caste (sc)/ scheduled tribe (st) or persons with disability (pwd) category], of any of the universities incorporated by an act of the central or state legislature in india or other educational institutions established by an act of parliament or declared to be deemed as a university under section 3 of ugc act, 1956, or possess an equivalent qualification recognized by the ministry of hrd, government of india. 
<br>the bachelor's degree or equivalent qualification obtained by the candidate must entail a minimum of three years of education after completing higher secondary schooling (10+2) or equivalent. 
<br>the percentage obtained by the candidate in the bachelor's degree would be based on the practice followed by the university/institution from where the candidate has obtained the degree. in case of the candidates being awarded grades/cgpa instead of marks, the equivalence would be based on the equivalence certified by the university/institution from where they have obtained bachelor's degree. in case the university/ institution does not have any scheme for converting cgpa into equivalent marks, the equivalence would be established by the iims by dividing obtained cgpa with the maximum possible cgpa and multiplying the resultant with 100.
<br>candidates appearing for the final year bachelor's degree / equivalent qualification examination and those who have completed degree requirement and are awaiting results can also apply. such candidates must produce a certificate from the principal/head of the department/registrar/director of the university/ institution certifying that the candidate is currently in the final year / is awaiting final results and has obtained at least 50% marks or equivalent (45% in case of candidates belonging to sc/st/pwd category) based on latest available grades/ marks. 
<br>
<br>
<br><asp:hyperlink id="hyperlink1" runat="server" text="syllabus for the cat " navigateurl="~/mba/cat/cat-syllabus.aspx"></asp:hyperlink>
<br>
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="cat 2007 analysis " NavigateUrl="~/mba/cat/cat-2007-analysis.aspx"></asp:HyperLink>
</td>
</tr></table>
</div>
</asp:Content>
