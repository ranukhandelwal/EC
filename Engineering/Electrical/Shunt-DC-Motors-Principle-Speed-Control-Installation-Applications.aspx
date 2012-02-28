<%@ Page Language="C#" MasterPageFile="~/Masters/electricallinks.master" AutoEventWireup="True" CodeBehind="Shunt-DC-Motors-Principle-Speed-Control-Installation-Applications.aspx.cs"  Inherits="ExamCrazy.Engineering.Electrical.Shunt_DC_Motors_Principle_Speed_Control_Installation_Applications" %>
<%@ MasterType VirtualPath="~/Masters/electricallinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>Shunt DC Motors Parts and Principle of operation, Speed Control &amp; Installation</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Shunt DC Motor</b>
<br>Shunt DC motor works on direct current (DC). In electrical engineering, a parallel connection is called as shunt. In a Shunt DC motor, the armature and field windings are connected in parallel. This type of winding is called shunt winding and the motor Shunt DC motor.
<br>
<br>
<br>
<br><b>Parts and Principle of operation of Shunt DC Motor</b>
<br>Construction and principle of operation of a Shunt DC motor is same as any other DC motor. It also has all the fundamental components - rotor (armature), stator (field windings) and commutator - required for the operation of a motor. In a Shunt DC motor, a rotational torque is produced as a result of the interaction between the magnetic field produced around the current carrying armature and the magnetic field established around the stator windings. Current is supplied from the stationary housing to the rotating armature through commutator &amp; brushes arrangement. As the stator is stationary, power is applied directly to it. 
<br>In Shunt DC motor, the field windings of the stator are connected in parallel with the armature. The field windings of a Shunt DC motor are made of fine coil of wire with large number of turns. As small gauge wire cannot handle heavy currents, shunt windings of a shunt motor require large number of turns to produce strong magnetic field. 
<br>As a Shunt DC Motor cannot carry high currents, it is unsuitable for applications requiring a high starting torque. So, it requires its shaft load to be small to start functioning. 
<br>The resistance of the shunt windings in a Shunt DC motor is very high. As a result, when electric voltage is supplied to the Shunt DC motor, very low amount of current flows through the shunt coil. Armature draws enough current to produce a strong magnetic field. Due to the interaction of magnetic field around armature and the field produced around the shunt field, the motor starts to rotate. When the armature starts turning, it produces a back EMF. The theory behind the generation of back EMF is the simple electromagnetic principle, which states that when a conductor (armature in this case) rotates in a magnetic field, electricity is induced in it. The polarity of this generated back EMF is such that it opposes the armature current. So, as the motor turns, armature current is controlled by the back EMF and is kept low. 
<br>
<br><b>Speed of Shunt DC Motors</b>
<br>In a series motor, speed is very much dependent on the shaft load. If the load is high, armature will rotate at a low speed. If the load is less, armature speed will increase. At no load condition, the armature speed is virtually infinity and uncontrollable. Shunt motor has different speed characteristics from a series motor. When a Shunt DC motor reaches its full speed, the armature current is directly related to the motor load. Since load is very small in a shunt motor, armature current is also very low. Once the motor reaches its full speed, it remains constant.
<br>
<br><b>Shunt DC Motors Speed Control</b>
<br>Speed of a Shunt DC motor can be easily controlled. Despite the load changes, Shunt DC motor can maintain constant speed. When the load increases the armature tends to slow down. This results in less back EMF. This accounts for less opposition against the supplied voltage. So, the motor will draw more current. This increase in current results in increase in torque to gain speed. Thus, even when the load increases, the net effect of load on speed in a Shunt DC motor is almost nil. When the load decreases, armature gains speed and generates more back EMF. As the polarity of the back EMF is against the supply voltage, load reduction results in less current and hence speed is maintained constant. 
<br>
<br>
<br>
<br>Speed of a Shunt DC motor can be controlled by two ways:
<br>1. By varying the amount of current supplied to the shunt (field) windings
<br>2. By varying the amount of current supplied to the armature.
<br>
<br>While maintaining a constant voltage supply to the armature, voltage supplied to the shunt is varied by having a rheostat in series with it or by having a SCR current control. Same technique is applied to vary the armature current. But as the armature draws more current, the current control rheostats used with armature are usually much larger than those used for shunt current control. 
<br>Generally, motors come with a specified rated voltage and rated speed in rpm (revolutions per minute). When a Shunt DC motor operates below its full voltage, its torque gets reduced. 
<br>
<br><b>Installation</b>
<br>Installation of a Shunt DC motor is very easy. It comprises of two sections-mechanical installation of the motor and its load, and installation of electrical wiring and accompanying speed controls. During motor installation it has to be made sure that motor shaft and load shaft are properly aligned. Misalignment will result in stress on armature bearing, which is hazardous for motor functioning. 
<br>
<br><b>Application</b>
<br>Shunt DC motors are very suitable for belt-driven applications. This constant speed motor is used in industrial and automotive applications where great amount of torque precision is required. 
</td>
</tr></table>
</div>
</asp:Content>
