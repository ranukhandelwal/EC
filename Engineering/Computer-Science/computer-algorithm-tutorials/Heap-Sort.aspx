<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Heap-Sort.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Heap_Sort" %>
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
	<b>Heap Sort </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>The binary heap data structures is an array that can be viewed as a complete binary tree. Each node of the binary tree corresponds to an element of the array. The array is completely filled on all levels except possibly lowest. 
<br>&nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image1.gif"></sub> 
<br>&nbsp;We represent heaps in level order, going from left to right. The array corresponding to the heap above is [25, 13, 17, 5, 8, 3]. 
<br>&nbsp;The root of the tree A[1] and given index i of a node, the indices of its parent, left child and right child can be computed 
<br>&nbsp;PARENT (i) 
<br>return floor(i/2) 
<br>LEFT (i) 
<br>return 2i 
<br>RIGHT (i) 
<br>return 2i + 1 
<br>&nbsp;Let's try these out on a heap to make sure we believe they are correct. Take this heap, 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image2.gif"></sub>
<br>which is represented by the array [20, 14, 17, 8, 6, 9, 4, 1]. 
<br>We'll go from the 20 to the 6 first. The index of the 20 is 1. To find the index of the left child, we calculate 1 * 2 = 2. This takes us (correctly) to the 14. Now, we go right, so we calculate 2 * 2 + 1 = 5. This takes us (again, correctly) to the 6. 
<br>Now let's try going from the 4 to the 20. 4's index is 7. We want to go to the parent, so we calculate 7 / 2 = 3, which takes us to the 17. Now, to get 17's parent, we calculate 3 / 2 = 1, which takes us to the 20. 
<br>&nbsp; 
	<br><b><b>Heap Property </b></b>
	<br>In a heap, for every node i other than the root, the value of a node is greater than or equal (at most) to the value of its parent. 
<br>A[PARENT (i)] &#8805; A[i] 
<br>Thus, the largest element in a heap is stored at the root. 
<br>&nbsp;Following is an example of Heap: 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image1.gif"></sub>
<br>&nbsp;By the definition of a heap, all the tree levels are completely filled except possibly for the lowest level, which is filled from the left up to a point. Clearly a heap of height h has the minimum number of elements when it has just one node at the lowest level. The levels above the lowest level form a complete binary tree of height h -1 and 2<sup>h</sup> -1 nodes. Hence the minimum number of nodes possible in a heap of height h is 2<sup>h</sup>. Clearly a heap of height h, has the maximum number of elements when its lowest level is completely filled. In this case the heap is a complete binary tree of height h and hence has 2<sup>h+</sup>1 -1 nodes. 
<br>Following is not a heap, because it only has the heap property - it is not a complete binary tree. Recall that to be complete, a binary tree has to fill up all of its levels with the possible exception of the last one, which must be filled in from the left side. 
<br>&nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image3.gif"></sub> 
<br>&nbsp; 
	<br><b><b>Height of a node </b></b>
	<br>We define the height of a node in a tree to be a number of edges on the longest simple downward path from a node to a leaf. 
<br>&nbsp; 
	<br><b><b>Height of a tree </b></b>
	<br>The number of edges on a simple downward path from a root to a leaf. Note that the height of a tree with n node is lg n which is Θ(lgn). This implies that an n-element heap has height&nbsp; lg n 
<br>In order to show this let the height of the n-element heap be h. From the bounds obtained on maximum and minimum number of elements in a heap, we get 
<br>2<sup>h</sup> &#8804; n &#8804; 2<sup>h+</sup>1-1 
<br>Where n is the number of elements in a heap. 
<br>2<sup>h</sup> &#8804; n &#8804; 2<sup>h+</sup>1 
<br>Taking logarithms to the base 2 
<br>h &#8804; lgn&nbsp; &#8804; &nbsp;h +1 
<br>It follows that h =&nbsp; lgn. 
<br>&nbsp;We known from above that largest element resides in root, A[1]. The natural question to ask is where in a heap might the smallest element resides? Consider any path from root of the tree to a leaf. Because of the heap property, as we follow that path, the elements are either decreasing or staying the same. If it happens to be the case that all elements in the heap are distinct, then the above implies that the smallest is in a leaf of the tree. It could also be that an entire subtree of the heap is the smallest element or indeed that there is only one element in the heap, which in the smallest element, so the smallest element is everywhere. Note that anything below the smallest element must equal the smallest element, so in general, only entire subtrees of the heap can contain the smallest element. 
<br>&nbsp; 
	<br><b><b>Inserting Element in the Heap </b></b>
	<br>&nbsp; Suppose we have a heap as follows 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image2.gif"></sub>
<br>Let's suppose we want to add a node with key 15 to the heap. First, we add the node to the tree at the next spot available at the lowest level of the tree. This is to ensure that the tree remains complete. 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image4.gif"></sub>
<br>&nbsp;Let's suppose we want to add a node with key 15 to the heap. First, we add the node to the tree at the next spot available at the lowest level of the tree. This is to ensure that the tree remains complete. 
<br>&nbsp; <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image5.gif"></sub>
<br>&nbsp; Now we do the same thing again, comparing the new node to its parent. Since 14 &lt; 15, we have to do another swap: 
<br>&nbsp; <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image6.gif"></sub>
<br>&nbsp; Now we are done, because 15 &#8804;&nbsp; 20. 
<br>&nbsp;<b> Four basic procedures on heap are </b>
<br>1. Heapify, which runs in O(lg n) time. 
<br>2. Build-Heap, which runs in linear time. 
<br>3. Heap Sort, which runs in O(n lg n) time. 
<br>4. Extract-Max, which runs in O(lg n) time. 
<br>&nbsp; 
	<br><b><b>Maintaining the Heap Property </b></b>
	<br>Heapify is a procedure for manipulating heap data structures. It is given an array A and index i into the array. The subtree rooted at the children of A[i] are heap but node A[i] itself may possibly violate the heap property i.e., A[i] &lt; A[2i] or A[i] &lt; A[2i +1]. The procedure 'Heapify' manipulates the tree rooted at A[i] so it becomes a heap. In other words, 'Heapify' is let the value at A[i] "float down" in a heap so that subtree rooted at index i becomes a heap. 
<br>&nbsp; 
	<br><b><b>Outline of Procedure Heapify </b></b>
	<br>Heapify picks the largest child key and compare it to the parent key. If parent key is larger than heapify quits, otherwise it swaps the parent key with the largest child key. So that the parent is now becomes larger than its children. 
<br>It is important to note that swap may destroy the heap property of the subtree rooted at the largest child node. If this is the case, Heapify calls itself again using largest child node as the new root. 
<br>&nbsp;<b> Heapify (A, i) </b>
<br>1. l  left [i] 
<br>2. r  right [i] 
<br>3. if l &#8804; heap-size [A] and A[l] &gt; A[i] 
<br>4. then largest  l 
<br>5. else largest  i 
<br>6. if r &#8804; heap-size [A] and A[i] &gt; A[largest] 
<br>7. then largest  r 
<br>8. if largest &nbsp;&#8800; i 
<br>9. then exchange A[i]  A[largest] 
<br>10. &nbsp; Heapify (A, largest) 
<br>&nbsp; 
	<br><b><b>Analysis </b></b>
	<br>If we put a value at root that is less than every value in the left and right subtree, then 'Heapify' will be called recursively until leaf is reached. To make recursive calls traverse the longest path to a leaf, choose value that make 'Heapify' always recurse on the left child. It follows the left branch when left child is greater than or equal to the right child, so putting 0 at the root and 1 at all other nodes, for example, will accomplished this task. With such values 'Heapify' will called h times, where h is the heap height so its running time will be &theta; (h) (since each call does Θ(1) work), which is Θ(lgn). Since we have a case in which Heapify's running time Θ(lg n), its worst-case running time is ohm (lgn). 
<br>&nbsp; 
	<br><b><b>Example of Heapify </b></b>
	<br>&nbsp;Suppose we have a complete binary tree somewhere whose subtrees are heaps. In the following complete binary tree, the subtrees of 6 are heaps: 
<br>&nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image7.gif"></sub> 
<br>The Heapify procedure alters the heap so that the tree rooted at 6's position is a heap. Here's how it works. First, we look at the root of our tree and its two children. 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image8.gif"></sub>
<br>We then determine which of the three nodes is the greatest. If it is the root, we are done, because we have a heap. If not, we exchange the appropriate child with the root, and continue recursively down the tree. In this case, we exchange 6 and 8, and continue. 
<br>&nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image3.gif"></sub> 
<br>&nbsp;Now, 7 is greater than 6, so we exchange them. 
<br>&nbsp; <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image9.gif"></sub>
<br>&nbsp;We are at the bottom of the tree, and can't continue, so we terminate. 
<br>&nbsp; 
	<br><b><b>Building a Heap </b></b>
	<br>We can use the procedure 'Heapify' in a bottom-up fashion to convert an array A[1 . . n] into a heap. Since the elements in the subarray A[n/2 +1 . . n] are all leaves, the procedure BUILD_HEAP goes through the remaining nodes of the tree and runs 'Heapify' on each one. The bottom-up order of processing node guarantees that the subtree rooted at children are heap before 'Heapify' is run at their parent. 
<br>&nbsp;<b> BUILD_HEAP (A) </b>
<br>1. heap-size (A)  length [A] 
<br>2. For i &nbsp; floor(length[A]/2) down to 1 do 
<br>3. Heapify (A, i) 
<br>&nbsp;We can build a heap from an unordered array in linear time. 
<br>&nbsp; 
	<br><b><b>Heap Sort Algorithm </b></b>
	<br>The heap sort combines the best of both merge sort and insertion sort. Like merge sort, the worst case time of heap sort is O(n log n) and like insertion sort, heap sort sorts in-place. The heap sort algorithm starts by using procedure BUILD-HEAP to build a heap on the input array A[1 . . n]. Since the maximum element of the array stored at the root A[1], it can be put into its correct final position by exchanging it with A[n] (the last element in A). If we now discard node n from the heap than the remaining elements can be made into heap. Note that the new element at the root may violate the heap property. All that is needed to restore the heap property. 
<br>&nbsp;<b> HEAPSORT (A) </b>
<br>1. BUILD_HEAP (A) 
<br>2. for i  length (A) down to 2 do exchange A[1]  A[i] heap-size [A]  heap-size [A] - 1 Heapify (A, 1) 
<br>&nbsp;The HEAPSORT procedure takes time O(n lg n), since the call to BUILD_HEAP takes time O(n) and each of the n -1 calls to Heapify takes time O(lg n). 
<br>&nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image10.gif"></sub> 
<br>&nbsp;Now we show that there are at most n/2<sup>h+1</sup> nodes of height h in any n-element heap. We need two observations to show this. The first is&nbsp; that if we consider the set of nodes of height h, they have the property that the subtree rooted at these nodes are disjoint. In other words, we cannot have two nodes of height h with one being an ancestor of the other. The second property is that all subtrees are complete binary trees except for one subtree. Let X<sub>h</sub> be the number of nodes of height h. Since X<sub>h-1</sub> o ft hese subtrees are full, they each contain exactly 2<sup>h+1</sup> -1 nodes. One of the height h subtrees may not&nbsp; full, but contain at least 1 node at its lower level and has at least 2<sup>h</sup> nodes. The exact count is 1+2+4+ . . . + 2<sup>h+1</sup> + 1 = 2<sup>h</sup>. The remaining nodes have height strictly more than h. To connect all subtrees rooted at node of height h., there must be exactly X<sub>h</sub> -1 such nodes. The total of nodes is at least 
<br>(X<sub>h</sub>-1)(2<sup>h+1</sup> + 1) + 2<sup>h</sup> + X<sub>h</sub> -1 which is at most n. 
<br>Simplifying gives 
<br>X<sub>h</sub> &#8804; n/2<sup>h+1</sup> + 1/2. 
<br>&nbsp; In the conclusion, it is a property of binary trees that the number of nodes at any level is half of the total number of nodes up to that level. The number of leaves in a binary heap is equal to n/2, where n is the total number of nodes in the tree, is even and n/2 when n is odd. If these leaves are removed, the number of new leaves will be lg(n/2/2 or n/4. If&nbsp; this process is continued for h levels the number of leaves at that level will be n/2<sup>h+1</sup>. 
<br>&nbsp; 
	<br><b><b>Implementation </b></b>
	<br>void heapSort(int numbers[], int array_size) 
<br>{ 
<br>int i, temp; 
<br>for (i = (array_size / 2)-1; i &gt;= 0; i--) 
<br>siftDown(numbers, i, array_size); 
<br>for (i = array_size-1; i &gt;= 1; i--) 
<br>{ 
<br>temp = numbers[0]; 
<br>numbers[0] = numbers[i]; 
<br>numbers[i] = temp; 
<br>siftDown(numbers, 0, i-1); 
<br>} 
<br>} 
<br>void siftDown(int numbers[], int root, int bottom) 
<br>{ 
<br>int done, maxChild, temp; 
<br>done = 0; 
<br>while ((root*2 &lt;= bottom) &amp;&amp; (!done)) 
<br>{ 
<br>if (root*2 == bottom) 
<br>maxChild = root * 2; 
<br>else if (numbers[root * 2] &gt; numbers[root * 2 + 1]) 
<br>maxChild = root * 2; 
<br>else 
<br>maxChild = root * 2 + 1; 
<br>if (numbers[root] &lt; numbers[maxChild]) 
<br>{ 
<br>temp = numbers[root]; 
<br>numbers[root] = numbers[maxChild]; 
<br>numbers[maxChild] = temp; 
<br>root = maxChild; 
<br>} 
<br>else 
<br>done = 1; 
<br>} 
<br>} 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/heap-sort.aspx"></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Divide &amp; Conquer Algorithms</b>
<br>Discussion forum for Divide &amp; Conquer Algorithms</td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image11.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image12.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_heap-sort/image13.wmf"></sub>
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
