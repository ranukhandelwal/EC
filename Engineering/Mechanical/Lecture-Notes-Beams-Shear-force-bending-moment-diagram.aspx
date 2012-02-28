<%@ Page Language="C#" MasterPageFile="~/Masters/mechanicallinks.master" AutoEventWireup="True" CodeBehind="Lecture-Notes-Beams-Shear-force-bending-moment-diagram.aspx.cs"  Inherits="ExamCrazy.Engineering.Mechanical.Lecture_Notes_Beams_Shear_force_bending_moment_diagram" %>
<%@ MasterType VirtualPath="~/Masters/mechanicallinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>Lecture notes on Beams, Shear force and bending moment diagram</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>By Prof S S Chauhan, Mechanical Engineering, IEC College, Greater Noida, Uttar Pradesh 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Beam</b>: is a structural member subjected to a system of external forces at right angles to axis.
<br>
<br><b>Types of Beams</b>
<br>1- Cantilever beam: fixed or built-in at one end while it's other end is free.
<br>
<br><sub><img src="/Engineering/Mechanical/img_lecture-notes-beams-shear-force-bending-moment-diagram/image1.jpeg"></sub>
<br>
<br>2- Freely or simply supported beam: the ends of a beam are made to freely rest on supports.
<br>
<br><sub><img src="/Engineering/Mechanical/img_lecture-notes-beams-shear-force-bending-moment-diagram/image2.jpeg"></sub>
<br>
<br>3- Built-in or fixed beam: the beam is fixed at both ends.
<br>
<br><sub><img src="/Engineering/Mechanical/img_lecture-notes-beams-shear-force-bending-moment-diagram/image3.jpeg"></sub>
<br>
<br>4- Continuous beam: a beam which is provided with more than two supports.
<br>
<br><sub><img src="/Engineering/Mechanical/img_lecture-notes-beams-shear-force-bending-moment-diagram/image4.jpeg"></sub>
<br>
<br>5- Overhanging beam: a beam which has part of the loaded beam extends outside the supports.
<br>
<br><sub><img src="/Engineering/Mechanical/img_lecture-notes-beams-shear-force-bending-moment-diagram/image5.jpeg"></sub>
<br>
<br>
<br><b>Statically Determinate Beams</b>
<br>Cantilever, simply supported, overhanging beams are statically determinate beams as the reactions of these beams at their supports can be determined by the use of equations of static equilibrium and the reactions are independent of the deformation of the beam. There are two unknowns only. 
<br>
<br><b>Statically Indeterminate Beams</b>
<br>Fixed and continuous beams are statically indeterminate beams as the reactions at supports cannot be determined by the use of equations of static equilibrium. There are more than two unknown. 
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="Next Page - Type of loads, Concept of Shear Force and Bending moment" NavigateUrl="~/engineering/mechanical/lecture-notes-beams-shear-force-bending-moment-diagram-page2.aspx"></asp:HyperLink> 
</td>
</tr></table>
</div>
</asp:Content>
