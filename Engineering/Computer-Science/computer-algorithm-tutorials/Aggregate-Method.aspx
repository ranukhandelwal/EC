<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Aggregate-Method.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Aggregate_Method" %>
<%@ MasterType VirtualPath="~/Masters/algorithm_tutorials_links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Aggregate Method </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
	<br><b><b>Aggregate Method Characteristics </b></b>
	<br>· It computes the worst case time T(n) for a sequence of n operations. 
<br>· The amortized cost is T(n)/n per operation. 
<br>· It gives the average performance of each operation in the worst case. 
<br>· This method is less precise than other methods, as all operations are assigned the same cost. 
<br>&nbsp; 
	<br><b><b>Application 1: Stack operations </b></b>
	<br>
<br>In the following pseudocode, the operation STACK-EMPTY returns TRUE if there are no object currently on the stack, and FALSE otherwise. 
<br>MULTIPOP(s, k) 
<br>while (.NOT. STACK-EMPTY(s) and k &#8800; 0) 
<br>do&nbsp;&nbsp;&nbsp; pop(s) 
<br>&nbsp; k = k-1 
<br>&nbsp;<b> Analysis </b>
<br>i. Worst-case cost for MULTIPOP is O(n). There are n successive calls to MULTIPOP would cost O(n<sup>2</sup>). We get unfair cost O(n<sup>2</sup>) because each item can be poped only once for each time it is pushed. 
<br>&nbsp; ii. In a sequence of n mixed operations the most times multipop can be called n/2.Since the cost of push and pop is O(1), the cost of n stack operations is O(n). Therefore, amortized cost of an operation is the average: O(n)/n = O(1). 
<br>&nbsp; 
	<br><b><b>Application 2: Binary Counter </b></b>
	<br>We use an array A[0 . . k-1] of bits, where length [A] = k, as the counter. A binary number x that is stored in the counter has its lowest-order bit in A[0] and its highest-order bit is A[k-1], so that&nbsp;&nbsp; <sup>k-1</sup>S<sub>i=0</sub> 2<sup>i</sup>A[i]. Initially, x = 0, and thus A[i] = 0 for i=0, 1, . . . , k-1. 
<br>To add 1 (modulus 2<sup>k</sup> ) to the value in the counter, use the following pseudocode. 
<br><b>INCREMENT (A)</b> 
<br>i = 0 
<br>while i &lt; length [A] and A[i] = 1 
<br>&nbsp;&nbsp;&nbsp; do A[i] = 0 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i = i+1 
<br>if i &lt; length [A] 
<br>&nbsp;&nbsp;&nbsp; then A[i] = 1 
<br>A single execution of&nbsp; INCREMENT takes O(k) in worst case when Array A contains all 1's. Thus, a sequence of n INCREMENT operation on an initially zero counter takes O(nk) in the worst case. This bound is correct but not tight. 
<br>&nbsp;<b> Amortized Analysis </b>
<br>We can tighten the analysis to get a worst-case cost for a sequence of an INCREMENT's by observing that not all bits flip each time INCREMENT is called. 
<br>Bit A[0] is changed ceiling n times (every time) 
<br>Bit A[0] is changed ceiling [n/2<sup>1</sup>] times (every other time) 
<br>Bit A[0] is changed ceiling [n/2<sup>2</sup>] times (every other time) 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; . 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; . 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; . 
<br>Bit A[0] is changed ceiling [n/2<sup>i</sup>] times. 
<br>In general, for i = 0, 1, . . ., lg n, bit A[i] flips n/2<sup>i</sup> times in a sequence of n INCREMENT operations on an initially zero counter. 
<br>For i &gt; lg(n), bit A i never flips at all. The total number of flips in a sequence is thus &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sup>floor(log)</sup>S<sub>i=0</sub> n/2<sup>i</sup> &lt; n <sup>&infin;</sup>S<sub>i=0</sub>&nbsp; 1/2 <sup>i</sup> &nbsp;= 2n 
<br>Therefore, the worst-case time for a sequence of n INCREMENT operation on an initially zero counter is therefore O(n), so the amortized cost of each operation is O(n)/n = O(1). 
<br>
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr></table>
<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Discuss About Algorithm Tutorials</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Huffmans Codes</b>
<br>Discussion forum for Huffmans Codes</td>
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_aggregate-method/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_aggregate-method/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_aggregate-method/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_aggregate-method/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_aggregate-method/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_aggregate-method/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_aggregate-method/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_aggregate-method/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_aggregate-method/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_aggregate-method/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_aggregate-method/image1.wmf"></sub>
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
