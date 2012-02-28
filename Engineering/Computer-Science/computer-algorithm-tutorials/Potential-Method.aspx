<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Potential-Method.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Potential_Method" %>
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
	<b>Potential Method </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>This method stores pre-payments as potential or potential energy that can be released to pay for future operations. The stored potential is associated with the entire data structure rather than specific objects within the data structure. 
<br><b>Notation: </b>
<br>· D<sub>0</sub> is the initial data structure (e.g., stack) 
<br>· D<sub>i</sub> is the data structure after the i<sup>th</sup> operation. 
<br>· C<sub>i</sub> is the actual cost of the i<sup>th</sup> operation. 
<br>· The potential function &psi;maps each D<sub>i</sub> to its potential value &psi; (D<sub>i</sub>) 
<br>The amortized cost&nbsp; <sup>^</sup>c<sub>i</sub>&nbsp; of the ith operation w.r.t potential function &psi; is defined by 
<br><sup>^</sup>c<sub>i</sub>&nbsp; &nbsp;=&nbsp; c<sub>i</sub> + &psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>)&nbsp; --------- (1) 
<br>The amortized cost of each operation is therefore 
<br><sup>^</sup>c<sub>i</sub>&nbsp; &nbsp;=&nbsp; [Actual operation cost] + [change in potential]. 
<br>By the eq.I, the total amortized cost of the n operation is 
<br>n<sub>i=1</sub> <sup>^</sup>c<sub>i</sub>&nbsp; &nbsp;= &nbsp;n<sub>i=1</sub>(c<sub>i</sub>&nbsp; &nbsp;+ &psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>) ) 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &nbsp;n<sub>i=1</sub> c<sub>i</sub>&nbsp; &nbsp;+&nbsp; n<sub>i=1</sub> &psi; (D<sub>i</sub>) - n<sub>i=1</sub>&psi; (D<sub>i-1</sub>) 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &nbsp;n<sub>i=1</sub> c<sub>i</sub>&nbsp;&nbsp; + &psi; (D<sub>1</sub>) + &psi; (D<sub>2</sub>) +&nbsp; . . . + &psi; (D<sub>n-1</sub>) + &psi; (D<sub>n</sub>) - {&psi; (D<sub>0</sub>) + &psi; (D<sub>1</sub>) + . . . + &psi; (D<sub>n-1</sub>) 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &nbsp;n<sub>i=1</sub> c<sub>i</sub>&nbsp; &nbsp;+ &psi; (D<sub>n</sub>) - &psi; (D<sub>0</sub>)&nbsp;&nbsp; ----------- (2) 
<br>&nbsp;If&nbsp; we define a potential function &psi; so that &psi; (D<sub>n</sub>)&nbsp;&nbsp; &#8805; &psi; (D<sub>0</sub>), then the total amortized cost &nbsp;n<sub>i=1</sub> <sup>^</sup>c<sub>i</sub>&nbsp; is an upper bound on the total actual cost. 
<br>As an example consider a sequence of n operations performed on a data structure. The i<sup>th</sup> operation costs i if i is an exact power of 2 and 1 otherwise. The potential method of amortized determines the amortized cost per operation as follows: 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Let&nbsp; &psi; (D<sub>i</sub>) = 2i - 2<sup>e"lgi+1u^</sup> + 1, then 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&psi; (D<sub>0</sub>) = 0. Since 2<sup>e"lgi+1u^</sup> &nbsp;&#8804;&nbsp; 2i where i &gt;0 , 
<br>Therefore,&nbsp; &psi; (D<sub>i</sub>)&nbsp; &#8805; 0 = &psi; (D<sub>0</sub>) 
<br>&nbsp;If i = 2k where k &#8805; 0 then 
<br>2<sup>e"lgi+1u^</sup> &nbsp;= 2<sup>k+1</sup> &nbsp;= 2i 
<br>&nbsp;&nbsp; 2<sup>e"lgiu^</sup> &nbsp;= 2<sup>k</sup> &nbsp;= i 
<br>&nbsp;=>  <sup>^</sup>c<sub>i</sub>&nbsp; &nbsp;= &nbsp;c<sub>i</sub>&nbsp; + &psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>) 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = i + (2i -2i+1) -{2(i-1)-i+1} 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 2 
<br>&nbsp;If i = 2<sup>k</sup> &nbsp;+ j where k&nbsp; &#8805; 0 and 1 &#8804;&nbsp; j&nbsp; &#8804; &nbsp;2<sup>k</sup> 
<br>then 2<sup>e</sup>"lgi+1u<sup>^</sup>&nbsp;= 2<sup>[lgi]</sup> 
<br>=> &nbsp;&nbsp;<sup>^</sup>c<sub>i</sub>&nbsp; &nbsp;= &nbsp;c<sub>i</sub>&nbsp; + &psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>) = 3 
<br>&nbsp; Because&nbsp;<sup>n</sup><sub>i=1</sub> <sup>^</sup>c<sub>i</sub> &nbsp; &nbsp;=&nbsp; <sup>n</sup><sub>i=1</sub> c<sub>i</sub>&nbsp; &nbsp;+ &psi; (D<sub>n</sub>) - &psi; (D<sub>0</sub>) 
<br>&nbsp;and &psi; (D<sub>i</sub>)&nbsp; &#8805; &psi; (D<sub>0</sub>), so, the total amortized cost of n operation is an upper bound on the total actual cost. Therefore, the total amortized cost of a sequence of n operation is O(n) and the amortized cost per operation is O(n) / n = O(1). 
<br>&nbsp; 
	<br><b><b>Application 1- Stack Operations </b></b>
	<br>Define the potential function &psi; on a stack to be the number of objects in the stack. For empty stack D<sub>0</sub> , we have &psi; (D<sub>0</sub>) = 0. Since the number of objects in the stack can not be negative, the stack D<sub>i</sub> after the i<sup>th</sup> operation has nonnegative potential, and thus 
<br>&psi; (D<sub>i</sub>)&nbsp; &#8805; 0 = &psi; (D<sub>0</sub>). 
<br>Therefore, the total amortized cost of n operations w.r.t. function &psi; represents an upper bound on the actual cost. 
<br>Amortized costs of stack operations are: 
<br>&nbsp;<b> PUSH </b>
<br>&nbsp;If the i<sup>th</sup> operation on a stack containing s object is a PUSH operation, then the potential difference is 
<br>&psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>) = (s + 1) - s = 1 
<br>In simple words, if&nbsp; i<sup>th</sup> is PUSH then (i-1)<sup>th</sup> must be one less. By equation I, the amortized cost of this PUSH operation is 
<br>=>  &nbsp;&nbsp;&nbsp;<sup>^</sup>c<sub>i</sub>&nbsp; &nbsp;= &nbsp;c<sub>i</sub>&nbsp; + &psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>) = 1 + 1 = 2 
<br>&nbsp;<b> MULTIPOP </b>&nbsp;
<br>If the i<sup>th</sup> operation on the stack is MULTIPOP(S, k) and k` = min(k,s) objects are popped off the stack. 
<br>The actual cost of the operation is k`, and the potential difference is 
<br>&psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>) =&nbsp; -k` 
<br>why this is negative? Because we are taking off item from the stack. Thus, the amortized cost of the MULTIPOP operation is 
<br>=> &nbsp;&nbsp;<sup>^</sup>c<sub>i</sub>&nbsp; &nbsp;= &nbsp;c<sub>i</sub>&nbsp; + &psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>) = k`-k` = 0 
<br>&nbsp;<b> POP </b>
<br>Similarly, the amortized cost of a POP operation is 0. 
<br>&nbsp; 
	<br><b><b>Analysis </b></b>
	<br>Since amortized cost of each of the three operations is O(1), therefore, the total amortized cost of n operations is O(n). The total amortized cost of n operations is an upper bound on the total actual cost. 
<br>&nbsp;<b> Lemma&nbsp;</b>&nbsp;&nbsp;&nbsp; If data structure is Binary heap: Show that a potential function is O(nlgn) such that the amortized cost of EXTRACT-MIN is constant. 
<br>&nbsp;<b> Proof </b>
<br>We know that the amortized cost <sup>^</sup>c<sub>i</sub> of operation i is defined as <sup>^</sup>c<sub>i</sub>&nbsp; &nbsp;= &nbsp;c<sub>i</sub>&nbsp; + &psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>) 
<br>For the heap operations, this gives us 
<br>c<sub>1</sub>lgn = c<sub>2</sub>lg(n+c<sub>3</sub>) + &psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>)&nbsp;(Insert)&nbsp;------------(1) 
<br>c<sub>4</sub> = c<sub>5</sub>lg(n + c<sub>6</sub>) + &psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>)&nbsp;(EXTRACT-MIN) -----(2) 
<br>&nbsp;Consider the potential function &psi; (D) = lg(n!), where n is the number of items in D. 
<br>From equation (1), we have 
<br>=> &nbsp;&nbsp;&nbsp; (c<sub>1</sub> - c<sub>2</sub>)lg(n + c<sub>3</sub>) = lg(n!) - lg ((n-1)!) = lgn. 
<br>This clearly holds if c<sub>1</sub> = c<sub>2</sub> and c<sub>3</sub> = 0. 
<br>&nbsp;From equation (2), we have 
<br>=>  &nbsp;&nbsp;c<sub>4</sub> - c<sub>5</sub> lg(n + c<sub>6</sub>) = lg(n!) - lg ((n+1)!) =&nbsp; - lg(n+1). 
<br>This clearly holds if c<sub>4</sub> = 0 and c<sub>4</sub> = c<sub>6</sub> = 1. 
<br>Remember that stirlings function tells that lg(n!) = &theta; (nlgn), so 
<br>=> &nbsp;&nbsp;&nbsp; &psi; (D) = &theta; (n lg n) 
<br>And this completes the proof. 
<br>&nbsp; 
	<br><b><b>Application 2: Binary Counter </b></b>
	<br>Define the potential of the counter after i<sup>th</sup> INCREMENT operation to be b<sub>i</sub>, the number of 1's in the counter after i<sup>th</sup> operation. 
<br>Let i<sup>th</sup> INCREMENT operation resets t<sub>i</sub> bits. This implies that actual cost = atmost (t<sub>i</sub> + 1). 
<br>Why? Because in addition to resetting t<sub>i</sub> it also sets at most one bit to 1. Therefore, the number of 1's in the counter after the i<sup>th</sup> operation is therefore b<sub>i</sub> &#8804;&nbsp; b<sub>i-1</sub> - t<sub>i</sub> + 1, and the potential difference is 
<br>&psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>)&nbsp; &#8804;&nbsp; (b<sub>i-1</sub> - t<sub>i</sub> + 1) - b<sub>i-1</sub> = 1- t<sub>i</sub> 
<br>&nbsp;Putting this value in equation (1), we get 
<br>&psi;&nbsp;&nbsp;&nbsp;<sup>^</sup>c<sub>i</sub>&nbsp; &nbsp; =&nbsp; c<sub>i</sub> + &psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>) 
<br>&psi;&nbsp;&nbsp;&nbsp;=&nbsp; (t<sub>i</sub> + 1) + (1- t<sub>i</sub>) &psi;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; =&nbsp;&nbsp;&nbsp;&nbsp; 2 
<br>If counter starts at zero, then &psi; (D<sub>0</sub>) = 0. Since &psi; (D<sub>i</sub>) &#8805; 0 for all i, the total amortized cost of a sequence of n INCREMENT operation is an upper bound on the total actual cost, and so the worst-case cost of n INCREMENT operations is O(n). 
<br>If counter does not start at zero, then the initial number are 1's (= b<sub>0</sub>). 
<br>After 'n' INCREMENT operations the number of 1's = b<sub>n</sub>, where 0 &#8804;&nbsp; b<sub>0</sub>, b<sub>n</sub> &#8804;&nbsp; k. 
<br>Since <sup>n</sup><sub>i=1</sub> <sup>^</sup>c<sub>i</sub> &nbsp;= (c<sub>i</sub> &nbsp;+ &psi; (D<sub>i</sub>) + &psi; (D<sub>i-1</sub>)) 
<br>=> &nbsp;&nbsp;&nbsp;&nbsp;<sup>n</sup><sub>i=1</sub> <sup>^</sup>c<sub>i</sub> &nbsp;= <sup>n</sup><sub>i=1</sub> c<sub>i</sub> &nbsp;+ <sup>n</sup><sub>i=1</sub> &psi; (D<sub>i</sub>) + <sup>n</sup><sub>i=1</sub> &psi; D<sub>i-1</sub>) 
<br>=>  <sup>n</sup><sub>i=1</sub> <sup>^</sup>c<sub>i</sub> &nbsp;= <sup>n</sup>S<sub>i=1</sub> c<sub>i</sub> &nbsp;+ &nbsp; &psi; (D<sub>n</sub>) - &nbsp;&psi; (D<sub>0</sub>) 
<br>=>  <sup>n</sup><sub>i=1</sub>c<sub>i</sub> &nbsp;= <sup>n</sup><sub>i=1</sub> <sup>^</sup>c<sub>i</sub> &nbsp;+ &nbsp;&psi; (D<sub>0</sub>) - &nbsp;&psi; (D<sub>n</sub>) 
<br>&nbsp;We have <sup>^</sup>c<sub>i</sub> &nbsp;&#8804; 2 for all 1&#8804; i &#8804; n. Since &psi; (D<sub>i</sub>) = b<sub>0</sub> and &psi; (D<sub>n</sub>) = b, the total cost of n INCREMENT operation is 
<br>Since <sup>n</sup><sub>i=1</sub>c &nbsp;= <sup>n</sup><sub>i=1</sub> <sup>^</sup>c<sub>i</sub> &nbsp;+ &nbsp;&psi; (D<sub>n</sub>) + &nbsp;&psi; (D<sub>0</sub>) 
<br>=>  &#8804; <sup>n</sup><sub>i=1</sub> 2 &nbsp;- b<sub>n</sub> +&nbsp; b&lt;SUB&lt;0&lt; sub&gt; &nbsp;why because c<sub>i</sub> &nbsp;&#8804; 2 
<br>=>  = 2 <sup>n</sup><sub>i=1</sub> &nbsp;&nbsp;- b<sub>n</sub> +&nbsp; b<sub>0</sub> 
<br>=>  = 2n - bn + b 
<br>&nbsp;Note that since b<sub>0</sub> &#8804; k, if we execute at least n = ohm (k) INCREMENT Operations, the total actual cost is O(n), no matter what initial value of counter is. 
<br>&nbsp;Implementation of a queue with two stacks, such that the amortized cost of each ENQUEUE and each DEQUEUE Operation is O(1). ENQUEUE pushes an object onto the first stack. DEQUEUE pops off an object from second stack if it is not empty. If second stack is empty, DEQUEUE transfers all objects from the first stack to the second stack to the second stack and then pops off the first object. The goal is to show that this implementation has an O(1) amortized cost for each ENQUEUE and DEQUEUE operation. Suppose D<sub>i</sub> denotes the state of the stacks after i<sup>th</sup> operation. Define &psi; (D<sub>i</sub>) to be the number of elements in the first stack. Clearly, &psi; (D<sub>0</sub>) = 0 and &psi; (D<sub>i</sub>)&nbsp; &#8805; &psi; (D<sub>0</sub>) for all i. If the i<sup>th</sup> operation is an ENQUEUE operation, then &psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>) = 1 
<br>Since the actual cost of an ENQUEUE operation is 1, the amortized cost of an ENQUEUE operation is 2. If the i<sup>th</sup> operation is a DEQUEUE, then there are two case to consider. 
<br><b>Case i:</b> When the second stack is not empty. 
<br>&nbsp; In this case we have &psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>) = 0 and the actual cost of the DEQUEUE operation is 1. 
<br>&nbsp; &nbsp; <b>Case ii: </b>When the second stack is empty. 
<br>&nbsp; In this case, we have &psi; (D<sub>i</sub>) - &psi; (D<sub>i-1</sub>) =&nbsp;&nbsp; - &psi; (D<sub>i-1</sub>) and the actual cost of the DEQUEUE operation is &psi; (D<sub>i-1</sub>) + 1 . 
<br>&nbsp;In either case, the amortize cost of the DEQUEUE operation is 1. It follows that each operation has O(1) amortized cost 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/potential-method.aspx"></asp:HyperLink></td>
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
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Start your new thread here</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Enter thread subject</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_potential-method/image1.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_potential-method/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_potential-method/image3.wmf"></sub>
</td>
</tr></table>
<br>Bottom of Form
</td>
</tr></table>
<br>
</td>
</tr></table>
</div>
</asp:Content>
