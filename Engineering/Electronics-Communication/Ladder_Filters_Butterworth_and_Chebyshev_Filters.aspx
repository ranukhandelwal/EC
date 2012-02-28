<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Ladder_Filters_Butterworth_and_Chebyshev_Filters.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Ladder_Filters_Butterworth_and_Chebyshev_Filters" %>
<%@ MasterType VirtualPath="~/Masters/ec2links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Ladder Filters. Butterworth and Chebyshev Filters</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Ladder Filters. Butterworth and Chebyshev Filters. Filter Tables. ADS.</b>
<br>Ladder filters are networks that are composed of alternating series and shunt elements. 
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image1.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image2.gif"></sub>
<br>Notice that the same source and load resistances are assumed. This is called "doubly terminated” filters. All of our filters will be doubly terminated. 
<br>Ladder filters are actually one of the oldest types of filters. They have been around since the mid-1800's. A circuit designer can achieve a sharper (or steeper) frequency roll off with ladder filters than with simple RC or RL circuits. Consequently, one can obtain more ideal low, high or band pass filter responses and with little resistive loss. Additionally, doubly terminated ladder filters have a low sensitivity to component variation. That is a good characteristic. 
<br>There are four basic types of ladder filters: 
<br>1. Maximally flat, also called Butterworth filters, 
<br>2. Equal ripple, also called Chebyshev filters, 
<br>3. Elliptic, also called Cauer filters, 
<br>4. Linear phase filters. 
<br>We will consider the first two in this course. The circuits in Figs. 1 and 2 can be either Butterworth or Chebyshev filters. The topology is the same for both. Only the values for L and C vary between the two types of filters. We will characterize these two filter types by the response of the loss factor L( f ) magnitude versus frequency. [The loss factor is
<br>sometimes referred to as the insertion loss = IL = 10 log10(L).] 
<br><b>Maximum Available Power</b>
<br>Before further discussion of ladder filters, we must first define maximum available power, P+. This is the maximum time average power that can be provided by a source, or by the previous stage in the circuit, to a matched load. Consider that a source or previous circuit stage has been modeled by this Thévenin equivalent circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image3.gif"></sub>
<br>As you determined in homework prob. 1, a dc source delivers maximum power when a resistive load Rs is connected to the output, similar to that shown above. For the ac circuit shown here, the maximum power delivered to the load Rs is
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image4.gif"></sub>
<br>In summary, P+ is the maximum available power from an ac source (or a Thévenin equivalent) with internal resistance Rs. It is the maximum time-average power that can be delivered to a matched source. Very important formula. (Note that Vs is the amplitude, not p-to-p.) 
<br><b>1. Maximally Flat, or Butterworth, Low Pass Filter</b>
<br>For this filter, the values of the inductors and capacitors are somehow chosen so that
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image5.gif"></sub>
<br>Where LB is the loss factor as a function of f. In this expression: 
<br>&bull; Pi = maximum available power from the source (see Lecture 10), 
<br>&bull; P = delivered power to the load, 
<br>&bull; fc = cutoff frequency of the filter, 
<br>• n = order of the filter (number of L's and C's in high and low pass filter; number of L-C pairs in bandpass filters). 
<br>For the Butterworth (maximally flat) low pass filter
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image6.gif"></sub>
<br><b>2. Equal Ripple, or Chebyshev Low Pass Filter</b>
<br>The values of the inductors and capacitors in this type of filter are somehow chosen so that
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image7.gif"></sub>
<br>In this expression: 
<br>&bull; ? = ripple size, 
<br>&bull; C<sub>nn)) Chebyshev polynomial of order n</sub><sub>
<br>Chebyshev filters might be more susceptible to variations in component values than Butterworth filters. This is due to the large coefficients of the polynomials listed </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image8.gif"></sub></sub><sub>
<br></sub><b><sub>Comments</b></sub><sub>
<br>&bull; Whether to use Butterworth, Chebyshev or another filter type depends on the specifications/requirements of the circuit (required rejection, </sub><sub>roll off, phase variation, etc.), the available components, component value variations and so on. &bull; Once you have the specifications, then you can synthesize the filter. The required filter specifications are: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image9.gif"></sub></sub><sub>
<br>&bull; With these specifications, you can calculate the specific inductor and capacitor values needed to realize the filter (i.e., “synthesize” it). It is a complicated procedure to derive the formulas for these component values. There are entire books devoted to this topic. (See the attachment at the end of this lecture for a simple example.) </sub><sub>
<br>&bull; Instead of deriving these formulas, designers often simply use filter tables. These are tabulated values for normalized susceptance and reactance (collectively called immittance, a). To un-normalize values from filter tables for low pass filters, Use</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image10.gif"></sub></sub><sub>
<br>RN and ?N are the normalization values used in the tables (often both = 1), while R and ?c are the actual circuit values. An example will help explain this procedure. </sub><sub>
<br></sub><b><sub>Example</b></sub><sub>
<br>Design a fifth-order, Butterworth, low-pass filter (see Fig. 1 above) with a cutoff frequency of 8 MHz, a rejection of at least 23 dB at 14 MHz and an impedance level of 50 ?. With a fifth order filter, n = 5. From (5.1) and f/fc = 14/8 then</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image11.gif"></sub></sub><sub>
<br>which meets the 23 dB spec. (Note that there is also loss in the passband. At 7 MHz, for example, IL = 10 log10[1+(7/8)</sub><sup>10</sup><sub>]=1.0 dB. Where does this "lost” energy go?) Now, for this fifth-order Butterworth filter we read the immittance coefficients from Table 5.1 to be a1 = 0.618, a2 =1.618, a3 = 2, a 4=1.618 and a5 = 0.618. </sub><sub>
<br>For a low pass filter, these immittance coefficients are the normalized susceptances of the shunt elements at fc and the normalized reactances of the series elements at fc. </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image12.gif"></sub></sub><sub>
<br>For R = 50 ? and W3=2 ? Fc=5.027 10 x10</sub><sup>7</sup><sub> rad/s (at 8 MHz), then</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image13.gif"></sub></sub><sub>
<br>All of these values are "in the ballpark” for the Harmonic Filter. Of course, one generally needs to use standard values of components for the filter, unless you build your own inductors and/or capacitors. Consequently, the circuit may need to be "tweaked” after completing this synthesis step. </sub><sub>
<br></sub><b><sub>Advanced Design System (ADS)</b></sub><sub>
<br>This tweaking process can be performed using analysis software such as SPICE, Puff or Advanced Design System (ADS). Your text uses the passive microwave circuit simulator called Puff, which comes with your text. It is DOS-based and requires the use of "scattering parameters” to characterize the behavior of circuits, including filters. (S parameters are discussed extensively in EE 481 Microwave Engineering.) For these, and other, reasons we will NOT be using Puff in this course. Instead, we will be using Advanced Design System (ADS) from Agilent Technologies. Consequently, all of the text problems that refer to Puff have been rewritten to use ADS. These can be found on the course web site. The manual "Getting Started with ADS” has been written to help you get going with ADS. It can also be found on the course web site. ADS has just a couple of nuances. Other than that, it is very straightforward to use. To illustrate the use of ADS, we will verify the proper operation of the low-pass filter designed previously. </sub><sub>
<br></sub><b><sub>ADS Simulation of a Low-Pass Ladder Filter</b></sub><sub>
<br>ADS Startup Window: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image14.gif"></sub></sub><sub>
<br>To get going with ADS, you must first create a "project”: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image15.gif"></sub></sub><sub>
<br>ADS example with Rs = 50 ?: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image16.gif"></sub></sub><sub>
<br>Here is a plot of Pout/Pin in dB: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image17.gif"></sub></sub><sub>
<br>This doesn't look like the response of a maximally flat low pass filter. What's wrong? Here's a plot of |Vout| Vin| in dB: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image18.gif"></sub></sub><sub>
<br>This plot has the general shape of a maximally flat filter, but there is an extra 6 dB of attenuation at the design frequency of 7 MHz. What's going on here? Lastly, here's a plot of Pout/P+ in dB where P+ is the maximum available power from the source: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image19.gif"></sub></sub><sub>
<br>Alas, this is the plot we've been looking for. Why? Because by definition, insertion loss is the ratio of the output power to the maximum avaliable source power. See (5.1) as an example. From this last plot, we can see that ADS predicts an insertion loss of –1.017 dB at 7.000 MHz. This is very close to our design prediction of –1.0 dB at 7 MHz. </sub><sub>
<br></sub><b><sub>ADS example with Rs = 100 ?:</b></sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image20.gif"></sub></sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image21.gif"></sub></sub><sub>
<br>Changing the impedance "level” (from 50 ? to 100 ?) has a dramatic effect on the performance of the filter. Can you explain why? </sub>
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
<br><b>Discuss about MOSFET here</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Discussion Board for MOSFET</b>
<br>You can discuss all your issues on MOSFET here</td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/ladder_filters_butterworth_and_chebyshev_filters.aspx"></asp:HyperLink> 
<br>sir,
<br>plz send me the notes for fourier transforms its very urgent. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;shruthi.s</b> 
</td>

      
      <td class="txt">
	<br>Aug 31, 12:14:03 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>6815
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/ladder_filters_butterworth_and_chebyshev_filters.aspx"></asp:HyperLink> 
<br>Sir I want tutorial on Fourier Transform......... 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;jainpooja.1989@yahoo.com</b> 
</td>

      
      <td class="txt">
	<br>Jul 15, 3:24:49 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7599
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/ladder_filters_butterworth_and_chebyshev_filters.aspx"></asp:HyperLink> 
<br>sir i want tutorial on fourier transform 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;apseng2005</b> 
</td>

      
      <td class="txt">
	<br>Jul 11, 10:08:19 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7459
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/ladder_filters_butterworth_and_chebyshev_filters.aspx"></asp:HyperLink> 
<br>heloo sir ,i want a tutorial for match filter.plz send it as soon as possible it is very urgent. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;richa</b> 
</td>

      
      <td class="txt">
	<br>Jun 4, 2:25:18 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>8708
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/ladder_filters_butterworth_and_chebyshev_filters.aspx"></asp:HyperLink> 
<br>I want lecture notes for single phase ac &amp; 3phase ac circuits 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;kalaivanisudhagar</b> 
</td>

      
      <td class="txt">
	<br>May 21, 11:32:46 AM
</td>

      
      <td class="txt">
	<br>1
</td>

      
      <td class="txt">
	<br>13422
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/ladder_filters_butterworth_and_chebyshev_filters.aspx"></asp:HyperLink> 
<br>what is the work done to move a charge? derive an expression for assembling a configuration of point charges
<br>
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;harismhkt</b> 
</td>

      
      <td class="txt">
	<br>May 12, 8:28:18 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7501
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/ladder_filters_butterworth_and_chebyshev_filters.aspx"></asp:HyperLink> 
<br>i want lcr circiut teorems derivations 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;harismhkt</b> 
</td>

      
      <td class="txt">
	<br>May 12, 8:23:58 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7255
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/ladder_filters_butterworth_and_chebyshev_filters.aspx"></asp:HyperLink> 
<br>i want oscillator frequency derivations for all. plz let me know from where i can get that 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;shruthi.s</b> 
</td>

      
      <td class="txt">
	<br>May 4, 5:21:01 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7281
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/ladder_filters_butterworth_and_chebyshev_filters.aspx"></asp:HyperLink> 
<br>I've got a question in one of my revision papers,
<br>
<br>Explain the advantages of representing a transistor by means of an equivalent circuit circuit model
<br>
<br>The only thing i can remember is that you can take complex circuits and break them down into simpler circuits which are easier to understand, 
<br>
<br>Is this the only advantage or do you have any more?
<br>
<br>Please help! 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;ally79</b> 
</td>

      
      <td class="txt">
	<br>Apr 12, 6:33:57 PM
</td>

      
      <td class="txt">
	<br>2
</td>

      
      <td class="txt">
	<br>19092
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/ladder_filters_butterworth_and_chebyshev_filters.aspx"></asp:HyperLink> 
<br>I want to know the variation of reverse saturation current with the increase in temperature for both germanium and silicon diodes 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;bhrahma@yahoo.co.in</b> 
</td>

      
      <td class="txt">
	<br>Jan 28, 7:17:23 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>9455
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/ladder_filters_butterworth_and_chebyshev_filters.aspx"></asp:HyperLink> 
<br>analog and digital communication system, fiber optic communication, telecommunication technique and application, mobile communication 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;hirakec@gmail.com</b> 
</td>

      
      <td class="txt">
	<br>Dec 17, 10:38:27 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>14003
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/ladder_filters_butterworth_and_chebyshev_filters.aspx"></asp:HyperLink> 
<br>I WANT A TUTORIAL FOR CMOS TRANSISTORS. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;maroofalamkhan</b> 
</td>

      
      <td class="txt">
	<br>Dec 14, 3:29:22 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>12727
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/ladder_filters_butterworth_and_chebyshev_filters.aspx"></asp:HyperLink> 
<br>what about coaching 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;satish21</b> 
</td>

      
      <td class="txt">
	<br>Dec 7, 5:27:52 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>15258
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
	<br><b>To reply/post a comment you need to login, Use your user name and password to login if you are </b><b>already registered else register here</b> </td>
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink15" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image23.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image23.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_ladder_filters_butterworth_and_chebyshev_filters/image23.wmf"></sub>
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
