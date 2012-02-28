<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Accounting-Method.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Accounting_Method" %>
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
	<b>Accounting Method </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>In this method, we assign changes to different operations, with some operations charged more or less than they actually cost. In other words, we assign artificial charges to different operations. 
<br>· Any overcharge for an operation on an item is stored (in an bank account) reserved for that item. 
<br>· Later, a different operation on that item can pay for its cost with the credit for that item. 
<br>· The balanced in the (bank) account&nbsp; is not allowed to become negative. 
<br>· The sum of the amortized cost for any sequence of operations is an upper bound for the actual total cost of these operations. 
<br>· The amortized cost of each operation must be chosen wisely in order to pay for each operation at or before the cost is incurred. 
<br>&nbsp; 
	<br><b><b>Application 1: Stack Operation </b></b>
	<br>Recall the actual costs of stack operations were: 
<br>
<br>PUSH (s, x)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 
<br>POP (s)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 
<br>MULTIPOP (s, k)&nbsp;&nbsp;&nbsp; min(k,s) 
<br>
<br>The amortized cost assignments are 
<br>
<br>PUSH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2 
<br>POP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 
<br>MULTIPOP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 
<br>
<br>Observe that the amortized cost of each operation is O(1). We must show that one can pay for any sequence of stack operations by charging the amortized costs. 
<br>The two units costs collected for each PUSH is used as follows: 
<br>· 1 unit is used to pay the cost of the PUSH. 
<br>· 1 unit is collected in advanced to pay for a potential future POP. 
<br>Therefore, for any sequence for n PUSH, POP, and MULTIPOP operations, the amortized cost is an 
<br>C<sub>i</sub>&nbsp;&nbsp; = &nbsp;<sup>j=1</sup>S<sub>i</sub>  3 - C<sub>iactual</sub> 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 3i - (2<sup>floor(lg1) + 1</sup> + i -floor(lgi) - 2) 
<br>If i&nbsp; = 2<sup>k</sup>, where k &#8805; 0, then C<sub>i</sub>&nbsp;&nbsp; = 3i - (2<sup>k+1</sup> + i - k -2) 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = k + 2 
<br>If i&nbsp; = 2<sup>k</sup> + j, where k &#8805; 0 and 1 &#8804;&nbsp; j &#8804;&nbsp; 2<sup>k</sup>, then 
<br>C<sub>i</sub>&nbsp; = 3i - (2<sup>k+1</sup> + i - k - 2) 
<br>&nbsp;&nbsp;&nbsp;&nbsp; = 2j + k + 2 
<br>This is an upper bound on the total actual cost. Since the total amortized cost is O(n) so is the total cost. 
<br>&nbsp;As an example, consider a sequence of n operations is performed on a data structure. The i<sup>th</sup> operation costs i if i is an exact power of 2, and 1 otherwise. The accounting method of amortized analysis determine the amortized cost per operation as follows: Let amortized cost per operation be 3, then the credit C<sub>i</sub> after the i<sup>th</sup> operation is: Since k &#8805; 1 and j &#8805; 1, so credit C<sub>i</sub> always greater than zero. Hence, the total amortized cost 3n, that is O(n) is an upper bound on the total actual cost. Therefore, the amortized cost of each operation is O(n)/n = O(1). 
<br>Another example, consider a sequence of stack operations on a stack whose size never exceeds k. After every k operations, a copy of the entire stack is made. We must show that the cost of n stack operations, including copying the stack, is O(n) by assigning suitable amortized costs to the various stack operations. 
<br>There are, of course, many ways to assign amortized cost to stack operations. One way is: 
<br>
<br>PUSH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4, 
<br>POP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0, 
<br>MULTIPOP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0, 
<br>STACK-COPY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0. 
<br>
<br>Every time we PUSH, we pay a dollar (unit) to perform the actual operation and store 1 dollar (put in the bank). That leaves us with 2 dollars, which is placed on x (say) element. When we POP x element off the stack, one of two dollar is used to pay POP operation and the other one (dollar) is again put into a bank account. The money in the bank is used to pay for the STACK-COPY operation. Since after kk dollars in the bank and the stack size is never exceeds k, there is enough dollars (units) in the bank (storage) to pay for the STACK-COPY operations. The cost of n stack operations, including copy the stack is therefore O(n). operations, there are at least 
<br>&nbsp; 
	<br><b><b>Application 2: Binary Counter </b></b>
	<br>We observed in the method, the running time of INCREMENT operation on binary counter is proportion to the number of bits flipped. We shall use this running time as our cost here. 
<br>For amortized analysis, charge an amortized cost of 2 dollars to set a bit to 1. 
<br>When a bit is set, use 1 dollar out of 2 dollars already charged to pay the actual setting of the bit, and place the other dollar on the bit as credit so that when we reset a bit to zero, we need not charge anything. 
<br>The amortized cost of pseudo code&nbsp; INCREMENT can now be evaluated: 
<br><b>INCREMENT (A) </b>
<br>1. i = 0 
<br>2. while i &lt; length[A] and A[i] = 1 
<br>3.&nbsp;do A[i] = 0 
<br>4.&nbsp;i = i +1 
<br>5. if i &lt; length [A] 
<br>6.&nbsp;then A[i] = 1 
<br>
<br>Within the while loop, the cost of resetting the bits is paid for by the dollars on the bits that are reset. At most one bit is set, in line 6 above, and therefore the amortized cost of an INCREMENT operation is at most 2 dollars (units). Thus, for n INCREMENT operation, the total amortized cost is O(n), which bounds the total actual cost. 
<br><b>Consider a Variant </b>
<br>Let us implement a binary counter as a bit vector so that any sequence of n INCREMENT and RESET operations takes O(n) time on an initially zero counter,. The goal here is not only to increment a counter but also to read it to zero, that is, make all bits in the binary counter to zero. The new field , max[A], holds the index of the high-order 1 in A. Initially, set max[A] to -1. Now, update max[A] appropriately when the counter is incremented (or reset). By contrast the cost of RESET, we can limit it to an amount that can be covered from earlier INCREMENT'S. 
<br><b>INCREMENT (A) </b>
<br>1. i = 1 
<br>2. while i &lt; length [A] and A[i] = 1 
<br>3.&nbsp;do A[i] = 0 
<br>4.&nbsp;i = i +1 
<br>5. if i &lt; length [A] 
<br>6.&nbsp;then A[i] = 1 
<br>7.&nbsp;if i &gt; max[A] 
<br>8.&nbsp;then max[A] = i 
<br>9.&nbsp;else max[A] = -1 
<br>
<br>Note that lines 7, 8 and 9 are added in the CLR algorithm of binary counter. 
<br><b>RESET(A) </b>
<br>For i = 0 to max[A] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; do A[i] = 0 
<br>max[A] = -1 
<br>For the counter in the CLR we assume that it cost 1 dollar to flip a bit. In addition to that we assume that we need 1 dollar to update max[A]. Setting and Resetting of bits work exactly as the binary counter in CLR: Pay 1 dollar to set bit to 1 and placed another 1 dollar on the same bit as credit. So, that the credit on each bit will pay to reset the bit during incrementing. In addition, use 1 dollar to update max[A] and if max[A] increases place 1 dollar as a credit on a new high-order 1. (If max[A] does not increase we just waste that one dollar). Since RESET manipulates bits at some time before the high-order 1 got up to max[A], every bit seen by RESET has one dollar credit on it. So, the zeroing of bits by RESET can be completely paid for by the credit stored on the bits. We just need one dollar to pay for resetting max[A]. Thus, charging 4 dollars for each INCREMENT and 1 dollar for each RESET is sufficient, so the sequence of n INCREMENT and RESET operations take O(n) amortized time. 
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_accounting-method/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_accounting-method/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_accounting-method/image2.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_accounting-method/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_accounting-method/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_accounting-method/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_accounting-method/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_accounting-method/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_accounting-method/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_accounting-method/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_accounting-method/image2.wmf"></sub>
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
