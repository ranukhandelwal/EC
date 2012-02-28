<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Signal_Flow_Graphs.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Signal_Flow_Graphs" %>
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
	<b>Signal Flow Graphs</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Signal Flow Graphs</b>
<br>Consider the following two-port network
<br>
<br>A signal flow graph is a diagram depicting the relationships between signals in a network. It can also be used to solve for ratios of these signals. Signal flow graphs are used in control systems, power systems and other fields besides microwave engineering. Key elements of a signal flow graph are: 
<br>1. The network must be linear, 
<br>2. Nodes represent the system variables, 
<br>3. Branches represent paths for signal flow. 
<br>For example, referring to the two-port above, the nodes and branches are
<br>
<br>4. A signal y<sub>k</sub> traveling along a branch between nodes a<sub>k</sub> and b<sub>j</sub>is multiplied by the gain of that branch: 
<br>
<br>That is, b<sub>j</sub> = S<sub>jk</sub> a<sub>k</sub>
<br>5. Signals travel along branches only in the direction of the arrows. 
<br>This restriction exists so that a branch from a<sub>k</sub> to b<sub>j</sub> denotes a proportional dependence of b<sub>j</sub> on a<sub>k</sub> , but not the reverse. 
<br><b>Solving Signal Flow Graphs</b>
<br>Signal flow graphs (SFGs) can form an intuitive picture of the signal flow in a network. As an application, we will develop SFGs in the next lecture to help us calibrate out systematic errors present when we make measurements with a VNA. Another useful characteristic is that we can solve for ratios of signals directly from a SFG using a simple algebra. There are four rules that form the algebra of SFGs: 
<br>1. Series Rule. Given the two proportional relations then 
<br>V<sub>2</sub> = S<sub>21</sub>V<sub>1</sub> and V<sub>3</sub> = S<sub>32</sub> V<sub>2</sub>
<br>V<sub>3</sub>= (S<sub>32</sub>S<sub>21</sub>)V<sub>1</sub>
<br>In a SFG, this is represented as
<br>
<br>In other words, two series paths are equivalent to a single path with a transmission factor equal to a product of the two original transmission factors. 
<br>2. Parallel Rule. Consider the relation: 
<br>V<sub>2</sub> = S<sub>a</sub> V<sub>1</sub> + S<sub>b</sub> V<sub>1</sub> =(S<sub>a</sub> +S<sub>b</sub>) V<sub>1</sub>
<br>In a SFG, this is represented as
<br>
<br>In other words, two parallel paths are equivalent to a single path with a transmission factor equal to the sum of the original transmission coefficients. 
<br>3. Self-Loop Rule. Consider the relations
<br>V<sub>2</sub> = S<sub>21</sub> V<sub>1</sub> + S<sub>22</sub> V<sub>2</sub>
<br>and V<sub>3</sub> = S<sub>32</sub>V<sub>2</sub> We will choose to eliminate V<sub>2</sub> . From
<br>V<sub>2</sub>(1-S<sub>22</sub>)=S<sub>11</sub>V<sub>1</sub> => V<sub>2</sub>=(S<sub>21</sub>/1-S<sub>22</sub>)V<sub>1</sub>
<br>Substituting this into (4) gives 
<br>V<sub>3</sub>=(S<sub>32</sub>S<sub>21</sub>/1-S<sub>22</sub>)V<sub>1</sub>
<br>In a SFG, this is represented as
<br>
<br>In other words, a feedback loop may be eliminated by dividing the input transmission factor by one minus the transmission factor around the loop. 
<br>4. Splitting Rule. Consider the relationships: 
<br>V<sub>4</sub> = S<sub>42</sub> V<sub>2</sub> V<sub>2</sub> = S<sub>21</sub> V<sub>1</sub> and V<sub>3</sub>=S<sub>32</sub>V<sub>2</sub>
<br>The SFG is
<br>
<br>From (6) and (7) we find that V<sub>4</sub> = S<sub>42</sub>S<sub>21</sub>V<sub>1</sub>. Hence, if we use the Series Rule "in reverse” we can define: 
<br>V<sub>4</sub> S<sub>42</sub> V<sub>4</sub>= and V<sub>4</sub>= S<sub>21</sub> V<sub>1</sub>
<br>In a SFG, this is represented as
<br>
<br>In other words, a node can be split such that the product of transmission factors from input to output is unchanged. 
<br>Example N21.1. Construct a signal flow graph for the network shown below. Determine &tau;<sub>in</sub> and V<sub>L</sub> using only SFG algebra. 
<br>
<br>The signal flow graph is: 
<br>
<br>Notice the arrow directions for T<sub>s</sub> and T<sub>L</sub> . These are the correct orientations since
<br>
<br>And
<br>
<br>We will systematically apply the four rules above to reduce this diagram to a form that will directly allow us to determine both T<sub>in</sub> and V<sub>L</sub> . 
<br>Starting this solution process is probably the most difficult part. The rest is fairly systematic. 
<br>Step 1. Start by splitting node a<sub>2</sub> using Rule 4: 
<br>
<br>Why split T<sub>L</sub> and not S<sub>22</sub> ? Because the T<sub>L</sub> arrow is in the same direction as S<sub>12</sub> . 
<br>Step 2. Eliminate nodes a<sub>2</sub><sup>'</sup> and a<sub>2</sub><sup>'</sup> using Rule 1: 
<br>
<br>Step 3. Eliminate the self loop at b<sub>2</sub> using Rule 3: 
<br>
<br>Step 4. Eliminate node b<sub>2</sub> using Rule 1: 
<br>
<br>Step 5. Apply Rule 2: 
<br>
<br>From this last diagram we can directly solve for T<sub>in</sub> : 
<br>
<br>Next, we will determine the load voltage V<sub>L</sub> . The voltage on this
<br>TL can be expressed as V<sub>2</sub>( z) = b<sub>2</sub> (e<sup>-j</sup><sup>&beta;</sup><sup>z</sup> + T<sub>L</sub> e<sup>-j</sup><sup>&beta;</sup><sup>z</sup>) . At the terminal plane z = 0, then
<br>V<sub>2</sub>(0) =V<sub>L</sub> = b<sub>2</sub>(1+T<sub>L</sub>)
<br>In this expression, V<sub>2</sub>(0) =V<sub>L</sub> because the TL is very short. So, we see from (9) that to find V<sub>L</sub> we need to determine b<sub>2</sub> . In Step 4, however, we eliminated that node. Let's start again from Step 3, but now split node b<sub>1</sub> : 
<br>Step 4?. Split node b<sub>1</sub> using Rule 4: 
<br>
<br>Step 5?. Next, we can use Rule 1, then Rule 3 (Self-Loop Rule) to all branches feeding node a<sub>1</sub> : 
<br>
<br>Step 6?. Split node b<sub>2</sub> using Rule 4: 
<br>
<br>Step 7?. Apply Rule 3 one last time to remove the self loop: 
<br>
<br>Step 8?. Using the Series Rule, we can now find b<sub>2</sub> as: 
<br>
<br>Or
<br>
<br>Using this b<sub>2</sub> , we can determine V<sub>L</sub> from (9) to be
<br>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_signal_flow_graphs/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/signal_flow_graphs.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_signal_flow_graphs/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/signal_flow_graphs.aspx"></asp:HyperLink> 
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
	<br>2309
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_signal_flow_graphs/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/signal_flow_graphs.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_signal_flow_graphs/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_signal_flow_graphs/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_signal_flow_graphs/image2.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_signal_flow_graphs/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_signal_flow_graphs/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_signal_flow_graphs/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_signal_flow_graphs/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_signal_flow_graphs/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_signal_flow_graphs/image2.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_signal_flow_graphs/image2.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_signal_flow_graphs/image2.wmf"></sub>
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
