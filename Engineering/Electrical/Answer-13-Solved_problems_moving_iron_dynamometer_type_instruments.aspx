<%@ Page Language="C#" MasterPageFile="~/Masters/electricallinks.master" AutoEventWireup="True" CodeBehind="Answer-13-Solved_problems_moving_iron_dynamometer_type_instruments.aspx.cs"  Inherits="ExamCrazy.Engineering.Electrical.Answer_13_Solved_problems_moving_iron_dynamometer_type_instruments" %>
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
<br><b>Q13. A moving coil instrument gives full scale deflection with 15mA. The resistance of coil is 5Ω. It is desired to convert this instrument into an ammeter to read upto 2A. How to acheive it further how to convert this instrument to read upto 30V </b><b>
<br></b><b>
<br>&nbsp; &nbsp; I</b><b><sub>m</b></sub><b> = 15mA , R</b><b><sub>m</b></sub><b> = 5Ω </b><b>
<br></b><b>
<br>Answer. </b>
<br>1. Shunt of resistance R Ω is required to be connected with the instrument where 
<br>
<br>&nbsp; &nbsp; R = R<sub>m</sub>/[I/I<sub>m</sub>-1]
<br>
<br>&nbsp; &nbsp; = 5/[2/5 x 10<sup>-3</sup>-1] 
<br>
<br>&nbsp; &nbsp; = 5 x 15/[2 x 10<sup>-3</sup>-15] 
<br>
<br>&nbsp; &nbsp; = 5 x 15/ 1985 
<br>
<br>&nbsp; &nbsp; R = 0.03778 Ω 
<br>
<br>2. Series resistance R<sub>s</sub> Ω is required to be connected with the instrument. 
<br>
<br>&nbsp; &nbsp; R<sub>s</sub> = V/I<sub>m</sub> - R<sub>m</sub> 
<br>&nbsp; &nbsp; &nbsp; = 30/15 x 10<sup>-3</sup> - 5 
<br>&nbsp; &nbsp; &nbsp; = 2000 - 5 
<br>&nbsp; &nbsp; R<sub>s</sub> = 1995 Ω 
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
