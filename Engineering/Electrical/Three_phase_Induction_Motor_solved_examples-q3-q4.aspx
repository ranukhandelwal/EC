<%@ Page Language="C#" MasterPageFile="~/Masters/electricallinks.master" AutoEventWireup="True" CodeBehind="Three_phase_Induction_Motor_solved_examples-q3-q4.aspx.cs"  Inherits="ExamCrazy.Engineering.Electrical.Three_phase_Induction_Motor_solved_examples_q3_q4" %>
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
<br><b>Ques3:</b> A motor generates set used for providing variable frequency ac supply consists of a 3-φ synchronous and 24 pole 3 φ synchronous generator. The motor generate set is fed from 25hz, 3 φ ac supply. A 6 pole 3 φ induction motor is electrically connected to the terminals of the synchronous generator and runs at a slip of 5%. Find 
<br>&nbsp; i) the frequency of generated voltage of synchronous generator
<br>&nbsp; ii) the speed at which induction motor is running
<br><b>Solution</b> 
<br>Speed of motor generator set
<br>N<sub>s</sub>=(120*f<sub>1</sub>(supply freq))/(no of pole on syn motor)
<br>=120*25/10 = 300 r.p.m.
<br>
<br>(1) frequency of generated voltage 
<br>f<sub>z</sub>=speed of motor gen set voltage *no of poles on syn gen/120
<br>= 300*24/120 = 60hz 
<br>(2) Speed of induction motor , N<sub>m</sub>=N<sub>s</sub>(1-s)
<br>=120 f<sub>z</sub> /P<sub>m</sub>(1-s) = 120*60/6(1-0.05) = 1140r.p.m. 
<br>
<br>
<br>
<br><b>Ques4:</b> A 3-φ 4 pole induction motor is supplied from 3φ 50Hz ac supply. Find 
<br>(1) synchronous speed 
<br>(2) rotor speed when slip is 4%
<br>(3) the rotor frequency when runs at 600r.p.m. 
<br><b>Sulution</b> 
<br>1) N<sub>s</sub> =120f/p
<br>=120*50/4 = 1500 r.p.m.
<br>
<br>2) speed when slip is 4% or .04
<br>N=N<sub>s</sub> (1-s)
<br>=1500(1-0.04) = 1440 r.p.m. 
<br>3) slip when motor runs at 600 r.p.m. 
<br>S'=(N<sub>s</sub> -N)/N<sub>s</sub>
<br>=(1500-600)/1500 = 0.6
<br>
<br>Rotor frequency f' = S'f = 0.6*50 = 30Hz. 
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Next - </b><b>Ques</b><b> 5-6</b>" NavigateUrl="~/engineering/electrical/three_phase_induction_motor_solved_examples-q5-q6.aspx"></asp:HyperLink> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Previous - </b><b>Ques</b><b> 1-2</b>" NavigateUrl="~/engineering/electrical/three_phase_induction_motor_solved_examples.aspx"></asp:HyperLink> 
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
