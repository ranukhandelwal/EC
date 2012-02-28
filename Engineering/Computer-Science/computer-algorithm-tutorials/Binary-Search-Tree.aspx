<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Binary-Search-Tree.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Binary_Search_Tree" %>
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
	<b>Binary Search Tree </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Binary Search tree is a binary tree in which each internal node x stores an element such that the element stored in the left subtree of x are less than or equal to x and elements stored in the right subtree of x are greater than or equal to x. This is called binary-search-tree property. 
<br>The basic operations on a binary search tree take time proportional to the height of the tree. For a complete binary tree with node n, such operations runs in Θ(lg n) worst-case time. If the tree is a linear chain of n nodes, however, the same operations takes (n) worst-case time. 
<br>&nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_binary-search-tree/image1.gif"></sub> 
<br>The height of the Binary Search Tree equals the number of links from the root node to the deepest node. 
<br>&nbsp; 
	<br><b><b>Implementation of &nbsp;Binary Search Tree </b></b>
	<br>Binary Search Tree can be implemented as a linked data structure in which each node is an object with three pointer fields. The three pointer fields left, right and p point to the nodes corresponding to the left child, right child and the parent respectively NIL in any pointer field signifies that there exists no corresponding child or parent. The root node is the only node in the BTS structure with NIL in its p field. 
<br>&nbsp;&nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_binary-search-tree/image2.gif"></sub> 
	<br><b><b>Inorder Tree Walk </b></b>
	<br>During this type of walk, we visit the root of a subtree between the left subtree visit and right subtree visit. 
<br><b>INORDER-TREE-WALK (x) </b>
<br>If x &#8800; NIL then 
<br>&nbsp;&nbsp;&nbsp; INORDER-TREE-WALK (left[x]) 
<br>&nbsp;&nbsp;&nbsp; print key[x] 
<br>&nbsp;&nbsp;&nbsp; INORDER-TREE-WALK (right[x]) 
<br>It takes Θ(n) time to walk a tree of n nodes. Note that the Binary Search Tree property allows us to print out all the elements in the Binary Search Tree in sorted order. 
<br>&nbsp; 
	<br><b><b>Preorder Tree Walk </b></b>
	<br>In which we visit the root node before the nodes in either subtree. 
<br><b>PREORDER-TREE-WALK (x) </b>
<br>If x not equal NIL then 
<br>&nbsp;&nbsp;&nbsp; PRINT key[x] 
<br>&nbsp;&nbsp;&nbsp; PREORDER-TREE-WALK (left[x]) 
<br>&nbsp;&nbsp;&nbsp; PREORDER-TREE-WALK (right[x]) 
<br>&nbsp; 
	<br><b><b>Postorder Tree Walk </b></b>
	<br>In which we visit the root node after the nodes in its subtrees. 
<br><b>POSTORDER-TREE-WALk (x) </b>
<br>If x not equal NIL then 
<br>&nbsp;&nbsp;&nbsp; POSTORDER-TREE-WALK (left[x]) 
<br>&nbsp;&nbsp;&nbsp; PREORDER-TREE-WALK (right[x]) 
<br>&nbsp;&nbsp;&nbsp; PRINT key [x] 
<br>It takes O(n) time to walk (inorder, preorder and &nbsp;pastorder) a tree of n nodes. 
<br>&nbsp; 
	<br><b><b>Binary-Search-Tree property Vs Heap Property </b></b>
	<br>In a heap, a nodes key is greater than equal to both of its children's keys. In binary search tree, a node's key is greater than or equal to its child's key but less than or equal to right child's key. Furthermore, this applies to entire subtree in the binary search tree case. It is very important to note that the heap property does not help print the nodes in sorted order because this property does not tell us in which subtree the next item is. If the heap property could used to print the keys (as we have shown above) in sorted order in O(n) time, this would contradict our known lower bound on comparison sorting. 
<br>The last statement implies that since sorting n elements takes ohm (n lg n) time in the worst case in the comparison model, any comparison-based algorithm for constructing a Binary Search Tree from arbitrary list n elements takes ohm (n lg n) time in the worst case. 
<br>We can show the validity of this argument (in case you are thinking of beating ohm (n lg n) bound) as follows: let c(n) be the worst-case running time for constructing a binary tree of &nbsp;a set of n elements. Given an n-node BST, the inorder walk in the tree outputs the keys in sorted order (shown above). Since the worst-case running time of any computation based sorting algorithm is ohm (n lg n) , we have 
<br>&nbsp;c(n) + O(n) = ohm (n lgn) 
<br>Therefore, &nbsp;&nbsp;c(n) = ohm (n lgn). 
<br>&nbsp; 
	<br><b><b>Querying a Binary Search Tree </b></b>
	<br>The most common operations performed on a BST is searching for a key stored in the tree. Other operations are MINIMUM, MAXIMUM, SUCCESSOR and PREDESESSOR. These &nbsp;operations run in O(h) time where h is the height of the tree i.e., h is the number of links root node to the deepest node. 
<br>The TREE-SEARCH (x, k) algorithm searches the tree root at x for a node whose key value equals k. It returns a pointer to the node if it exists otherwise NIL 
<br><b>TREE-SEARCH (x, k) </b>
<br>if x = NIL&nbsp;&nbsp; &nbsp; .OR. &nbsp;&nbsp;&nbsp; k = key[x] 
<br>&nbsp;&nbsp;&nbsp; then return x 
<br>if k &lt; key[x] 
<br>&nbsp;&nbsp;&nbsp; then return TREE-SEARCH (left[x], k) 
<br>&nbsp;&nbsp;&nbsp; else return TREE-SEARCH (right[x], k) 
<br>Clearly, this algorithm runs in O(h) time where h is the height of the tree. 
<br>The iterative version of above algorithm is very easy to implement. 
<br><b>ITERATIVE-TREE-SEARCH (x, k) </b>
<br>1. while x not equal NIL &nbsp; &nbsp; .AND. &nbsp; &nbsp; key &#8800; key[x] do 
<br>2. if k &lt; key [x] 
<br>3. then x  left[x] 
<br>4. else x  right [x] 
<br>5. return x 
<br>The TREE-MINIMUN (x) algorithm returns a point to the node of the tree at x whose key value is the minimum of all keys in the tree. Due to BST property, an minimum element can always be found by following left child pointers from the root until NIL is uncountered. 
<br><b>TREE-MINIMUM (x) </b>
<br>while left[x] &#8800; NIL do 
<br>&nbsp;&nbsp;&nbsp; x  left [x] 
<br>return x 
<br>Clearly, it runs in O(h) time where h is the height of the tree. Again thanks to BST property, an element in a binary search tree whose key is a maximum can always be found by following right child pointers from root until a NIL is encountered. 
<br><b>TREE-MAXIMUM (x) </b>
<br>while right[x] &#8800; NIL do 
<br>&nbsp;&nbsp;&nbsp; x  right [x] 
<br>return x 
<br>Clearly, it runs in O(h) time where h is the height of the tree. 
<br>The TREE-SUCCESSOR (x) algorithm returns a pointer to the node in the tree whose key value is next higher than key [x]. 
<br><b>TREE-SUCCESSOR (x) </b>
<br>if right [x] &#8800; NIL 
<br>&nbsp;then return TREE-MINIMUM (right[x]) 
<br>&nbsp;else y  p[x] 
<br>&nbsp;while y &#8800; NIL &nbsp;&nbsp;&nbsp; .AND.&nbsp;&nbsp;&nbsp; x = right[y] do 
<br>x&nbsp; y 
<br>y  p[y] 
<br>return y 
<br>Note that algorithm TREE-MINIMUM, TRE-MAXIMUM, TREE-SUCCESSOR, and TREE-PREDESSOR never look at the keys. 
<br>An inorder tree walk of an n-node BST can be implemented in Θ(n)-time by finding the minimum element in the tree with TREE-MINIMUM (x) algorithm and then making n-1 calls to TREE-SUCCESSOR (x). 
<br>&nbsp; 
	<br><b><b>Another way of Implementing Inorder walk on Binary Search Tree </b></b>
	<br><b>Algorithm </b>
<br>· find the minimum element in the tree with TREE-MINIMUM 
<br>· Make n-1 calls to TREE-SUCCESSOR 
<br>&nbsp;Let us show that this algorithm runs in Θ(n) time. For a tree T, let m<sub>T</sub> be the number of edges that are traversed by the above algorithm. The running time of the algorithm for T is Θ(m<sub>T</sub>). We make following claim: 
<br>M<sub>T</sub> is zero if T has at most one node and 2e - r otherwise, where e is the number of edges in the tree and r is the length of the path from root to the node holding the maximum key. 
<br>Note that e = n - 1 for any tree with at least one node. This allows us to prove the claim by induction on e (and therefore, on n). 
<br>Base case&nbsp;&nbsp; Suppose that e = 0. Then, either the tree is empty or consists only of a single node. So, e = r = 0. Therefore, the claim holds. 
<br>Inductive step&nbsp;&nbsp;&nbsp; Suppose e &gt; 0 and assume that the claim holds for all e' &lt; e. Let T be a binary search tree with e edges. Let x be the root, and T1 and T2 respectively be the left and right subtree of x. Since T has at least one edge, either T1 or T2 respectively is nonempty. For each i = 1, 2, let e<sub>1</sub> be the number of edges in Ti, p<sub>i</sub> the node holding the maximum key in Ti, and r<sub>i</sub> the distance from pi to the root of Ti. Similarly, let e, p and r be the correspounding values for T. First assume that both T1 and T2 are nonempty. Then e = e<sub>1</sub> + e<sub>2</sub> + 2, p = p<sub>2</sub>, and r = r<sub>2</sub> + 1. The action of the enumeration is as follows: 
<br>· Upon being called, the minimum-tree(x) traverses the left branch of x and enters T1. 
<br>· Once the root of T1 is visited, the edges of T1 are traversed as if T1 is the input tree. This situation will last until p<sub>1</sub> is visisted. 
<br>· When the Tree-Successor is called form p<sub>1</sub>. The upward path from p<sub>1</sub> and x is traversed and x is discovered to hold the successor. 
<br>· When the tree-Successor called from x, the right branch of x is taken. 
<br>· Once the root of T2 is visited, the edges of T2 are traversed as if T2 is the input tree. This situation will last until p<sub>2</sub> is reached, whereby the algorithm halts. 
<br>By the above analysis, the number of edges that are traversed by the above algorithm, m<sub>T</sub>, is 
<br>M<sub>T</sub> = 1 + (2e<sub>1</sub> - r<sub>1</sub>) + (r<sub>1</sub> + 1) + 1 + (2e<sub>2</sub> - r<sub>2</sub>) 
<br>= 2(e<sub>1</sub> + e<sub>2</sub> + 2) - (r<sub>2</sub> + 1) = 2e -r 
<br>Therefore, the claim clearly holds for this case. 
<br>&nbsp;Next suppose that T2 is emply. Since e &gt; 0, T1 is nonempty. Then e = e<sub>1</sub> + 1. Since x does not have a right child, x holds the maximum. Therefore, p = x and r = 0. The action of the enumeration algorithm is the first two steps. Therefore, the number of edges that are traversed by the algorithm in question is 
<br>M<sub>T</sub> = 1 + (2e<sub>1</sub> - r<sub>1</sub>) + ( r<sub>1</sub> +1) 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 2(e<sub>1</sub> + 1) - 0 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 2e - r 
<br>Therefore, the claim holds for this case. 
<br>Finally, assume that T1 is empty. Then T2 is nonempty. It holds that e = e<sub>2</sub> + 1, p = p2, and r = r2 + 1. This time x holds the minimum key and the action of the enumeration algorithm is the last two steps. Therefore, the number of edges that are traversed by the algorithm is 
<br>M<sub>T</sub> = 1 + (2e<sub>2</sub> - r<sub>2</sub>) 
<br>= 2(e<sub>2</sub>+1) - (r<sub>2</sub> + 1) 
<br>= 2e -r 
<br>Therefore, the claim holds for this case. 
<br>The claim is proven since e = n - 1, m<sub>T</sub>&nbsp; &#8804;&nbsp; 2n. On the other hand, at least one edge has to be traversed when going from on node to another, so m<sub>T</sub> &#8805;&nbsp; n - 1. Therefore, the running time of the above algorithm is Θ(n). 
<br>Consider any binary search tree T and let y be the parent of a leaf z. Our goal is to show that key[y] is 
<br>either&nbsp;&nbsp; the smallest key in T larger than key[x] 
<br>or&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the largest key in the T smaller than key[x]. 
<br>&nbsp;<b> Proof&nbsp;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Suppose that x is a left child of y. Since key[y] &#8805; key[x], only we have to show that there is no node z with key[y] &gt; key[z] &gt; key[x]. Assume, to the contrary, that there is such a z. Choose z so that it holds the smallest key among such nodes. Note for every node u &#8800; z, x, key[z] &#8804; &nbsp;dey[u] if and only if key[x] &#8804; &nbsp;key[u]. If we search key[z], then the search path is identical to that of key[x] until the path rearches z or x. Since x is a leaf (meaning it has no children), the search path never reaches x. Therefore,&nbsp; z is an ancestor of x. Since y is the parent of x (it is given, in case you've forgotton!) and is not z, z has to be an ancestor of y. So, key[y] &gt; dey[z] &gt;dey[x]. However, we are assuming key[y] &gt; key[z] &gt; key[x], so this is clearly impossible. Therefore, there is no such z. 
<br>The case when x is a right child of y is easy. Hint: symmetric. 
	<br><b><b>INSERTION </b></b>
	<br>To insert a node into a BST 
<br>1. find a leaf st the appropriate place and 
<br>2. connect the node to the parent of the leaf.&nbsp; 
<br>&nbsp;<b> TREE-INSERT (T, z) </b>
<br>y  NIL 
<br>x  root [T] 
<br>while x &#8800; NIL do 
<br>y  x 
<br>&nbsp;if key [z] &lt; &nbsp;key[x] 
<br>&nbsp;then x  left[x] 
<br>else x  right[x] 
<br>p[z]  y 
<br>if y = NIL&nbsp;
<br>then root [T]  z 
<br>else if key [z] &lt; key [y] 
<br>then left [y]  z 
<br>&nbsp;&nbsp;else right [y]  z 
<br>&nbsp;Like other primitive operations on search trees, this algorithm begins at the root of the tree and traces a path downward. Clearly, it runs in O(h) time on a tree of height h. 
<br>&nbsp; 
	<br><b><b>Sorting </b></b>
	<br>We can sort a given set of n numbers by first building a binary search tree containing these number by using TREE-INSERT (x) procedure repeatedly to insert the numbers one by one and then printing the numbers by an inorder tree walk. 
	<br><b><b>Analysis </b></b>
	<br><b>Best-case running time </b>
<br>Printing takes O(n) time and n insertion cost O(lg n) each (tree is balanced, half the insertions are at depth lg(n) -1). This gives the best-case running time O(n lg n). 
<br>&nbsp; <b>Worst-case running time </b>
<br>Printing still takes O(n) time and n insertion costing O(n) each (tree is a single chain of nodes) is O(n<sup>2</sup>). The n insertion cost 1, 2, 3, . . . n, which is arithmetic sequence so it is n<sup>2</sup>/2. 
<br>&nbsp; 
	<br><b><b>Deletion </b></b>
	<br>Removing a node from a BST is a bit more complex, since we do not want to create any "holes" in the tree. If the node has one child then the child is spliced to the parent of the node. If the node has two children then its successor has no left child; copy the successor into the node and delete the successor instead TREE-DELETE (T, z) removes the node pointed to by z from the tree T. IT returns a pointer to the node removed so that the node can be put on a free-node list, etc. 
<br>TREE-DELETE (T, z) 
<br>1. if left [z] = NIL &nbsp; &nbsp;.OR. &nbsp; &nbsp; right[z] = NIL 
<br>2. then y  z 
<br>3. &nbsp;else y  TREE-SUCCESSOR (z) 
<br>4. if left [y] &#8800; NIL 
<br>5. then x  left[y] 
<br>6. else x  right [y] 
<br>7. if x &#8800; NIL 
<br>8. then p[x]  p[y] 
<br>9. if p[y] = NIL 
<br>10. &nbsp;then root [T]  x 
<br>11. &nbsp;else if y = left [p[y]] 
<br>12. &nbsp;then left [p[y]]  x 
<br>13. &nbsp;else right [p[y]]  x 
<br>14. if y &#8800; z 
<br>15. &nbsp;&nbsp;&nbsp; then key [z]  key [y] 
<br>16. &nbsp;&nbsp;&nbsp; if y has other field, copy them, too 
<br>17. return y 
<br>&nbsp;The procedure runs in O(h) time on a tree of height h. 
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
	<br><b>Kruskals Algorithm</b>
<br>Discussion forum for Kruskals Algorithm</td>
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
	<br><b>To reply/post a comment you need to login, Use your user name and password to login if you are already </b><b>registered else register here</b> </td>
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_binary-search-tree/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_binary-search-tree/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_binary-search-tree/image3.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_binary-search-tree/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_binary-search-tree/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_binary-search-tree/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_binary-search-tree/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_binary-search-tree/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_binary-search-tree/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_binary-search-tree/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_binary-search-tree/image3.wmf"></sub>
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
