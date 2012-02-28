<%@ Page Language="C#" MasterPageFile="~/Masters/electricallinks.master" AutoEventWireup="True" CodeBehind="Answer-12-Solved_problems_moving_iron_dynamometer_type_instruments.aspx.cs"  Inherits="ExamCrazy.Engineering.Electrical.Answer_12_Solved_problems_moving_iron_dynamometer_type_instruments" %>
<%@ MasterType VirtualPath="~/Masters/electricallinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>Solved Problems on Moving &amp; dynamometer type instruments</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>By Prof Sunil Kumar, Electrical Engineering, IEC College, Greater Noida, Uttar Pradesh 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Q12. Why shunt is usually used voltmeter and ammeter? A moving coil instrument has a resistance of 5 Ω and gives full deflection of 100mv. Show how the instrument may be used to measure:- </b><b>
<br></b><b>
<br>1. voltage upto 50V </b><b>
<br>2. current upto 10A </b><b>
<br></b><b>
<br>Answer. </b>
<br>
<br>Shunt is usually used in voltmeter and ammeter to extend the range of voltmeter and ammeters. 
<br>
<br>&nbsp; &nbsp; R<sub>m</sub> = 5Ω
<br>&nbsp; &nbsp; V<sub>m</sub> = 100mv
<br>&nbsp; &nbsp; I<sub>m</sub> = V<sub>m</sub>/R<sub>m</sub> = 100mv/5Ω = 20mA
<br>
<br>1. For measuring voltage upto 50V.
<br>
<br>Series resistance is used with the instrument whose resistance is 
<br>
<br>&nbsp; &nbsp; R = V/I<sub>m</sub> - R<sub>m</sub> = 50/(20 x 10<sup>-3</sup>) - 5 
<br>
<br>&nbsp; &nbsp; R = 2.5 x 10<sup>-3</sup> - 5 = R = 2495 Ω 
<br>
<br>2. Such resistance of resistance R<sub>f</sub> is used to be connected 
<br>
<br>&nbsp; &nbsp; R<sub>f</sub> = R<sub>m</sub>/[I/I<sub>m</sub> - 1] 
<br>
<br>&nbsp; &nbsp; = 5/[10/20 x 10<sup>-3</sup> -1] = 5 x 2/998 
<br>
<br>&nbsp; &nbsp; R<sub>f</sub> = 0.01002004 Ω 
</td>
</tr></table>
<br>
<br>GOOGLE ADD
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>All problems on Electrical Instruments</b>" NavigateUrl="~/engineering/electrical/solved_problems_moving_iron_dynamometer_type_instruments.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>All problems on 3-phase induction motors</b>" NavigateUrl="~/engineering/electrical/three_phase_induction_motor_solved_examples.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>All Electrical Articles</b>" NavigateUrl="~/engineering/electrical.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>Technical Jobs for Freshers</b>" NavigateUrl="~/technical-jobs.aspx"></asp:HyperLink></div>
</asp:Content>
