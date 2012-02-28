<%@ Page Language="C#" MasterPageFile="~/Masters/bjtlinks.master" AutoEventWireup="True" CodeBehind="bipolar_junction_transistor.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.bipolar_junction_transistor" %>
<%@ MasterType VirtualPath="~/Masters/bjtlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>Bipolar Junction Transistor</b><b>
<br>Construction. NPN Physical Operation. </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>The transistor is a three terminal device. It is probably only the second such device you've encountered in electrical engineering, after the op amp. Roughly speaking, the transistor acts an electronic valve: the node current or voltage at one terminal controls the current entering the second terminal and exiting the third. It would be difficult to overstate the importance of the transistor to electronics. Some of its uses are: 
<br>&bull; Digital logic 
<br>&bull; Memory circuits
<br>&bull; Amplifiers
<br>&bull; Electronic switches. 
<br>The two basic families of transistors are bipolar junction transistors (BJTs) and field effect transistors (FETs). We'll start by discussing BJTs for approximately 13 lectures followed by FETs for the remaining 12 lectures. BJTs are covered in Chapter 5 of your text. 
<br><b>BJT Physical Structure </b>
<br>BJTs are formed from three doped regions on a silicon crystal. These can either be npn doped regions or pnp. A simplified sketch of an npn transistor is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bipolar_junction_transistor/image1.jpeg"></sub>
<br>As can be seen, the BJT is formed from two back-to-back pn junctions: 
<br>&bull; Emitter-base junction (EBJ) 
<br>&bull; Collector-base junction (CBJ). 
<br>This specific way of drawing the BJT has been around from the very beginning of these transistors. This figure: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bipolar_junction_transistor/image2.jpeg"></sub>
<br>is from William Shockley's U.S. patent 2,569,347 issued in 1951. BJTs can also be fabricated from two p-type regions and one ntype. This is called a pnp transistor: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bipolar_junction_transistor/image3.jpeg"></sub>
<br>While the BJT might appear to be symmetrical by looking at Fig. 5.1, the actual devices are not. For example, the cross section below of an npn transistor clearly shows that the EBJ and CBJ, for example, have very differently sized surface contact areas, which will greatly change their relative behaviors. 
<br><sub><img src="/Engineering/Electronics-Communication/img_bipolar_junction_transistor/image4.jpeg"></sub>
<br>There are four basic modes of operation for a BJT depending on the states of the two pn junctions of the transistor: 
<br>Mode Emitter-Base Jct. Collector-Base Jct. Cutoff Active Saturation Reverse Active Reverse Forward Forward Reverse Reverse Reverse Forward Forward 
<br>In digital logic applications, the transistor switches between the cutoff and saturation modes. As a linear amplifier in a communication circuit, the transistor would operate in the active mode. Because of the asymmetrical physical construction, the reverse active mode is not the same as interchanging the collector and emitter leads. The states of the two pn junctions can be altered by the external circuitry connected to the transistor. This is called biasing the transistor. 
<br><b>NPN Transistor in the Active Mode </b>
<br>We'll begin the discussion of the BJT physical operation by considering an npn transistor in the active mode. To bias it in the active mode, we need to forward bias the EBJ and reverse bias the CBJ (notice that the emitter and collectors have swapped positions from Fig. 5.1 shown earlier): 
<br><sub><img src="/Engineering/Electronics-Communication/img_bipolar_junction_transistor/image5.jpeg"></sub>
<br>The overall objective of this circuit is to create a current flowing from the collector to the emitter terminals in the transistor that is "controlled,” so to speak, by the base voltage VBB. How does this transistor operate in this circuit? 
<br>&bull; Because of the forward bias on the EBJ, charges can flow across this junction giving rise to iE. This current is primarily electrons that are injected from n to p. 
<br>&bull; The electrons injected in the base diffuse across the thin base region towards the collector. Some of the e- recombine in the base, but this region is manufactured to be thin and lightly doped compared to the emitter so this recombination is kept small. Otherwise, the BJT would just operate as two back-to-back diodes and no current would flow. A representative “minority carrier” concentration profile is shown below in Fig. 5.4. (Note that C and E are switched with reference to Fig. 1 above.) 
<br><sub><img src="/Engineering/Electronics-Communication/img_bipolar_junction_transistor/image6.jpeg"></sub>
<br>&bull; The e- that reach the reverse-biased CBJ encounter a large electric field. This E sweeps them into the collector forming the collector current iC as shown in Fig. 1 above. 
<br>&bull; A small base current iB is present largely due to recombination in the base with the small amount of injected holes from the base to the emitter. This is an important current, though. 
<br><b>Discussion About BJT in the Active Mode </b>
<br>1. The proportion of electrons from the emitter that "make it” to the base is called the collector efficiency, a: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bipolar_junction_transistor/image7.jpeg"></sub>
<br>Typically it has values of near 0.99. Note that a is called the common-base current gain in the text. From KCL in the circuit of Fig. 1: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bipolar_junction_transistor/image8.jpeg"></sub>
<br>We can deduce from (3) that with 1 a? , then iB will be much, much smaller than iE. 
<br>2. The ratio of collector current to base current is called the current gain, ß: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bipolar_junction_transistor/image9.jpeg"></sub>
<br>3. Dividing (1) by (4) we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_bipolar_junction_transistor/image10.jpeg"></sub>
<br>Equating this to (4) we find
<br><sub><img src="/Engineering/Electronics-Communication/img_bipolar_junction_transistor/image11.jpeg"></sub>
<br>and solving this equation for a
<br><sub><img src="/Engineering/Electronics-Communication/img_bipolar_junction_transistor/image12.jpeg"></sub>
<br>4. One can think of the base current in the BJT as controlling the collector current: i<sub>c</sub>= iß <sub>b</sub> . Since ß is large, then a small change in iB produces a large change in iC. If the base were an input signal and the collector the output, then this would be signal amplification! Awesome! 
<br>5. The circuit symbol and current conventions for the npn BJT are
<br><sub><img src="/Engineering/Electronics-Communication/img_bipolar_junction_transistor/image13.jpeg"></sub>
<br>The arrows indicate the assumed directions for positive current for the npn BJT. The filled arrow is always located on the emitter and helps us to remember the direction of the emitter current. 
<br>6. For biasing in the active mode as shown in Fig. 1, one biasing circuit might be
<br><sub><img src="/Engineering/Electronics-Communication/img_bipolar_junction_transistor/image14.jpeg"></sub>
</td>
</tr></table>
</div>
</asp:Content>
