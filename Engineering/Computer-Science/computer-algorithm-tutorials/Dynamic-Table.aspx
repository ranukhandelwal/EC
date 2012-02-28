<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Dynamic-Table.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Dynamic_Table" %>
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
	<b>Dynamic Table </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>If the allocated space for the table is not enough, we must copy the table into larger size table. Similarly, if large number of members erased from the table, it is good idea to reallocate the table with a smaller size. Using amortized analysis we shall show that the amortized cost of insertion and deletion is constant and unused space in a dynamic table never exceeds a constant fraction of the total space. 
<br>Assume that the dynamic table supports following two operations: 
<br><b>TABLE-INSERT </b>
<br>This operation add an item in the table by copying into the unused single slot. The cost of insertion is 1. 
<br>&nbsp; <b>TABLE-DELETE </b>
<br>This operation removes an item from the table by freeing a slot. The cost of deletion is 1. 
<br>&nbsp; 
	<br><b><b>Load Factor </b></b>
	<br>The number of items stored in the table, n, divided by the size of the table, m, is defined as the load factor and denoted as T(&alpha;) = m/n 
<br>The load factor of the empty table (size m=0) is 1. 
<br>A table is full when there exists no used slots. That is, the number of items stored in the table equals the number of available slots (m=n). In this case 
<br>Load factor&nbsp; => &nbsp;&nbsp; T(&alpha;) = n/m = 1 
<br>&nbsp; 
	<br><b><b>Proposed Algorithm </b></b>
	<br>1. Initialize table size to m=1. 
<br>2. Keep inserting elements as long as size of the table less than number of items i.e., n
<br>3. Generate a new table of size 2m and set m &lt;-- 2m. 
<br>4. Copy items (by using elementary insertion) from the old table into the new one. 
<br>5. GOTO step 2. 
<br>&nbsp; 
	<br><b><b>Analysis </b></b>
	<br>If n elementary insert operations are performed in line 4, the worst-case cost of an operation is O(n), which leads to an upper bound of O(n<sup>2</sup>) on the total running time for n operations. 
<br>&nbsp; 
	<br><b><b>Aggregate Analysis </b></b>
	<br>The i<sup>th</sup> insert operation causes an expansion only when i - 1 an exact power of 2. Let c<sub>i</sub> be the cost of the i<sup>th</sup> insert operation. Then 
<br>c<sub>i</sub> = i&nbsp; if i - 1 is an exact power of 2 
<br>1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Otherwise 
<br>&nbsp;As an example, consider the following illustration. <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b><b>INSERTION </b></b></td>

      
      <td class="txt">
	<br><b><b>TABLE-SIZE</b></b></td>

      
      <td class="txt">
	<br><b><b>COST</b></b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>n 
</td>

      
      <td class="txt">
	<br>m 
</td>

      
      <td class="txt">
	<br>1 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1+1 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>2 
</td>

      
      <td class="txt">
	<br>2 
</td>

      
      <td class="txt">
	<br>1+2
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>3 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>1 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>4 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>1+4
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>5 
</td>

      
      <td class="txt">
	<br>8 
</td>

      
      <td class="txt">
	<br>1 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>6 
</td>

      
      <td class="txt">
	<br>8 
</td>

      
      <td class="txt">
	<br>1 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>7 
</td>

      
      <td class="txt">
	<br>8 
</td>

      
      <td class="txt">
	<br>1 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>8 
</td>

      
      <td class="txt">
	<br>8 
</td>

      
      <td class="txt">
	<br>1 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>9 
</td>

      
      <td class="txt">
	<br>16 
</td>

      
      <td class="txt">
	<br>1+8
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>10 
</td>

      
      <td class="txt">
	<br>16 
</td>

      
      <td class="txt">
	<br>1 
</td>
</tr></table>
<br>The total cost of n insert operations is therefore 
<br><sup>n</sup><sub>i=1</sub> c<sup>i</sup> &#8804; n + <sup>floor(lgn)</sup><sub>j=0</sub> 2j 
<br>&nbsp;= n + [2<sup>floor(lgn)+1</sup> -1]/[2-1]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; since <sup>n</sup><sub>k=0</sub> x<sup>k</sup> = [x<sup>n+1</sup> -1]/[x-1] 
<br>= n + 2<sup>lgn</sup> . 2-1 
<br>= n + 2n - 1 
<br>= 3n - 1 
<br>&lt; 3n 
<br>Therefore, the amortized cost of a single operation is 
<br>&nbsp;&nbsp;= ( Total cost/ Number of operations) 
<br>=&nbsp;&nbsp; 3n/n 
<br>=&nbsp;&nbsp; 3 
<br>Asymptotically, the cost of dynamic table is O(1) which is the same as that of table of fixed size. 
<br>&nbsp; 
	<br><b><b>Accounting Method </b></b>
	<br>Here we guess charges to 3$. Intuitively, each item pays for 3 elementary operations. 
<br>1. 1$ for inserting immediate item. 
<br>2. 1$ for moving item (re-insert) when the table is expanded. 
<br>3. 1$ for moving another item (re-insert) has already been moved once when that table is expanded. 
	<br><b><b>Potential Method </b></b>
	<br>Define a potential function &phi; that is 0 immediately after an expansion but potential builds to the table size by the time the table is full. 
<br>&phi; (T) = 2 . num[T] - size[T] 
<br>&nbsp;Immediately after an expansion (but before any insertion) we have, num[T] = size[T]/2 
<br>which implies 
<br>&phi; (T) = 2 . num[T] - 2 num[T] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 0 Immediately before an expansion, we have num[T] = size[T], 
<br>which implies 
<br>&phi; (T) = 2 . num[T] - num[T] &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = num[T] 
<br>The initial value of the potential function is zero i.e., &phi; (T) = 0, and half-full i.e., num[T] &#8805; size[T]/2. or 2 num[T] &#8805; size[T] 
<br>which implies 
<br>&phi; (T) = 2 num[T] - size[T] &#8805; 0 
<br>That is, &phi; (T) is always nonnegative. 
<br>Before, analyze the amortized cost of the i<sup>th</sup> TABLE-INSERT operation define following. 
<br>Let 
<br>&nbsp;num<sub>i</sub> = number of elements in the table after i<sup>th</sup> operation 
<br>&nbsp;size<sub>i</sub>&nbsp; = table after i<sup>th</sup> operation. 
<br>&nbsp;&nbsp;&phi;<sub>i</sub> = Potential function after i<sup>th</sup> operation. 
<br>Initially, we have num<sub>0</sub> = size<sub>0</sub> =0 and &phi;<sub>0</sub> = 0. 
<br>&nbsp;If i<sup>th</sup> insertion does not trigger an expansion, then size<sub>i</sub> = size<sub>i-1</sub> and the amortized cost of the operation is 
<br><sup>^</sup>c<sub>i</sub>&nbsp; &nbsp;=&nbsp; c<sub>i</sub> + &phi;<sub>i</sub> - &phi;<sub>i-1</sub> 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 1 + [2 . num<sub>i</sub> - size<sub>i</sub>] - [2 . num<sub>i</sub>-1- size<sub>i</sub>-1] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 1 + 2 num<sub>i</sub> - size<sub>i</sub> - 2(num<sub>i</sub>- 1) - size<sub>i</sub> 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 1 + 2num<sub>i</sub> - size<sub>i</sub> - 2num<sub>i</sub> + 2 - size<sub>i</sub> 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 3 
<br>&nbsp;If the i<sup>th</sup> insertion does trigger an expansion, then (size of the table becomes double) then size<sub>i</sub> = size<sub>i-1</sub> = num<sub>i</sub> and the amortized cost of the operation is 2 
<br><sup>^</sup>c<sub>i</sub>&nbsp; &nbsp;=&nbsp; c<sub>i</sub> + &phi;<sub>i</sub> - &phi;<sub>i-1</sub> 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&nbsp; num<sub>i</sub> + [2 . num<sub>i</sub> - size<sub>i</sub>] - [2 . num<sub>i-1</sub> - size<sub>i-1</sub>] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&nbsp; num<sub>i</sub> + 2num<sub>i</sub> - size<sub>i</sub> - 2 . num<sub>i-1</sub> + size<sub>i-1</sub> 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&nbsp; num<sub>i</sub> + 2num<sub>i</sub> -2(num<sub>i</sub> -1) -2(num<sub>i</sub> -1) + (num<sub>i</sub> -1) 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&nbsp; num<sub>i</sub> + -2 -2num<sub>i</sub> +&nbsp; 2 + num<sub>i</sub> -1 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&nbsp; 4 -1 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&nbsp; 3 
<br>&nbsp;What is the catch?&nbsp;&nbsp;&nbsp; It show how potential builds (from zero) to pay the table expansion. 
<br>&nbsp; 
	<br><b><b>Dynamic Table Expansion and Contraction </b></b>
	<br>When the load factor of the table, &alpha; (T) = n/m, becomes too&nbsp; small, we want to preserve following two properties: 
<br>1. Keep the load factor of the dynamic table below by a constant. 
<br>2. Keep the amortized cost of the dynamic table bounded above by a constant. 
<br>&nbsp; 
	<br><b><b>Proposed Strategy </b></b>
	<br>Even: &nbsp; When an item is inserted into full table. 
<br>Action: Double the size of the table i.e., m  2m. 
<br>Even: &nbsp;&nbsp; When removing of an item makes table less the half table. 
<br>Action:&nbsp; Halve the size of the table i.e., m  m/2. 
<br>The problem with this strategy is trashing. We can avoid this problem by allowing the load factor of the table, &alpha; (T) = n/m, to drop below 1/2 before contradicting it. By contradicting the table when load factor falls below 1/4, we maintain the lower bound &alpha; (T) &#8805; 1/4 i.e., load factor is bounded by the constant 1/4. 
<br>&nbsp; 
	<br><b><b>Load Factor </b></b>
	<br>The load factor &alpha; (T), of non-empty table T is defined as the number of items stored in the T divided by the size of T, which is number slots in T, i.e., 
<br>&alpha; (T) = &nbsp;&nbsp;num[T] / size[T]&nbsp; 
<br>&nbsp;Since for an empty table, we have 
<br>num[T] = size[T] = 0 and&nbsp; &alpha; (T) = 1 
<br>&nbsp;which implies that we always have 
<br>num[T] = &alpha; (T) . size[T] 
<br>whether table is empty or not. 
<br>&nbsp; 
	<br><b><b>&nbsp;Analysis by Potential Method </b></b>
	<br>We start by defining a potential function &phi; that is 
<br>1. 0 immediately after an expansion and builds as the load factor, &alpha; (T) = n/m,&nbsp; increases to 1. 
<br>2. 0 immediately after a contraction and builds as the load factor, &alpha; (T) = n/m, decreases to 1/4. 
<br>&nbsp; <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>2 . num[T] - size(T)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if &alpha; (T) &#8805; 1/2</td>
</tr>

    <tr>

      
      <td class="txt">
<br>&phi; (T) 
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>size(T) - num[T]&nbsp;&nbsp;if &alpha; (T) &lt; 1/2
</td>
</tr></table>
<br>Note that the potential function is never negative. 
	<br><b><b>Properties of Potential Function </b></b>
	<br>When &alpha; (T) = 1/2 
<br>&alpha; (T) = &nbsp;(&nbsp;num[T] / size[T]) = 1/2&nbsp; 
<br>implies that size[T] = 2 num[T] 
<br>And the potential function is 
<br>since &phi; (T) = 2 num[T] - size[T] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 2 num[T] - 2 num[T] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 0 
<br>When &alpha; (T) = 1 
<br>since&nbsp;&nbsp; &alpha; (T) =&nbsp;&nbsp;(num[T]&nbsp;/ size[T]&nbsp;) =1 
<br>implies that size[T] = num[T] 
<br>And the potential function is 
<br>since &phi; (T) = 2 num[T] - size[T] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 2 num[T] - num[T] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = num[T] 
<br>which indicates that the potential can pay for an expansion if an item is inserted. 
<br>When &alpha; (T) = 1/4, then 
<br>since&nbsp; &alpha; (T) =&nbsp;(num[T] / size[T]) = 1/4 
<br>implies that&nbsp; size[T] = 4 num[T] 
<br>And the potential function is 
<br>&phi; (T)&nbsp; = size[T]/2 - num[T] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 4 num[T]/2 - num[T] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = num[T] 
<br>which indicates that the potential can pay for a contradiction if an item is deleted. 
<br>&nbsp; 
	<br><b><b>Notation </b></b>
	<br>The subscript is used in the existing notations to denote their values after the i<sup>th</sup> operations. That is to say,<sup>^</sup>c<sub>i</sub>, c<sub>i</sub>, num<sub>i</sub>, size<sub>i</sub>, &alpha;<sub>i</sub> and &phi;<sub>i</sub> indicate values after the &nbsp;i<sup>th</sup> &nbsp;operation. 
<br>Initially 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; num<sub>0</sub> = size<sub>0</sub> = &phi;<sub>0</sub> = 1 and &alpha;<sub>0</sub> 
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-table/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-table/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-table/image1.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-table/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-table/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-table/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-table/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-table/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-table/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-table/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-table/image1.wmf"></sub>
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
