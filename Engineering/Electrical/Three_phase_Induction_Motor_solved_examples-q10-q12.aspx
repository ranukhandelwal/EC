<%@ Page Language="C#" MasterPageFile="~/Masters/electricallinks.master" AutoEventWireup="True" CodeBehind="Three_phase_Induction_Motor_solved_examples-q10-q12.aspx.cs"  Inherits="ExamCrazy.Engineering.Electrical.Three_phase_Induction_Motor_solved_examples_q10_q12" %>
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
<br><b>Quest10:</b> A 50 Hz, 8 pole induction motor has full load slip of 4%. The rotor resistance and stand still reactance are 0.01 ohm and 0.1 ohm per phase respectively. Find:
<br>i) The speed at which maximum torque occurs
<br>ii) The ratio of maximum torque to full load torque
<br><b>Solution:</b>
<br>Synchronous speed N<sub>s</sub> = 120f/P = 120*50/8 = 750r.p.m. 
<br>Slip at which maximum torque occurs = R<sub>2</sub>/X<sub>2</sub> = 0.01/0.1 = 0.1
<br>Rotor speed at maximum torque = (1-0.1) N<sub>s </sub>= (1- 0.1) 750 = 675 r.p.m. T<sub>m</sub>/T<sub>f</sub> = (a<sup>2</sup> + s<sup>2</sup>)/2as
<br>Where s = Full load slip = 0.04
<br>
<br>a = R<sub>2</sub>/X<sub>2</sub> = 0.01/0.1 = 0.1
<br>T<sub>m</sub>/Tf = ((0.1)<sup>2</sup> + (0.04)<sup>2</sup>)/(2*0.1*0.04) = 1.45
<br>
<br>
<br>
<br><b>Ques</b><b> 11:</b> An 8 pole 3 φ, 50 Hz induction motor has rotor resistance of 0.025 ohm/phase and rotor standstill reactance of 0.1ohm/phase. At what speed is the torque maximum? What proportion of maximum torque is the starting torque?
<br><b>Solution </b>
<br>N<sub>s</sub> = 120f/P = 120*50/8 = 750 r.p.m.
<br>R<sub>2</sub> = SX<sub>2</sub> ------------ for maximum torque
<br>S = R<sub>2</sub>/X<sub>2</sub> = 0.025/0.1 = 0.25
<br>Corresponding speed N = (1-s)Ns = (1 - 0.25)750 = 562.5 r.p.m.
<br>
<br>ii) T<sub>s</sub>/T<sub>m</sub> = 2a/(a<sup>2</sup>+1) = 0.47 where a = R<sub>2</sub>/X<sub>2</sub> = 0.025/0.1 = 0.25 
<br>
<br><b>Ques12:</b> A 500 V, 3 φ, 50 Hz induction motor develops an output of 15 KW at 950 r.p.m. If the input p.f. is 0.86 lagging, Mechanical losses are 7.30 W and stator losses 1500W, Find
<br>i) the slip
<br>ii) the rotor Cu loss
<br>iii) the motor input
<br>iv) the line current
<br><b>Solution:</b>
<br>VL = 500V, motor output Pr = 15KW
<br>N = 950 r.p.m. P.f. = cos Ø = 0.86lags
<br>Mech. Loss = 730 W
<br>Stator loss = 1500 W
<br>Ns = 120f/P = 120 * 50/6 = 1000r.p.m. 
<br>i) S = (Ns-N)/Ns * 100 = (1000 - 960)/1000 *100 = 0.05*100 = 5%
<br>ii) Rotor output = Motor output + Mechanical output = 15 + .730 watt = 15.73 KWatt
<br>There fore (Rotor Cu loss)/(Rotor output) = s/(s-1) 
<br>Or Rotor Cu loss = 15.73 * (0.05)/(1-0.05) = 827.89 watt
<br>
<br>Power flow diagram for finding the motor input 
<br>
<br>Motor input = 15kw + 730 + 1500 + 827.89 = 18.058KW
<br>Line Current = √3V<sub>2</sub>I<sub>2</sub>Cosφ
<br>I2 = 24.25A 
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Next - </b><b>Ques</b><b> 13-15</b>" NavigateUrl="~/engineering/electrical/three_phase_induction_motor_solved_examples-q13-q15.aspx"></asp:HyperLink> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Previous - </b><b>Ques</b><b> 7-9</b>" NavigateUrl="~/engineering/electrical/three_phase_induction_motor_solved_examples-q7-q9.aspx"></asp:HyperLink> 
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
