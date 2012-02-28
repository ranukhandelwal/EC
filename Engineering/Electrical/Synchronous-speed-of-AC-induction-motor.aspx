<%@ Page Language="C#" MasterPageFile="~/Masters/electricallinks.master" AutoEventWireup="True" CodeBehind="Synchronous-speed-of-AC-induction-motor.aspx.cs"  Inherits="ExamCrazy.Engineering.Electrical.Synchronous_speed_of_AC_induction_motor" %>
<%@ MasterType VirtualPath="~/Masters/electricallinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>Synchronous speed of an AC induction motor</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>By GATE Tutor - Electrical Engineering - ExamCrazy.com 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>The synchronous speed of an AC induction motor is the theoretical speed at which the motor should spin if it the induced magnetic field in the rotor perfectly followed the rotating magnetic field of the stator. Synchronous speed is measured in rotations per minute (RPM) and is given by the following formula:
<br>
<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 120 * electric_frequency 
<br>RPM = --------------------------- 
<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; number_of_poles 
<br>
<br>Where the electric frequency in North America is 60Hz and the number of poles is typically 2 or 4. 
<br>
<br>
<br>
<br>Frequency can be adjusted using a variable frequency drive. The 120 comes from 60 seconds per minute (converting cycles per second into cycles per minute) times 2 poles per electric cycle (poles come in pairs, so the number is always even). Thus two very common motor speeds are 1800RPM and 3600RPM. Increasing the number of poles makes a higher torque, lower speed motor.
<br>
<br>However, to produce torque, an induction motor suffers from slip. Slip is the result of the induced field in the rotor windings lagging behind the rotating magnetic field in the stator windings. The energy lost in this discrepancy is what produces the useful work in an induction motor. Slip is expressed as a percentage of synchronous speed and is given by the following formula:
<br>
<br>&nbsp; &nbsp; &nbsp; (synchronous_speed - actual_speed) 
<br>S = ----------------------------------------- * 100% 
<br>&nbsp; &nbsp; &nbsp; &nbsp; synchronous_speed 
<br>
<br>
<br>Typical slip values at full load torque range from 1% (for large 100 HP motors) to 5% (for small 1/2 HP motors). Slip is not a concern in most applications, unless precise speed control is required. One solution is to use a variable frequency drive controlled by a feedback encoder to keep the motor at a specific speed. Another solution is to use a synchronous motor. These motors magnetize the rotor in one of a variety of ways, which keeps the rotor locked in step with the rotating magnetic field of the stator, eliminating slip.
<br>
<br>
<br>
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>All problems on Electrical Instruments</b>" NavigateUrl="~/engineering/electrical/solved_problems_moving_iron_dynamometer_type_instruments.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>All problems on 3-phase induction motors</b>" NavigateUrl="~/engineering/electrical/three_phase_induction_motor_solved_examples.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>All Electrical Articles</b>" NavigateUrl="~/engineering/electrical.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>Technical Jobs for </b><b>Freshers</b>" NavigateUrl="~/technical-jobs.aspx"></asp:HyperLink>
</td>
</tr></table>
</div>
</asp:Content>
