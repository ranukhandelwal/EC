<%@ Page Language="C#" MasterPageFile="~/Masters/electricallinks.master" AutoEventWireup="True" CodeBehind="Three_phase_Induction_Motor_solved_examples.aspx.cs"  Inherits="ExamCrazy.Engineering.Electrical.Three_phase_Induction_Motor_solved_examples" %>
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
<br><b>Ques1:</b> A 3 φ 4 pole 50 hz induction motor runs at 1460 r.p.m. find its %age slip. 
<br><b>Solution</b> 
<br>N<sub> s</sub> = 120f/p = 120*50/4 = 1500r.p.m.
<br>Running speed of motor = n= 1460r.p.m.
<br>Slip S=( N<sub> s</sub>-N)/ N<sub> s</sub>*100 =(1500-1460) x 100 / 1500 = 2.667% 
<br>
<br>
<br>
<br><b>Ques2:</b> A 12 pole 3 φ alternator driver at speed of 500 r.p.m. supplies power to an 8 pole 3 φ induction motor. If the slip of motor is 0.03p.u, calculate the speed. 
<br><b>Solution</b> 
<br>Frequency of supply from alternator, f=PN/120 
<br>=12*500/120 = 50hz
<br>
<br>where P= no of poles on alternatev 
<br>N=alternator speed is r.p.m. 
<br>Synchronous speed of 3 φ induction motor 
<br>N=120f/Pm 
<br>=120*50/8 = 750 r.p.m.
<br>Speed of 3 φ induction motor N=Ns (1-s)
<br>=750(1-0.03) = 727.5 r.p.m. 
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Next - </b><b>Ques</b><b> 3-4</b>" NavigateUrl="~/engineering/electrical/three_phase_induction_motor_solved_examples-q3-q4.aspx"></asp:HyperLink> 
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
