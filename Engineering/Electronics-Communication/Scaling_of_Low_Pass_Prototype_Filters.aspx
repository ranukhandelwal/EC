<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Scaling_of_Low_Pass_Prototype_Filters.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Scaling_of_Low_Pass_Prototype_Filters" %>
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
	<b>Scaling of Low Pass Prototype Filters Stepped Impedance Low Pass Filters</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Scaling of Low Pass Prototype Filters</b>
<br><b>Stepped Impedance Low Pass Filters</b>
<br>In the last lecture, we discussed the design of prototype low pass filters where R<sub>s</sub> = R<sub>L</sub> =1 ohm and &omega;<sub>c</sub> =1rad/s. Of course, one generally is not going to implement the prototype filter. So what good is it? it is possible to scale and transform the low pass prototype filter to obtain a low pass, high pass, band pass and band stop filters for any impedance "level” ( R<sub>s</sub> = R<sub>L</sub> ) and cutoff frequency. Nice! The process of filter design has three basic steps as discussed in the last lecture: (1) collect the filter specifications, (2) design the low pass prototype filter, (3) scale and convert the prototype. The first two steps were performed in the previous lecture. We'll now consider the last step, beginning with scaling. There are two types of scaling for low pass prototype circuits, impedance scaling and frequency scaling: 
<br>1. Impedance Scaling. Since the filter is a linear circuit, we can multiply all the impedances (including the terminating resistances) by some factor without changing the transfer function of the filter. Of course, the input impedances will change. 
<br>If the desired source and load impedances equal R<sub>0</sub> , then
<br>&bull;X<sup>'</sup><sub>L</sub> = R<sub>0</sub> X<sub>L</sub> =&omega;(R<sub>0</sub>L) . Therefore, L<sup>'</sup>= R<sub>0</sub> L. 
<br>.X<sup>'</sup><sub>c</sub> =R<sub>0</sub>X<sub>c</sub> =-1/&omega;(R<sub>0</sub>/C) .therefore,C<sup>'</sup> =C/R<sub>0</sub>
<br>&bull; R<sup>'</sup><sub>s</sub> = R<sub>0</sub> .1 = R<sub>0</sub> 
<br>&bull; L 0 L 0 L R<sup>'</sup><sub>L</sub> = R<sub>0</sub>. R<sub>L</sub> = R<sub>0</sub> R<sub>L</sub> . 
<br>2. Frequency Scaling. As defined for the prototype &omega;<sub>c</sub> =1 rad/s. 
<br>To scale for a different cutoff frequency, we substitute
<br>&omega; --&omega;/&omega;<sub>c</sub>
<br>Applying this to the inductive and capacitive reactances in the prototype filter we find
<br>. X<sup>'</sup><sub>L</sub>&omega;L|<sub>&omega;</sub><sub>-</sub><sub>&omega;</sub><sub>/</sub><sub>&omega;</sub><sub>c</sub> =&omega;(L/&omega;<sub>c</sub>).therefore ,L<sup>'</sup> =L/&omega;<sub>c</sub>
<br>. X<sup>'</sup><sub>c</sub>1/&omega;c|<sub>&omega;</sub><sub>-</sub><sub>&omega;</sub><sub>/</sub><sub>&omega;</sub><sub>c</sub> =1/&omega;(&omega;/&omega;<sub>c</sub>).therefore ,C<sup>'</sup> =C/&omega;<sub>c</sub>
<br>For a one-step impedance and frequency scaling, we can combine (1)-(4), (6) and (7) to obtain
<br>.L<sup>'</sup><sub>k</sub> =R<sub>0</sub>L<sub>k</sub>/&omega;<sub>c</sub>
<br>. C<sup>'</sup><sub>k</sub> =C<sub>k</sub>/&omega;<sub>c</sub>R<sub>0</sub>
<br>.R<sup>'</sup><sub>s</sub> =R<sub>0</sub>
<br>. R<sup>'</sup><sub>L</sub>= R<sub>0</sub>R<sub>L</sub>
<br>where k =1,...,N as in Fig. 8.25. For example, in the circuit of Fig. 8.25a, C<sub>1</sub> = g<sub>1</sub> , L<sub>2</sub> = g<sub>2</sub> , C<sub>3</sub> = g<sub>3</sub> , etc. 
<br>Example N30.1. Design a 3-dB, equi-ripple low pass filter with a cutoff frequency of 2 GHz, 50-ohm impedance level and at least 15-dB insertion loss at 3 GHz. 
<br>The first step is to determine the order of the filter needed to achieve the required IL at the specified frequency. From equation (7) in the previous lecture for &omega; &gt;&gt; &omega;
<br>P<sub>LR</sub>&#8776 K<sup>2</sup>/4(2&omega;/&omega;<sub>c</sub>)<sup>2N</sup>
<br>(This is just an approximation here since&omega;/&omega;<sub>c</sub> =1.5.) 
<br>What value do we use for k? From 
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image1.gif"></sub>
<br>we see that the passband ripple equals 1+ k<sup>2</sup> . So, with A = ripple in dB, then
<br>10log(1+ k<sup>2</sup> ) = A
<br>so that k =  (10<sup>A/10</sup>) ?1
<br>Consequently, for A = 3 dB then k = 0.998 &#87761. Therefore,equation (12) becomes P<sub>LR</sub> &#8776 3<sup>2N</sup> / 4 so that<Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>N </td>

      
      <td class="txt">
	<br>10logP<sub>LR</sub> </td>

      
      <td class="txt">
	<br>bw/|&omega;/&omega;<sub>c</sub>|-1=0.5 </td>
</tr>

    <tr>

      
      <td class="txt">
<br>1 
</td>

      
      <td class="txt">
	<br>3.5 
</td>

      
      <td class="txt">
	<br>6dB 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>3 
</td>

      
      <td class="txt">
	<br>22.6 
</td>

      
      <td class="txt">
	<br>19dB 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>5 
</td>

      
      <td class="txt">
	<br>41.7 
</td>

      
      <td class="txt">
	<br>35dB 
</td>
</tr></table>
<br>
<br>The third column is the more accurate number since it originates from the plot in Fig. 8.27b. The second column is less accurate because we used (12) with &omega;/&omega;<sub>c</sub>=1.5, which is not &gt;&gt; 1. 
<br>For this filter, we'll choose N = 3 to meet the IL specification. From Table 8.4 (3.0-dB ripple), we find the immitance values to be g<sub>1</sub> = 3.3487, g<sub>2</sub> = 0.7117, g<sub>3</sub> = g<sub>1</sub> and g<sub>4</sub> =1. 
<br>Using (8)-(11) with R<sub>0</sub> = 50 ohm, f<sub>c</sub> =2 GHz and arbitrarily choosing the prototype circuit having the fewest inductors
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image2.gif"></sub>
<br>then, 
<br>&bull; R<sup>'</sup><sub>s</sub> = R<sup>'</sup><sub>L</sub>=R<sub>0</sub> = 50 ohm
<br>.C<sup>'</sup><sub>1</sub> =C<sup>'</sup><sub>3</sub> =C<sub>1</sub>/(&omega;<sub>c</sub>R<sub>0</sub>) =g<sub>1</sub>/(&omega;<sub>c</sub>R<sub>0</sub>) =3.3487/(2&pi;.2.10<sup>9</sup>.50)=5.33 pF
<br>.L<sup>'</sup><sub>2</sub> =R<sub>0</sub>L<sub>2</sub>/(&omega;<sub>c</sub> R<sub>0</sub>g<sub>2</sub>/(&omega;<sub>c</sub> =50.0.7117/(2&pi;.2.10<sup>9</sup>)=2.83 nH
<br>The response of this filter was computed in ADS and is shown below. This filter was also designed in ADS using the Filter DesignGuide feature for automatic filter design. 
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image3.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image4.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image5.gif"></sub>
<br>Using SmartComponents in ADS can greatly speed up the filter design process. Here using the low pass filter from the "Filter DG – All Networks” palette. The filter is designed using the Filter DesignGuide, which is activated by pointing to DesignGuide -&gt; Filter. 
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image6.gif"></sub>
<br>DA_LCLowpassDT1_lpdesign1
<br>DA_LCLowpassDT1
<br>Rl=50 Ohm
<br>Rg=50 Ohm
<br>ResponseType=Chebyshev
<br>N=3
<br>As=15 dB
<br>Ap=3 dB
<br>Fs=3 GHz
<br>Fp=2 GHz
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image7.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image8.gif"></sub>
<br><b>Stepped Impedance Low Pass Filters</b>
<br>The next question is: How do we implement these filters in microwave circuits? Lumped components (such as SMT) can be used up to approximately 5-6 GHz, but their electrical size and the electrical distance between them may not be negligible! Also, the losses of such components can be appreciable, which will limit the performance of filters. 
<br>We'll look at two methods for realizing low pass filters without lumped elements, (1) Stepped impedance and (2) Stubs. To understand stepped impedance filters, we must first look at electrically short sections of TLs with either a very large or a very small characteristic impedance. 
<br>To begin, we'll first determine the equivalent T-network model for a length of TL. From the front flap of the text
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image9.gif"></sub>
<br>From Table 4.2
<br>Z<sub>11</sub> =Z<sub>22</sub> =A/C =-j(Z<sub>0</sub>/sib&beta;l)=-jZ<sub>0</sub>cot&beta;l
<br>Z<sub>21</sub> =Z<sub>12</sub> =1/C =-j(Z<sub>0</sub>/sib&beta;l)=-jZ<sub>0</sub>cot&beta;l
<br>Using results from Example 4.3 in the text, we can construct an equivalent T network for a length of TL as
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image10.gif"></sub>
<br>where Z<sub>c</sub> = Z<sub>11</sub> =?jZ&beta;l
<br>and 
<br>Z<sub>A</sub>=Z<sub>11</sub>?Z<sub>C</sub>=Z<sub>B</sub>
<br>=-jZ<sub>0</sub>cot&beta;l +jZ<sub>0</sub>csc&beta;l =jZ<sub>0</sub>tan(&beta;l/2) 
<br>With &beta;l &lt;&pi;/2, then from (18) the series elements have positive reactance (=>  inductance) while from (17) the shunt element has negative reactance (=>  capacitance). This leads to the equivalent circuit 
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image11.gif"></sub>
<br>Where X/2=Z<sub>0</sub> tan(&beta;l/1)and B=-1/Z<sub>0</sub>sin&beta;l
<br>Now, here's the interesting part. Suppose the TLs are very short (so that &beta;l &lt;&pi;/4) and that Z<sub>0</sub> is very large. Then, (19) and (20) Become
<br>X/2&#8776Z<sub>0</sub>&beta;l/2=> X &#8776Z<sub>0</sub>&beta;l
<br>And
<br>B&#87760
<br>This is simply a series inductance! 
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image12.gif"></sub>
<br>Conversely, suppose the line is short and that Z<sub>0</sub> is very small. Then, (19) and (20) become
<br>X/2&#8776 0 B&#8776- &beta;l/Z<sub>0</sub> =-Y<sub>0</sub>&beta;l 
<br>This is simply a shunt capacitance! 
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image13.gif"></sub>
<br>Example N30.2 (Similar to text example 8.7). Design a stepped impedance low pass filter with maximally flat response in the pass band, f<sub>c</sub>=2.5 GHz and more than 20-dB IL at 4 GHz. Assume the impedance seen by both ports of the filter is 50 ohm and the highest practical Z<sub>0</sub> is 150 ohm while the lowest is 10 ohm.For maximally flat low pass filter with f &gt;&gt; f<sub>c</sub> , 
<br>P<sub>LR</sub>&#8776(f/f<sub>c</sub>)<sup>2N</sup> =(4/2.5)<sup>2N</sup> &gt; 100
<br>This implies that N &gt; 5. also, let's take a look at Fig 8.26. At the attenuation is approximately 20 dB for N = 6. Plus, let's choose a shunt element to be the first one on the left: 
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image14.gif"></sub>
<br>with N = 6: 
<br>g<sub>1</sub> = 0.5176 = C<sub>1</sub> = L<sub>6</sub>
<br>g<sub>2</sub> =1.4142 = L<sub>2</sub> = C<sub>5</sub>
<br>g<sub>3</sub> =1.9318 = C<sub>3</sub> = L<sub>4</sub>
<br>The next step is to determine the lengths of the high-Z and low-Z TLs to realize these immitance values. To do this, we first need to normalize the results from (21)-(24). From (21) 
<br>X<sup>'</sup><sub>L</sub>=&omega;L<sup>'</sup> = Z&beta;l 
<br>Then, using (8) and substituting (25) at &omega; = &omega;<sub>c</sub>
<br>L =(&omega;<sub>c</sub> /R<sub>0</sub>)(Z<sub>h</sub>/&omega;)&beta;l = (Z<sub>h</sub>/R<sub>0</sub>)&beta;l
<br>Similarly, one can show that
<br>C =(R<sub>0</sub>/Z<sub>l</sub>)&beta;l
<br>Remember, (26) and (27) are normalized parameters. Equations (25) and (26) can be used to determine the TL electrical lengths needed to realize the required filter coefficients: 
<br>&beta;l =LR<sub>0</sub>/Z<sub>h</sub> or &beta;l =CZ<sub>l</sub>/R<sub>0</sub>
<br>Substituting the g<sup>'</sup><sub>k</sub>values listed above into one of these two equations gives
<br>&beta;l<sub>1</sub> = 0.1036 rad = 5.94
<br>&beta;l<sub>2</sub> = 0.4713 rad = 27.01
<br>&beta;l<sub>3</sub> = 0.3864 rad = 22.14
<br>&beta;l<sub>4</sub>= 0.644 rad = 36.90
<br>&beta;l<sub>5</sub> = 0.2888 rad =16.20
<br>&beta;l<sub>6</sub> = 0.1727 rad = 9.89
<br>We can use LineCalc, for example, to compute the physical lengths from these electrical lengths once the specific details of the transmission line have been given. A microstrip circuit implementation of this design is shown in 
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image15.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image16.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image17.gif"></sub>
<br>and representative results are shown in below. 
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image18.gif"></sub>
<br>The response of the microstrip Hi-Z, Lo-Z stepped impedance filter is compared with the ideal response of a lumped element design. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/scaling_of_low_pass_prototype_filters.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/scaling_of_low_pass_prototype_filters.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/scaling_of_low_pass_prototype_filters.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image20.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_scaling_of_low_pass_prototype_filters/image20.wmf"></sub>
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
