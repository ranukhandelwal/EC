<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Properties_of_S_Matrices_Shifting_Reference_Planes.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Properties_of_S_Matrices_Shifting_Reference_Planes" %>
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
	<b>Properties of S Matrices Shifting Reference Planes</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Properties of S Matrices Shifting Reference Planes.</b>
<br>we saw that for reciprocal networks the Z and Y matrices are: 
<br>1. Purely imaginary for lossless networks, and
<br>2. Symmetric about the main diagonal for reciprocal networks. 
<br>In these two special instances, there are also special properties of the S matrix which we will discuss in this lecture. 
<br><b>Reciprocal Networks and S Matrices</b>
<br>In the case of reciprocal networks, it can be shown that
<br>[s] = [S]<sup>t</sup>
<br>where [s]<sup>t</sup> indicates the transpose of [S]. In other words, (1) is a statement that [S] is symmetric about the main diagonal, which is what we also observed for the Z and Y matrices. 
<br><b>Lossless Networks and S Matrices</b>
<br>The condition for a lossless network is a bit more obtuse for S matrices. As derived in your text, if a network is lossless then
<br>[s]<sup>*</sup> ={[s]<sup>t</sup>} <sup>-1</sup> 
<br>which is a statement that [S] is a unitary matrix. This result can be put into a different, and possibly more useful, form by pre-multiplying (2) by [s]<sup>t</sup> [s]<sup>t</sup> .[s] <sup>*</sup> = [s]<sup>t</sup> {[s]<sup>t</sup>}<sup>-1</sup> = [I] 
<br>[I ] is the unit matrix defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image1.gif"></sub>
<br>Expanding (3) we obtain
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image2.gif"></sub>
<br>Three special cases -
<br>. Take row 1 times column 1: 
<br>S<sub>11</sub>S<sub>11</sub><sup>*</sup> + S<sub>21</sub> S<sub>21</sub><sup>*</sup> + .... +S<sub>N1</sub>S<sub>N1</sub><sup>*</sup> = 1
<br>Generalizing this result gives
<br><sup>N</sup><sub>K=1</sub> S<sub>ki</sub> S<sub>ki</sub><sup>*</sup> = 1 
<br>In words, this result states that the dot product of any column of [S] with the conjugate of that same column equals 1 (for a lossless network). 
<br>. Take row 1 times column 2: 
<br>S<sub>11</sub> S<sub>12</sub><sup>*</sup> + S<sub>21</sub> S<sub>22</sub><sup>*</sup> + .....+ S<sub>N1</sub> S<sub>N2</sub><sup>*</sup> = 0
<br>Generalizing this result gives
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image3.gif"></sub>
<br>In words, this result states that the dot product of any column of [S] with the conjugate of another column equals 0 (for a lossless network). 
<br>. Applying (1) to (7): If the network is also reciprocal, then [S] is symmetric and we can make a similar statement concerning the rows of [S]. 
<br>That is, the dot product of any row of [S] with the conjugate of another row equals 0 (for a lossless network). 
<br>Example N16.1 In a homework assignment, the S matrix of a two port network was given to be
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image4.gif"></sub>
<br>Is the network reciprocal? Yes, because [S]<sup>t</sup> =[S]. Is the network lossless? This question often cannot be answered simply by quick inspection of the S matrix. Rather, we will systematically apply the conditions stated above to the columns of the S matrix: 
<br>. C1:C1<sup>*</sup> : (0.2 + j0.4)(0.2 - j0.4) + (0.8 - j0.4)(0.8 + j0.4) =1
<br>. C2:C2<sup>*</sup> : Same = 1
<br>. C1:C2<sup>*</sup> : (0.2 + j0.4)(0.8 + j0.4) + (0.8 - j0.4)(0.2 - j0.4) = 0
<br>. C2:C1<sup>*</sup> : Same = 0
<br>Therefore, the network is lossless. As an aside, in Example N15.1 of the text, which we saw in the last lecture, 
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image5.gif"></sub>
<br>This network is obviously reciprocal, and it can be shown that it's also lossy. 
<br>Example N16.2 (Text Example 4.4). Determine the S parameters for this T-network assuming a 50-om system impedance, as shown. 
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image6.gif"></sub>
<br>First, take a general look at the circuit: 
<br>. It's linear, so it must also be reciprocal. Consequently, [S] must be symmetric (about the main diagonal). 
<br>. The circuit appears unchanged when "viewed” from either port 1 or port 2. Consequently, S<sub>11</sub> = S <sub>22</sub>. Based on these observations, we only need to determine S<sub>11</sub> and S<sub>21</sub> since S<sub>22</sub> = S<sub>11</sub> and S<sub>12</sub> = S<sub>21</sub> . Proceeding, recall that S<sub>11</sub> is the reflection coefficient at port 1 with port 2 matched: 
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image7.gif"></sub>
<br>The input impedance with port 2 matched is Z<sub>in</sub> = 8.56 +141.8 8.56 + 50 om = 50.00 om which, not oincidentally, equals Z<sub>0</sub> ! With this Z<sub>in</sub> : 
<br>S<sub>11</sub> = Z<sub>in</sub> - Z<sub>0</sub> / Z<sub>in</sub> + Z<sub>0</sub> = 0 
<br>which also implies S<sub>22</sub> = 0. Next, for S<sub>21</sub> we apply V<sub>1</sub><sup> +</sup> with port 2 matched and measure V<sub>2</sub> <sup>- </sup>:
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image8.gif"></sub>
<br>At port 1, which we will also assume is the terminal plane, 
<br>V<sub>1</sub> =V<sub>1</sub><sup>+</sup> + V<sub>1</sub><sup>-</sup> . However, with 50-om termination at port 2, V<sub>1</sub><sup>-</sup> = 0 (since S<sub>11</sub> = 0). Therefore, V<sub>1</sub> =V <sub>1</sub><sup>+</sup> . Similarly,V<sub>2</sub> = V<sub>2</sub><sup>-</sup> . These last findings imply we can simply use voltage division to determine V<sub>2</sub><sup> -</sup> (from V<sub>2</sub> ): 
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image9.gif"></sub>
<br>And
<br>V<sub>2</sub> = 50/50+8.56 . V<sub>A</sub> = 0.8538.0.8288V<sub>1</sub> = 0.7077V<sub>1</sub>
<br>Therefore
<br>V<sub>2</sub><sup>-</sup> = 0.7077V<sub>1</sub><sup>+</sup> =>  S<sub>21</sub> = 1/2 =s<sub>12</sub>
<br>The complete S matrix for the given T-network referenced to 50- om system impedance is therefore
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image10.gif"></sub>
<br>Lastly, notice that when port 2 is matched
<br>S<sub>21</sub> = 1/2 =T<sub>21</sub>|<sub>V2 = 0 </sub>
<br>So that
<br>|T<sub>21</sub>|<sub>v2 = 0</sub>|<sup>2</sup> = 1/2
<br>which says that half of the power incident from port 1 is transmitted to port 2 when port 2 is matched. We can now see why this T-network is called a 3-dB attenuator. 
<br><b>Shifting Reference Planes</b>
<br>Recall that when we defined S parameters for a network, terminal planes were defined for all ports. These are arbitrarilychosen phase locations on TLs connected to the ports. It turns out that S parameters change very simply and predictably as the reference planes are varied along lossless TLs. This fact can prove handy, especially in the lab. Referring to Fig 4.9: 
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image11.gif"></sub>
<br>To be specific, [S] is the scattering matrix of the network with reference planes (i.e., ports) at t<sub>n</sub><sup>,</sup> while [S<sup>'</sup>] is the scattering matrix of the network with the reference planes shifted to t<sub>n</sub><sup>,</sup>. Applying the definition of the scattering matrix in these two situations yields
<br>[V<sup>-</sup>] = [s].[ V<sup>+</sup>]
<br>And 
<br>[V<sup>'-</sup>] = [s <sup>'</sup>].[ V<sup>'+</sup>]
<br>We've shifted the reference planes along lossless TLs. Hence, these voltage amplitudes only change phase as
<br>V<sub>n</sub><sup>'+</sup> = V<sub>n</sub> sup&gt;+ e <sup>+j</sup><sup>&theta;</sup><sub>n</sub>
<br>And 
<br>V<sub>n</sub><sup>'-</sup> = V<sub>n</sub><sup>-</sup> e<sup>-j</sup><sup>&theta;</sup><sub>n</sub>
<br>where &theta;<sub>n</sub>= &beta;<sub>n</sub> l<sub>n</sub> . Remember, these are the phase shifts when the phase planes are all moved away from the ports. 
<br>It is easy to prove these phase shift relationships in (10) and (11). First, we know that 
<br>V<sub>n</sub><sup>+</sup>(z<sub>n</sub>) =V<sub>n</sub><sup>+</sup> +e <sup>-</sup><sup>&beta;</sup><sub>n</sub><sup>z</sup><sub>n</sub> . Hence, V <sub>n</sub><sup>+</sup> (-l<sub>n</sub>) = V<sub>n</sub>+ e<sup>+</sup><sup>&beta;</sup><sub>n</sub><sup>z</sup><sub>n</sub> . Therefore, V<sub>n</sub><sup>'+</sup> ?V<sub>n</sub><sup>+</sup> ( -l<sub>n</sub>) =V<sub>n</sub><sup>+</sup> e<sup>+</sup><sup>&theta;</sup><sub>n</sub><sup>z</sup><sub>n</sub> , which is (10). Likewise, V<sub>n</sub><sup> - </sup>(z<sub>n</sub> =V<sub>n</sub> <sup>-</sup> e <sup>&beta;</sup><sub>n</sub><sup>z</sup><sub>n</sub> so that V<sub>n</sub><sup>-</sup> (-l<sub>n</sub>) =V<sub>n</sub><sup>-</sup> e<sup>-</sup><sup>&beta;</sup><sub>n</sub><sup>z</sup><sub>n</sub> .Therefore, V<sub>n</sub><sup>-'</sup>  V<sub>n</sub><sup>-</sup>(-l<sub>n</sub>) =V<sub>n</sub><sup>-</sup>e<sup>-</sup><sup>&theta;</sup><sub>n</sub><sup>z</sup><sub>n</sub> , which is (11). 
<br>Now, armed only with this information in (10) and (11), we can express [S?] in terms of [S]. Writing (10) and (11) in matrix form and substituting these into
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image12.gif"></sub>
<br>The inverse of a diagonal matrix is simply a diagonal matrix with inverted diagonal elements. So, we can pre-multiply (12) by the inverse of the first matrix (which is known, and is also not singular) giving: 
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image13.gif"></sub>
<br>Comparing (13) with (9) we can immediately deduce that: 
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image14.gif"></sub>
<br>Multiplying out this matrix equation gives: 
<br>S<sub>mn</sub><sup>'</sup> = S<sub>mn</sub> e<sup>-j(</sup><sup>&theta;</sup><sub>m</sub><sup> + </sup><sup>&theta;</sup><sub>n</sub><sup>)</sup>
<br>and when m = n, 
<br>S<sub>mn</sub><sup>'</sup> = S<sub>nn</sub> e <sup>-j2</sup><sup>&theta;</sup><sub>n</sub>
<br>The factor of two in this last exponent arises since the wave travels twice the electrical distance &theta; <sub>n</sub> : once towards the port and once back to the new terminal plane t<sub>n</sub> .Equations (15) and (16) provide the simple transformations for S parameters when the phase planes are shifted away from the ports. 
<br>Many times you'll find that your measured S parameters differ from simulation by a phase angle, even though the magnitude is in good agreement. This likely occurred because your terminal planes were defined differently in your simulations than was set during measurement. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/properties_of_s_matrices_shifting_reference_planes.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/properties_of_s_matrices_shifting_reference_planes.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/properties_of_s_matrices_shifting_reference_planes.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image17.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image17.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image17.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_properties_of_s_matrices_shifting_reference_planes/image17.wmf"></sub>
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
