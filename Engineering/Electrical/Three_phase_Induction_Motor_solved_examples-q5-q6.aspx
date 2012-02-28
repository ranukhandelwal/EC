<%@ Page Language="C#" MasterPageFile="~/Masters/electricallinks.master" AutoEventWireup="True" CodeBehind="Three_phase_Induction_Motor_solved_examples-q5-q6.aspx.cs"  Inherits="ExamCrazy.Engineering.Electrical.Three_phase_Induction_Motor_solved_examples_q5_q6" %>
<%@ MasterType VirtualPath="~/Masters/electricallinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>Solved Problems on 3 φ Induction Motor - Electrical Engineering</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>By Prof Sunil Kumar, Electrical Engineering, IEC College, Greater Noida, Uttar Pradesh 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Ques5:</b> A 12 pole 3-φ alternator is coupled to an engine running at 500r.p.m. If supplied a 3φ induction motor having full speed of 1440r.p.m. 
<br>Find the %age slip, frequency of rotor current and no of poles of rotor. 
<br><b>Ans</b> 
<br>Frequency of supply from alternator f=P<sub>a</sub>*N<sub>a</sub>/120
<br>=12*500/120 = 50Hz 
<br>
<br>Full load speed N<sub>f</sub> =1440 r.p.m.
<br>The no of poles (nearest to and higher than full load speed of motor =1440) should be in even nos.
<br>P=120f/n = 120*50/1440 = 4
<br>N<sub>s</sub> = 120f/P<sub>m</sub> = 120*50/4 = 1500 r.p.m.
<br>% Slip s = (N<sub>s</sub>-N)/N<sub>s</sub> x 100 =(1500-1440) x 100 / 1500 = 4%
<br>
<br>Rotor frequency f' = sf = 0.04*50 = 2Hz 
<br>
<br>No A poles of the motor = 4 
<br>
<br>
<br>
<br><b>Ques6:</b> The rotor of 3φ induction motor rotates at 900r.p.m. when states is connected to 3φ supply .find the rotor frequency. 
<br><b>Solution</b> N<sub>r</sub> =980 r.p.m., f=50Hz, N<sub>s</sub>=120f/p
<br>When P=2, N<sub>s</sub>=3000r.p.m.,P=4, N<sub>s</sub>=1500 
<br>
<br>P=6, Ns=1000, P=8, Ns=750r.p.m. 
<br>
<br>As we know that synchronous speed is slightly greater than rotor speed. 
<br>
<br>N<sub>s</sub>=1000 r.p.m. P=6 
<br>
<br>Fr=Sf=(Ns-N)/Ns*f=Sf = (1000-980) x 50 / 1000 
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Next - </b><b>Ques</b><b> 7-9</b>" NavigateUrl="~/engineering/electrical/three_phase_induction_motor_solved_examples-q7-q9.aspx"></asp:HyperLink> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Previous - </b><b>Ques</b><b> 3-4</b>" NavigateUrl="~/engineering/electrical/three_phase_induction_motor_solved_examples-q3-q4.aspx"></asp:HyperLink> 
<br>
<br>
<br>
<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>All problems on Electrical Instruments</b>" NavigateUrl="~/engineering/electrical/solved_problems_moving_iron_dynamometer_type_instruments.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>All problems on 3-phase induction motors</b>" NavigateUrl="~/engineering/electrical/three_phase_induction_motor_solved_examples.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>All Electrical Articles</b>" NavigateUrl="~/engineering/electrical.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Technical Jobs for </b><b>Freshers</b>" NavigateUrl="~/technical-jobs.aspx"></asp:HyperLink>
</td>
</tr></table>
</div>
</asp:Content>
