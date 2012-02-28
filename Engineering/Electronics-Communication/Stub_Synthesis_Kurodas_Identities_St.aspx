<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Stub_Synthesis_Kurodas_Identities_St.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Stub_Synthesis_Kurodas_Identities_St" %>
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
	<b>Stub Synthesis Kuroda's Identities Stub Low Pass Filters</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Stub Synthesis Kuroda's Identities Stub Low Pass Filters</b>
<br>Another method for synthesizing microwave filters without lumped elements is to use shorted and opened stubs to realize the inductances and capacitances of the filter.however, the separations between the stubs are generally not negligible and thus will degrade the filter performance if they are neglected. kuroda's identities are transformations that prove useful with this type of problem. 
<br><b>Stub Synthesis</b>
<br>The text calls this stub synthesis process “Richard's transformation.” Here we'll show a simpler approach. In Section 2.3 of text, we derived the stub input impedances: 
<br>&bull; Short circuit TL: Z<sub>in</sub> = jZ<sub>0</sub>tan&beta;l 
<br>&bull; Open circuit TL: Y<sub>in</sub> = jY<sub>0</sub> tan&beta;l 
<br>To be consistent with Section 8.4, the prime indicates an impedance-scaled (i.e., normalized) value. 
<br>From (1) with l &lt;&psi;/4 (or &beta;l &lt;&pi;/2), the input impedance for a short circuit stub is a positive reactance (i.e., an effective inductance) while from (2), the open circuit stub presents a negative reactance (i.e., an effective capacitance). We'll use these two properties to construct effective inductances and capacitances for filters. From (1), it is apparent that we cannot express the input impedance in the form &omega;L since ? appears in the tangent function. We can conclude that this effective inductance varies with frequency. If this is the case, then which f would one choose? One choice is l =&psi;/8 (&beta;l =&pi;/4), which is halfway between 0 and &psi;/4 (beyond this, the reactance changes sign). So, with l =&psi; /8 thentan&beta;l =1 and (1) becomes
<br>Z<sub>in</sub> = jZ<sub>0</sub><sup>'</sup>
<br>Now, for an inductor at &omega;<sub>c</sub>=&beta;
<br>Z<sub>L</sub> = j&beta;<sub>c</sub>L 
<br>Equating (3) and (4) we see that by choosing
<br>Z<sub>0</sub><sup>'</sup> =&beta;<sub>c</sub>L 
<br>then this&psi;/8-long TL has the same input impedance as an inductor with inductance L. We will employ (5) in the design of stub filters. In such an application, the filter coefficients gk will be associated with unscaled component values (i.e., the unprimed L<sub>k</sub> and C<sub>k</sub> values in Section 8.4). So, from (5) 
<br>
<br>where the unprimed quantity indicates an unscaled coefficient. This relationship in (6) is very useful. It shows us that we can realize an effective inductance with filter coefficient L<sub>k</sub> by using a short circuit TL with an unscaled characteristic impedance
<br>Z<sub>0</sub> =L<sub>k</sub>
<br>that is &psi;/8-long at &omega;<sub>c</sub> =&omega;.
<br>Similarly, one can show that a filter coefficient C<sub>k</sub> can be effectively realized by an open circuit stub with unscaled characteristic impedance
<br>Z<sub>0</sub> =1/C<sub>k</sub>
<br>that is &psi;/8-long at &omega;<sub>c</sub>=&omega;.
<br>These relationships are shown in : 
<br>
<br>
<br>These effective L and C values for the stubs change with frequency. This affects, and generally degrades, the filter performance for f &#8800; f<sub>c</sub> . 
<br><b>Kuroda's Identities</b>
<br>Now that we can construct stubs to perform as effective inductors and capacitors in a filter [but with L(f ) and C(f )],we must next address the effects that occur when the stubs are separated from each other. This is an effect we ignored in the low pass prototype filter. We assumed it contained lumped elements that were interconnected without any time delay between them. In other words, all the elements existed at a point in space. In microwave circuits, this restriction may be difficult to realize in the physical construction. Hence, the distances between stubs may not be electrically small. 
<br>The four Kuroda identities allow us to add redundant TLs to the microwave filter circuit and transform it into a more practical form. by definition, a redundant TL is a matched TL of &psi;/8 length. Because it is matched at both ends, these "unit elements” have no effect on the filter at the center frequency. However, they will have an effect at other frequencies. 
<br>The four Kuroda identities are shown in 
<br>
<br>Each box represents a unit element with the indicated characteristic impedance and length &omega;/8. The lumped elements represent short- or open-circuit stubs acting as normalized (i.e., unscaled) series or shunt TLs. For example, the first figure in entry (a) represents
<br>
<br>The text shows a proof of the first Kuroda identity entry in Table 8.7. We'll prove the second one in the following example. 
<br>Example N31.1. Prove the second Kuroda identity in Table 8.7. The left hand circuit is
<br>
<br>From this circuit
<br>Z<sub>in</sub>=jZ<sub>1</sub>tan&beta;l=jZ<sub>1</sub> ohm
<br>where ohm tan&beta;l . Z<sub>in</sub> is an un-normalized value because of Z<sub>1</sub>.Cascading ABCD matrices for this circuit: 
<br>
<br>
<br>The right hand circuit in row 2 of Table 8.7 is
<br>
<br>from which we deduce that
<br>Z<sub>in</sub> =-jZ<sub>0</sub>cot&beta;l=Z<sub>0</sub>/j ohm
<br>Or
<br>Z<sub>in</sub> =n<sup>2</sup>Z<sub>2</sub>/j ohm
<br>Cascading ABCD matrices for this circuit: 
<br>
<br>
<br>Comparing (9) and (10), we see that they are equal provided n<sup>2</sup> =1+Z<sub>2</sub>/ Z<sub>1</sub> . That is: 
<br>j ohm (Z<sub>1</sub>+Z<sub>2</sub>)=<sup>?</sup> j ohm n<sup>2</sup>Z<sub>1</sub> =j ohm (1+Z<sub>2</sub>/Z<sub>1</sub> )Z<sub>1</sub> =j ohm Z<sub>1</sub> +j ohm Z<sub>2</sub> yes
<br>j ohm/Z<sub>2</sub>=<sup>?</sup> j ohm/ n<sup>2</sup>(1/Z<sub>1</sub>+Z<sub>2</sub>) =j ohm/ (1+Z<sub>2</sub>/Z<sub>1</sub>).(1/Z<sub>2</sub>)(Z<sub>2</sub>/Z<sub>1</sub>+1)=j ohm /Z<sub>2</sub> yes
<br>Hence, we've proved the second Kuroda identity in Table 8.7. It is perhaps best to illustrate the use of Kuroda's identities by an example. 
<br>Example N31.2 (Text example 8.5). Design a stub low pass filter on microstrip for f<sub>c</sub> =4 GHz, a 50-ohm system impedance and 3-dB equi-ripple in the passband. 
<br>As in the text, we'll choose the series-first topology of we find g<sub>1</sub> = g<sub>3</sub> = 3.3487 , g<sub>2</sub> = 0.7117 and g<sub>2</sub> =1. The low pass prototype is then: 
<br>
<br>Next, we synthesize stub elements to provide the equivalent reactances at the center frequency equal to these lumped elements. Using (7) and (8): 
<br>
<br>We couldn't actually get this circuit to operate correctly in the lab because there's no physical separation between the stubs. If we were to build it with a “small” separation between them, there would be extensive coupling between the stubs. (Additionally, how would we implement the series connected stubs in this circuit with microstrip or stripline?) 
<br>So what do we do? One approach is to use Kuroda's identities to transform this impractical circuit into an equivalent and more practical one. 
<br>But there are no “unit elements” in this circuit, so how can we use Kuroda's identities? We can add these to either end of the circuit without affecting the power loss factor P<sub>LR</sub>, provided their characteristic impedances are Z<sub>0</sub> =1. Adding unit elements (U.E.'s) on each end gives 
<br>
<br>These U.E.'s don't affect the filter performance at the center frequency since the (unscaled) input impedance equals one at either end of filter at f<sub>c</sub> . In other words, the U.E.'s are matched at both ends at f<sub>c</sub> . 
<br>We can now apply Kuroda's identity (b) on the left and on the right. In both cases, 
<br>n<sup>2</sup> =1+Z<sub>2</sub>/Z<sub>1</sub> =1 +1/3.3487 =1.299
<br>giving 
<br>
<br>The final step is to impedance- and frequency-scale the circuit. To do this, we multiply all impedances by 50 and scale the TLs to &lambda;/8 at 4 GHz using &epsilon;<sub>r,e</sub> of the microstrip : 
<br>
<br>This microstrip circuit was simulated in ADS for 30-mil GML 1000 laminate (&epsilon;<sub>r</sub>=3.20): 
<br>
<br>and the S parameters are: 
<br>
<br>
<br>The true response will likely not even be this “good.” We weren't able to use accurate models for the tees in ADS since the width ratios were too large. In the layout below, the two TLs that interconnect the stubs are only 0.28-mil wide while the other TLs are on the order of 10's of mils. 
<br>
<br>This example illustrates one of the chief disadvantages of the stub filters: they often require physically unrealistic strip widths. Even for a large 50% bandwidth, the bandpass filter in this example would be extremely difficult to manufacture. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_stub_synthesis_kurodas_identities_st/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/stub_synthesis_kurodas_identities_st.aspx"></asp:HyperLink> 
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
	<br>2386
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_stub_synthesis_kurodas_identities_st/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/stub_synthesis_kurodas_identities_st.aspx"></asp:HyperLink> 
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
	<br>2308
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_stub_synthesis_kurodas_identities_st/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/stub_synthesis_kurodas_identities_st.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_stub_synthesis_kurodas_identities_st/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_stub_synthesis_kurodas_identities_st/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_stub_synthesis_kurodas_identities_st/image2.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_stub_synthesis_kurodas_identities_st/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_stub_synthesis_kurodas_identities_st/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_stub_synthesis_kurodas_identities_st/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_stub_synthesis_kurodas_identities_st/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_stub_synthesis_kurodas_identities_st/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_stub_synthesis_kurodas_identities_st/image2.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_stub_synthesis_kurodas_identities_st/image2.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_stub_synthesis_kurodas_identities_st/image2.wmf"></sub>
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
