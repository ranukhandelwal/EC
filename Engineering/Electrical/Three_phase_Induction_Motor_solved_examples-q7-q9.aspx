<%@ Page Language="C#" MasterPageFile="~/Masters/electricallinks.master" AutoEventWireup="True" CodeBehind="Three_phase_Induction_Motor_solved_examples-q7-q9.aspx.cs"  Inherits="ExamCrazy.Engineering.Electrical.Three_phase_Induction_Motor_solved_examples_q7_q9" %>
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
<br><b>Ques7:</b> A 3 φ 50Hz induction motor has a full load speed of 960 r.p.m
<br>(a) find slip
<br>(b) No of poles
<br>(c) Frequency of rotor induced e.m.f
<br>(d) Speed of rotor field w.r.t. rotor structure
<br>(e) Speed of rotor field w.r.t. Stator structure
<br>(f) Speed of rotor field w.r.t. stator field
<br><b>Solution:</b> 
<br>Given f = 50 Hz(supply frequency) 
<br>N = 960r.p.m
<br>The no. of pole will be 6 only(because at P=6, Ns = 1000 which is nearer nad greater then 960 r.p.m.) 
<br>
<br>(a) Slip, S = (N<sub>s</sub>-N)/N<sub>s</sub> * 100 = (1000 - 960) / 1000 * 100 = 4%
<br>(b) No of poles = 6
<br>(c) Frequency of rotor induced emf = f<sub>r</sub> = SF = .04 * 50 = 2Hz
<br>(d) Speed of rotor field w.r.t rotor structure = 120f<sub>r</sub>/p = 120*2/6 = 40 r.p.m. 
<br>(e) Speed of rotor field w.r.t. stator structure os actually the speed of stator filed w.r.t stator structure, N<sub>s</sub> = 1000r.p.m
<br>(f) Speed of rotor field w.r.t stator field is zero
<br>
<br>
<br>
<br><b>Ques8:</b> A 3 φ, 400V wound rotor has delta connected stator winding and star connected rotor winding. The stator has 48 turns/phase while rotor has 24 turns per phase. Find the stand still or open circuited voltage across the slip rings
<br><b>Solution</b> 
<br>Stator e.m.f/phase E1 = 400V
<br>Statur turns/phase N1 = 48
<br>Rotor turns/phase N2 = 24
<br>K= N2/N1 = 24/48 = 1/2
<br>
<br>Rotor e.m.f/phase = KE<sub>1</sub> = 1/2 * 400 = 200V
<br>Voltage between slip rings = Rotor line voltage = √ 3 x 200 = 346 volt 
<br>
<br><b>Ques9:</b> A 6 pole 3 φ 50Hz induction motor is running at full load with a slip of 4%. The rotor is star connected and its resistance and stand still reactance are 0.25 ohm and 1.5 ohm per phase. The e.m.f between slip ring is 100V. Find the rotor current per phase and p.f, assuming the slip rings are short circuited.
<br><b>Solution</b> 
<br>Rotor e.m.f./phase at stand still E<sub>2</sub> = 100√3 = 57.7V 
<br>Rotor e.m.f./phase at full load = sE<sub>2</sub> = 0.04 * 57.7 = 2.31 V
<br>Rotor reactance/phase at full Load = SX<sub>2</sub> = .04 * 1.5 = .06 ohm
<br>Rotor impedance/phase at full load = √ ((0.25)<sup>2 </sup>+ (0.06)<sup>2</sup>) = .257 ohm
<br>Full load Rotor current/phase = 2.31/0.257 = 9A
<br>Rotor P.f = 0.25/0.257 = 0.97 lag
<br>
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Next - </b><b>Ques</b><b> 10-12</b>" NavigateUrl="~/engineering/electrical/three_phase_induction_motor_solved_examples-q10-q12.aspx"></asp:HyperLink> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Previous - </b><b>Ques</b><b> 5-6</b>" NavigateUrl="~/engineering/electrical/three_phase_induction_motor_solved_examples-q5-q6.aspx"></asp:HyperLink> 
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
