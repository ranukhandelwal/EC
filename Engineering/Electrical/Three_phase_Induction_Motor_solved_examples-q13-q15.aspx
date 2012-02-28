<%@ Page Language="C#" MasterPageFile="~/Masters/electricallinks.master" AutoEventWireup="True" CodeBehind="Three_phase_Induction_Motor_solved_examples-q13-q15.aspx.cs"  Inherits="ExamCrazy.Engineering.Electrical.Three_phase_Induction_Motor_solved_examples_q13_q15" %>
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
<br><b>Ques13:</b> A 6 pole 3φ induction motor develops 30hp including 2 hp mechanical losses at a speed of 950 r.p.m. on 550V, 50Hz Mains. The P.F. is 0.88 lagging.
<br>Find: 
<br>1) Slip
<br>2) Rotor Cu loss
<br>3) Total input if stator losses are 2kw
<br>4) η
<br>5) Line current
<br>
<br><b>Solution</b>
<br>N<sub>s</sub> = 120f/P = 120 * 50/6 = 1000 r.p.m. 
<br>1) S = (N<sub>s</sub> - N)/N<sub>s</sub> = (1000 - 950)/1000 = 0.05
<br>Rotor output P<sub>mech</sub> = 30hp = 30 * 735.5 = 22065 watt
<br>Power input to rotor = P<sub>mech</sub>/(1-S) = 22065/(1-0.05) = 23,226
<br>2) Rotor Cu loss = s * rotor input = 0.05 * 23226 = 1161 Watt
<br>3) Total input = Power input to rotor + stator losses = 23226 + 2000 = 25226 Watt
<br>
<br>Motor output = Rotor output - Mech loss = 30 - 2 = 28 HP = 28 * 735.5 = 20594 Watt
<br>4) η = (Motor output)/(Motor input) * 100 = 81.64%
<br>5) I<sub>L</sub> = (Motor Input)/( √3 * 550 * 0.88) = 30A
<br>
<br>
<br>
<br><b>Ques14:</b> A 4 pole 50 Hz 3 φ induction motor running at full load, develops a torque of 160N-m, when rotor makes 120 complete cycles per minute, find what power output 
<br><b>Solution</b> 
<br>Supply frequency f = 50Hz
<br>Rotor e.m.f. frequency = f = 120/60 = 2Hz
<br>Slip S = f'/f = 2/50 = 0.04
<br>N<sub>s</sub> = 120f/p = 120 *50/4 = 1500 r.p.m. 
<br>Shaft power output = T<sub>sh</sub><sub> </sub>* 2&prod;N/160 = 160 * 2 &prod; * 1440/60 = 24127W
<br>
<br><b>Ques15:</b> The power input to a 500V 50Hz, 6 pole, 3 φ squirrel case inductor motor running at 975 r.p.m. is 40kw. The stator losses are 1 kw and friction and windage losses are 2kw. Find:
<br>1) Slip
<br>2) Rotor Cu loss
<br>3) Brake hp
<br><b>Solution:</b>
<br>i) N<sub>s</sub> = 120f/P = 120*50/6 = 1000 r.p.m.
<br>S= ( N<sub>s</sub> - N)/N<sub>s</sub> = (1000 - 975)/1000 = 0.025
<br>Power input to station P<sub>1</sub> = 40Kw
<br>Stator output power = P<sub>1</sub> - stator losses = 40 -1 = 39kw
<br>Power input to rotor P<sub>2</sub> = Stator output power = 39 KW
<br>ii) Rotor Cu loss = sP<sub>2</sub> = 0.025 * 39 = 0.975KW
<br>P<sub>mech</sub> = P<sub>2</sub> - P<sub>cu</sub><sub> </sub>= 39 - 0.975 = 38.025
<br>iii) Motor output = P<sub>mech</sub> - friction and windage loss = 38.025 - 2 = 36.025KW
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Previous - </b><b>Ques</b><b> 10-12</b>" NavigateUrl="~/engineering/electrical/three_phase_induction_motor_solved_examples-q10-q12.aspx"></asp:HyperLink> 
<br>
<br>
<br>
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>All problems on Electrical Instruments</b>" NavigateUrl="~/engineering/electrical/solved_problems_moving_iron_dynamometer_type_instruments.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>All problems on 3-phase induction motors</b>" NavigateUrl="~/engineering/electrical/three_phase_induction_motor_solved_examples.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>All Electrical Articles</b>" NavigateUrl="~/engineering/electrical.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>Technical Jobs for </b><b>Freshers</b>" NavigateUrl="~/technical-jobs.aspx"></asp:HyperLink>
</td>
</tr></table>
</div>
</asp:Content>
