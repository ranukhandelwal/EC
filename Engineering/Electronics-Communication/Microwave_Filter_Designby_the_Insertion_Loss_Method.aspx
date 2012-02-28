<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Microwave_Filter_Designby_the_Insertion_Loss_Method.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Microwave_Filter_Designby_the_Insertion_Loss_Method" %>
<%@ MasterType VirtualPath="~/Masters/mwlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Microwave Filter Designby the Insertion Loss Method</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Microwave Filter Designby the Insertion Loss Method.</b>
<br>The next major topic we're going to cover in this course is microwave filter design. Its theoretical basis is exactly the same as low frequency analog filters, as you saw in your electronics courses. for example, you'll see Butterworth and Chebyshev filters, but designed to operate at microwave frequencies. Implementation of these filters is different, however. For example, we won't use discrete inductors and capacitors. 
<br><b>Insertion Loss Method</b>
<br>We will begin this process with the design of analog filters, but perhaps with more detail than you've seen before. There are different methods for systematically designing filters, but the insertion loss method is probably the most prominent. In this technique, the relative power loss due to a lossless filter with reflection coefficient &tau; (&omega;):
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image1.gif"></sub>
<br>is specified in the loss ratio P<sub>LR</sub> defined as: 
<br>P<sub>LR</sub>=P<sub>inC</sub>/P<sub>load</sub>=p<sub>0</sub>/(p<sub>0</sub>1-&tau;(&omega;<sup>2</sup>)
<br>Or
<br>P<sub>LR</sub> =[1-|&tau;(&omega;)|<sup>2</sup>]<sup>-1</sup>
<br>In Section 4.1, the text shows that |&tau;(&omega;)|<sup>2</sup> is an even function of &omega;. This implies that |&tau;(&omega;)|<sup>2</sup> can be expanded in a polynomial series in &omega;<sup>2</sup> . In particular, for a linear and time invariant system, |&tau;(&omega;)|<sup>2</sup> is arational function meaning It can be expressed as a quotient of real polynomials M(&omega;<sup>2</sup>) and N(&omega;<sup>2</sup>)We'll choose: 
<br>|&tau;(&omega;)|<sup>2</sup> =M(&omega;<sup>2</sup>)/M(&omega;<sup>2</sup>)+N(&omega;<sup>2</sup>)
<br>Using
<br>P<sub>LR</sub> =1+(M(&omega;<sup>2</sup>))/(N(&omega;<sup>2</sup>))
<br>This is valid for any linear, time invariant system that is an even function of &omega;
<br><b>Types of Low Pass Filters</b>
<br>There are four types of low pass filters discussed in the text that are all based on (3): 
<br>1. Maximally Flat, Butterworth, Binomial Filter. For this type of low pass filter: 
<br>P<sub>LR</sub>=1+K<sup>2</sup> (&omega;/&omega;<sub>c</sub>)<sup>2N</sup>
<br>where N =filter order and &omega;<sub>c</sub>=cutoff frequency. 
<br>If k =1, then P<sub>LR</sub> = 2 at &omega;<sub>c</sub> =&omega; , which is the 3-dB frequency: 
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image2.gif"></sub>
<br>For large &omega; and with k =1, then
<br>P<sub>LR</sub>&#8776K<sup>2</sup>.(&omega;/&omega;<sub>c</sub>)<sup>2N</sup> =1<sup>2</sup>.(&omega;/&omega;<sub>c</sub>)<sup>2N</sup>
<br>From this result we learn that the insertion loss IL, defined as IL =10log P(P<sub>LR</sub>)
<br>increases by 20N dB/decade in the stop band for the maximally flat low pass filter. 
<br>2. Equal Ripple or Chebyshev Filter. For this type of low pass filter: 
<br>P<sub>LR</sub> =1+K<sup>2</sup>T<sup>2</sup><sub>N</sub>(&omega;/&omega;<sub>c</sub>)
<br>where T<sub>N</sub> (x) is the Chebyshev polynomial. A typical plot of P<sup>-1</sup><sub>LR</sub> in (6) is
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image3.gif"></sub>
<br>Generally, N is chosen to be an odd integer when the source and load impedances are equal (two-sided filters). For large &omega;/&omega;<sub>c</sub>and using the large argument form of T<sub>N</sub> , Becomes. 
<br>P<sub>LR</sub>&#8776 (K<sup>2</sup>/4)(2&omega;/&omega;<sub>c</sub>)<sup>2N</sup>
<br>As with the Butterworth filter, (7) also increases at 20N dB/decade, but with the extra factor
<br>2<sup>2N</sup>/4
<br>compared to (5). Consequently, there is more roll off with the Chebyshev low pass filter. For example, 
<br>N=3 =>  log<sub>10</sub> (2<sup>2.3</sup>/4)=12.0 dB
<br>N=5 =>  log<sub>10</sub> (2<sup>2.5</sup>/4)=24.1 dB
<br>This is a very sizeable increase in the stop band attenuation of the Chebyshev filter over the Butterworth. 
<br>3. Elliptic Filter. This type of low pass filter has an equi-ripple response in both the pass band and the stop band. It has a "faster” roll off than the previous two filters. 
<br>4. Linear Phase Filter. If it's important that there be no signal distortion, then the phase of the filter must be linear in the passband. 
<br>Why? It's the group delay that contributes to signal distortion of a transient waveform. 
<br><b>General Procedure for Filter Design</b>
<br>The general procedure for designing a filter using the insertion loss method can be summarized in three steps 
<br>1. Filter specifications. These include the cutoff frequency, the stop-band attenuation, the pass-band insertion loss, the pass-band behavior, etc. 
<br>2. Design a low pass "prototype” circuit. In such a prototype, R =1 ohm and &omega;<sub>c</sub> =1 rad/s. Filter tables are used for this step, or perhaps a computer package. 
<br>3. Scale and conversion. Finally, the filter is scaled to the proper impedance level and, if desired, to a high pass, band pass, or band stop topology. 
<br><b>Prototype Circuit for the Low Pass Filter</b>
<br>We'll consider this whole process in an example in the next lecture. Before that, we'll derive the L and C values for a second order, low pass “prototype” filter, as shown in 
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image4.gif"></sub>
<br>This will help demystify the origin of filter table coefficients that we'll see in the next lecture. From this above figure
<br>Z<sub>in</sub> =j&omega;L +1/j&omega;C||R=j&omega;L+R/(1+j&omega;RC) 
<br>The reflection coefficient at the input port is
<br>&tau;=(Z<sub>in</sub>-1)/(Z<sub>in</sub>+1) 
<br>From the definition of LR P in (1) and using (10) 
<br>P<sub>LR</sub>[1-(Z<sub>in</sub>-1)/(Z<sub>in</sub>+1).(Z<sup>*</sup><sub>in</sub>)/(Z<sup>*</sup><sub>in</sub>+1)]<sup>-1</sup> =(|Z<sub>in</sub>+1|<sup>2</sup>)/{2(Z<sub>in</sub>+Z<sup>*</sup><sub>in</sub>)}
<br>Your text gives expressions for the numerator and denominator of (11) in terms of R, L and C. For a maximally flat low pass filter, then from (4) and with k =1
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image5.gif"></sub>
<br>Equating (11) and (12) and after some algebra, the text shows
<br>R =1 and L = C =2 
<br>This is second row of Table 8.3. 
<br>This circuit is a "prototype” in that
<br>1. The source resistance = 1 ohm, and
<br>2. &omega;<sub>c</sub> =1rad/s
<br>The two topologies for low pass prototype circuits are shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image6.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image7.gif"></sub>
<br>Both give identical responses. The "immitance” values, g, for a low pass filter are defined as inductance for series elements
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image8.gif"></sub>
<br>Filter tables can be used to determine these parameters in prototype circuits for maximally flat, equi-ripple and other types of filters. A great reference for this and related filter topics is: G. L. Matthaei, L. Young and E. M. T. Jones, Microwave Filters, Impedance-Matching Networks, and Coupling Structures. Norwood, MA: Artech House, 1980. 
<br>The following filter tables are listed in the text: 
<br>&bull; Maximally flat low-pass, 
<br>&bull; Equi-ripple w/ 0.5 dB and 3 dB ripple, 
<br>&bull; Linear phase (maximally flat time delay). 
</td>

      
      <td class="txt">
	<br>
</td>
</tr></table>
<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Discuss about Microwave Engineering here</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>
	<br>Top of Form<Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Discussion Board for Microwave Engineering</b>
<br>Discussion on Microwave Engineering</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br><b>Thread / Thread Starter</b>
</td>

      
      <td class="txt">
	<br><b>Last Post</b>
</td>

      
      <td class="txt">
	<br><b>Replies</b>
</td>

      
      <td class="txt">
	<br><b>Views</b>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/microwave_filter_designby_the_insertion_loss_method.aspx"></asp:HyperLink> 
<br>why TEM mode is not possible for hollow waveguide 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;chayanika.josh</b> 
</td>

      
      <td class="txt">
	<br>Sep 11, 9:56:18 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2387
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/microwave_filter_designby_the_insertion_loss_method.aspx"></asp:HyperLink> 
<br>why we use hollow metallic rectangular wave guide for dominant mode operation 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;chayanika.josh</b> 
</td>

      
      <td class="txt">
	<br>Sep 11, 9:55:20 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2310
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/microwave_filter_designby_the_insertion_loss_method.aspx"></asp:HyperLink> 
<br>I want to know how to calculate and the design of power divider 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;vannak</b> 
</td>

      
      <td class="txt">
	<br>Jun 1, 4:16:47 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>3862
</td>
</tr></table>
<br>
<br>
	<br>Bottom of Form<Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>To start your new thread you must login here.</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
	<br>Top of Form<Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>To reply/post a comment you need to login, Use your user name and password to login if you are already registered else register here</b> </td>
</tr>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
<br><b>EXISTING USER LOGIN</b> </td>
</tr>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
<br><b>(Members Login)</b> </td>
</tr>

    <tr>

      
      <td class="txt">
<br>Username: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image10.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image10.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image11.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink5" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
</td>
</tr></table>
<br>
</td>
</tr></table>
<br>
</td>
</tr></table>
<br>
</td>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>NEW USER REGISTERATION FORM</b> </td>
</tr>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
<br></td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Login-Id</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image12.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image12.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image12.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image12.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image12.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image11.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image11.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_microwave_filter_designby_the_insertion_loss_method/image11.wmf"></sub>
</td>
</tr></table>
<br>
</td>
</tr></table>
<br>
</td>
</tr></table>
<br>
</td>
</tr></table>
<br>Bottom of Form
</td>
</tr></table>
<br>
</td>
</tr></table>
<br>
</td>
</tr></table>
</div>
</asp:Content>
