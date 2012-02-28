<%@ Page Language="C#" MasterPageFile="~/Masters/electricallinks.master" AutoEventWireup="True" CodeBehind="Dynamic-braking-resistor-for-AC-DC-motor.aspx.cs"  Inherits="ExamCrazy.Engineering.Electrical.Dynamic_braking_resistor_for_AC_DC_motor" %>
<%@ MasterType VirtualPath="~/Masters/electricallinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>Dynamic braking - braking resistor for AC and DC motor</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>By GATE Tutor - Electrical Engineering - Examcrazy.com 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>A braking resistor is a high-wattage resistor used in motor control to help a motor stop quickly through a process known as dynamic braking. There is a distinct difference between how this is accomplished in an AC vs a DC motor. 
<br>
<br><b>DC</b><b>:</b>
<br>Unlike most AC motors, when removed from its power supply a DC motor can act like an electrical generator due to its permanent magnet. The idea here is to disconnect the motor from its power supply and connect it to the braking resistors instead. The DC motor will then use its rotational inertia to produce electricity, which does work by heating the braking resistors. This uses up the energy stored in the rotational inertia of the motor, bringing it to a stop. 
<br>
<br>A logical extension of dynamic braking is the concept of regenerative braking, which uses the electricity to charge a battery instead of wasting it as heat energy. The battery power can then be used for other things, such as restarting the motor. 
<br>
<br>
<br>
<br><b>AC</b><b>:</b>
<br>Most AC motors do not act as generators when disconnected from the power supply. To electrically brake an AC motor requires either a DC injection brake or a variable frequency drive to provide dynamic braking. DC injection braking, applying DC voltage to the stator windings, is the simpler of the two options but is harder on the motor. Braking resistors are not involved in DC injection braking. 
<br>
<br>Dynamic braking of an AC motor is achieved by providing a slower frequency of electric current to the motor than that which would be necessary to maintain its current speed. For example, the synchronous speed of a 2 pole motor fed by a 60 Hertz power supply would be 3600 RPM. While the motor is at this speed, feeding it with a power supply operating at less than 60 Hertz creates a magnetic field in the stator which rotates slower than the rotor is rotating, and the drag produced will begin to slow the rotor down. 
<br>
<br>Although the AC motor does not have a permanent magnet in the rotor, it does have an induced magnetic field in the rotor, created by the rotating magnetic field in the stator. The energy lost in the difference between the stator and rotor speeds backfeeds into the VFD, which raises the voltage on the DC bus in the VFD. The greater the difference between the output of the VFD and the rotor's actual speed, the more energy will be backfed into the VFD. This means that if the VFD tries to dynamically brake the motor too quickly, the voltage on the DC bus will raise too high and damage the VFD. Most VFDs will shut down as a safety feature before this happens, and the motor will coast to a stop by friction alone. 
<br>
<br>This is where the braking resistors come in. The braking resistors act as an additional load on the DC bus, which helps to drain the excess voltage and keep it within safe tolerances. With appropriately sized braking resistors, the motor can be brought to a stop much more quickly without raising the voltage on the DC bus to unsafe levels. 
<br>
<br>In both the AC and DC cases, the smaller the resistance of the braking resistors, the larger the load it creates and the faster the motor can be stopped. However, less resistance means more current can pass through the resistor, and more current means more heat is produced. The extra heat must be dissipated by heat sinks, or reduced by using multiple resistors in parallel which share the load. Either option drives up the cost of the braking resistor system, so it is important to size them correctly for a given application. 
<br>
<br>
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>All problems on Electrical Instruments</b>" NavigateUrl="~/engineering/electrical/solved_problems_moving_iron_dynamometer_type_instruments.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>All problems on 3-phase induction motors</b>" NavigateUrl="~/engineering/electrical/three_phase_induction_motor_solved_examples.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>All Electrical Articles</b>" NavigateUrl="~/engineering/electrical.aspx"></asp:HyperLink><b>
<br></b><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>Technical Jobs for Freshers</b>" NavigateUrl="~/technical-jobs.aspx"></asp:HyperLink>
</td>
</tr></table>
</div>
</asp:Content>
