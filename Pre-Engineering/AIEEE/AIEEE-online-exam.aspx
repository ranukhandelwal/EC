<%@ Page Language="C#" MasterPageFile="~/Masters/aieeelinks.master" AutoEventWireup="True" CodeBehind="AIEEE-online-exam.aspx.cs"  Inherits="ExamCrazy.Pre_Engineering.AIEEE.AIEEE_online_exam" %>
<%@ MasterType VirtualPath="~/Masters/aieeelinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

	AIEEE 2011 online exam 
	<br>As per orders of Min. of Human Resource Development, Govt. of India, the <b>online examination would be conducted for a maximum 1.0 </b><b>lac</b><b> candidates</b> in BE/B.tech only and <b>remaining candidates will appear in Pen &amp; paper mode</b> (off-line) as conducted earlier. The candidates wishing to appear in online examination will apply online only through the AIEEE website and the fee is required to be paid by credit/debit card only. All informations and instructions for submitting of application for appearing in online examination are available on CBSE website www.aicee.nic.in
<br>
<br>The online exam would be conducted in <asp:HyperLink ID="HyperLink1" runat="server" Text="certain cities" NavigateUrl="~/aieee.aieee-test-centers-exam-cities.aspx"></asp:HyperLink>. The pattern of question paper &amp; time duration of online examination and offline examination would remain the same and the candidates will be informed by various modes about their center,date &amp; time of online examination. Online examination will be conducted for a maximum capacity of 5000 candidates in a city on first-come-first-serve basis. The candidates may opt another city if the seats in a particular city are full. Though, the candidates have been asked to submit their choices of examination cities but the Board has right to change the center. The examination fee for the candidates who intend to appear in online examination is as under:
<br>
<br>General/OBC &nbsp; &nbsp; Rs 400 + 2% of the examination fee plus service tax as applicable
<br>SC/ST &nbsp; &nbsp; Rs 200 + 2% of the examination fee plus service tax as applicable
<br>
<br>
<br>
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="Click here to See important dates for AIEEE exam" NavigateUrl="~/aieee.aieee-important-dates-exam-schedule.aspx"></asp:HyperLink> 
	</div>
</asp:Content>
