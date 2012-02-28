<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Quick-Sort.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Quick_Sort" %>
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
	<b>Quick Sort</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>The basic version of quick sort algorithm was invented by C. A. R. Hoare in 1960 and formally introduced quick sort in 1962.&nbsp; It is used on the principle of divide-and-conquer. Quick sort is an algorithm of choice in many situations because it is not difficult to implement, it is a good "general purpose" sort and it consumes relatively fewer resources during execution. 
<br>&nbsp; <b>Good points </b>
<br>· It is in-place since it uses only a small auxiliary stack. 
<br>· It requires only n log(n) time to sort n items. 
<br>· It has an extremely short inner loop 
<br>· This algorithm has been subjected to a thorough mathematical analysis, a very precise statement can be made about performance issues. 
<br><b>Bad Points </b>
<br>· It is recursive. Especially if recursion is not available, the implementation is extremely complicated. 
<br>· It requires quadratic (i.e., n<sup>2</sup>) time in the worst-case. 
<br>· It is fragile i.e., a simple mistake in the implementation can go unnoticed and cause it to perform badly. 
<br>&nbsp;Quick sort works by partitioning a given array A[p . . r] into two non-empty sub array A[p . . q] and A[q+1 . . r] such that every key in A[p . . q] is less than or equal to every key in A[q+1 . . r]. Then the two subarrays are sorted by recursive calls to Quick sort. The exact position of the partition depends on the given array and index q is computed as a part of the partitioning procedure. 
<br>&nbsp;<b> QuickSort </b>
<br>1. If p &lt; r then 
<br>2. q Partition (A, p, r) 
<br>3. &nbsp; Recursive call to Quick Sort (A, p, q) 
<br>4. &nbsp; Recursive call to Quick Sort (A, q + r, r) 
<br>&nbsp;Note that to sort entire array, the initial call Quick Sort (A, 1, length[A]) 
<br>&nbsp;As a first step, Quick Sort chooses as pivot one of the items in the array to be sorted. Then array is then partitioned on either side of the pivot. Elements that are less than or equal to pivot will move toward the left and elements that are greater than or equal to pivot will move toward the right. 
<br>&nbsp; 
	<br><b><b>Partitioning the Array </b></b>
	<br>Partitioning procedure rearranges the subarrays in-place. 
<br>&nbsp;<b> PARTITION (A, p, r) </b>
<br>1. x  A[p] 
<br>2. i  p-1 
<br>3. j  r+1 
<br>4. while TRUE do 
<br>5. Repeat j  j-1 
<br>6. until A[j] &#8804; x 
<br>7. Repeat i  i+1 
<br>8. until A[i] &#8805; x 
<br>9. if i &lt; j 
<br>10. then exchange A[i]  A[j] 
<br>11. else return j 
<br>&nbsp; Partition selects the first key, A[p] as a pivot key about which the array will partitioned: 
<br>Keys &#8804;&nbsp; A[p] will be moved towards the left . 
<br>Keys &#8805; A[p] will be moved towards the right. 
<br>&nbsp;The running time of the partition procedure is Θ(n) where n = r - p +1 which is the number of keys in the array. 
<br>Another argument that running&nbsp; time of PARTITION on a subarray of size Θ(n) is as follows: Pointer i and pointer j start at each end and move towards each other, conveying somewhere in the middle. The total number of times that i can be incremented and j can be decremented is therefore O(n). Associated with each increment or decrement there are O(1) comparisons and swaps. Hence, the total time is O(n). 
<br>&nbsp; 
	<br><b><b>Array of Same Elements </b></b>
	<br>Since all the elements are equal, the "less than or equal" teat in lines 6 and 8 in the PARTITION (A, p, r) will always be true. this simply means that repeat loop all stop at once. Intuitively, the first repeat loop moves j to the left; the second repeat loop moves i to the right. In this case, when all elements are equal, each repeat loop moves i and j towards the middle one space. They meet in the middle, so q= Floor(p+r/2). Therefore, when all elements in the array A[p . . r] have the same value equal to Floor(p+r/2). 
<br>&nbsp; 
	<br><b><b>Performance of Quick Sort </b></b>
	<br>The running time of quick sort depends on whether partition is balanced or unbalanced, which in turn depends on which elements of an array to be sorted are used for partitioning. 
<br>A very good partition splits an array up into two equal sized arrays. A bad partition, on other hand, splits an array up into two arrays of very different sizes. The worst partition puts only one element in one array and all other elements in the other array. If the partitioning is balanced, the Quick sort runs asymptotically as fast as merge sort. On the other hand, if partitioning is unbalanced, the Quick sort runs asymptotically as slow as insertion sort. 
<br>&nbsp; 
	<br><b><b>Best Case </b></b>
	<br>The best thing that could happen in Quick sort would be that each partitioning stage divides the array exactly in half. In other words, the best to be a median of the keys in A[p . . r] every time procedure 'Partition' is called. The procedure 'Partition' always split the array to be sorted into two equal sized arrays. 
<br>If the procedure 'Partition' produces two regions of size n/2. the recurrence relation is then 
<br>T(n) = T(n/2) + T(n/2) + Θ(n) 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= 2T(n/2) + Θ(n) 
<br>And from case 2 of Master theorem 
<br>T(n) = Θ(n lg n) 
<br>&nbsp; 
	<br><b><b>Worst case Partitioning </b></b>
	<br>The worst-case occurs if given array A[1 . . n] is already sorted. The PARTITION (A, p, r) call always return p so successive calls to partition will split arrays of length n, n-1, n-2, . . . , 2 and running time proportional to n + (n-1) + (n-2) + . . . + 2 = [(n+2)(n-1)]/2 = Θ(n<sup>2</sup>). The worst-case also occurs if A[1 . . n] starts out in reverse order. 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_quick-sort/image1.gif"></sub>
	<br><b><b>Randomized Quick Sort </b></b>
	<br>In the randomized version of Quick sort we impose a distribution on input. This does not improve the worst-case running time independent of the input ordering. 
<br>In this version we choose a random key for the pivot. Assume that procedure Random (a, b) returns a random integer in the range [a, b); there are b-a+1 integers in the range and procedure is equally likely to return one of them. The new partition procedure, simply implemented the swap before actually partitioning. 
<br>&nbsp;<b> RANDOMIZED_PARTITION (A, p, r) </b>
<br>i  RANDOM (p, r) 
<br>Exchange A[p]  A[i] 
<br>return PARTITION (A, p, r) 
<br>Now randomized quick sort call the above procedure in place of PARTITION 
<br>&nbsp;<b> RANDOMIZED_QUICKSORT (A, p, r) </b>
<br>If p &lt; r then 
<br>q  RANDOMIZED_PARTITION (A, p, r) 
<br>&nbsp;RANDOMIZED_QUICKSORT (A, p, q) 
<br>RANDOMIZED_QUICKSORT (A, q+1, r) 
<br>&nbsp;Like other randomized algorithms, RANDOMIZED_QUICKSORT has the property that no particular input elicits its worst-case behavior; the behavior of algorithm only depends on the random-number generator. Even intentionally, we cannot produce a bad input for RANDOMIZED_QUICKSORT unless we can predict generator will produce next. 
<br>&nbsp; 
	<br><b><b>Analysis of Quick sort </b></b>
	<br>&nbsp;<b> Worst-case </b>
<br>Let T(n) be the worst-case time for QUICK SORT on input size n. We have a recurrence 
<br>T(n) = max<sub>1</sub><sub>&#8804;</sub><sub>q</sub><sub>&#8804;</sub><sub>n-1</sub> (T(q) + T(n-q)) + Θ(n)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------- 1 
<br>where q runs from 1 to n-1, since the partition produces two regions, each having size at least 1. 
<br>Now we guess that T(n) &#8804; cn<sup>2</sup> for some constant c. 
<br>Substituting our guess in equation 1.We get 
<br>&nbsp;&nbsp;&nbsp; T(n) = max<sub>1</sub><sub>&#8804;</sub><sub>q</sub><sub>&#8804;</sub><sub>n-1</sub> (cq<sup>2</sup> ) + c(n - q<sup>2</sup>)) + Θ(n) 
<br>&nbsp;&nbsp; = c max (q<sup>2</sup> + (n - q)<sup>2</sup>) +&nbsp; Θ(n) 
<br>Since the second derivative of expression q<sup>2</sup> + (n-q)<sup>2</sup>&nbsp; with respect to q is positive. Therefore, expression achieves a maximum over the range 1&#8804; q&nbsp; &#8804; n -1 at one of the endpoints. This gives the bound max (q<sup>2</sup> + (n - q)<sup>2</sup>)) 1 + (n -1)<sup>2</sup> = n<sup>2</sup> + 2(n -1). 
<br>Continuing with our bounding of T(n) we get 
<br>&nbsp;&nbsp;&nbsp; T(n) &#8804; c [n<sup>2</sup> - 2(n-1)] + Θ(n) &nbsp;&nbsp;&nbsp; = cn<sup>2</sup> - 2c(n-1) + Θ(n) 
<br>Since we can pick the constant so that the 2c(n -1) term dominates the Θ(n) term we have 
<br>&nbsp;&nbsp;&nbsp;&nbsp; T(n)&nbsp; &#8804; &nbsp;cn<sup>2</sup> 
<br>Thus the worst-case running time of quick sort is Θ(n<sup>2</sup>). 
<br>&nbsp;<b> Average-case Analysis </b>
<br>If the split induced by RANDOMIZED_PARTITION puts constant fraction of elements on one side of the partition, then the recurrence tree has depth Θ(lgn) and Θ(n) work is performed at Θ(lg n) of these level. This is an intuitive argument why the average-case running time of&nbsp; RANDOMIZED_QUICKSORT is Θ(n lg n). 
<br>Let T(n) denotes the average time required to sort an array of n elements. A call to RANDOMIZED_QUICKSORT with a 1 element array takes a constant time, so we have T(1) =&nbsp; Θ(1). 
<br>After the split RANDOMIZED_QUICKSORT calls itself to sort two subarrays. The average time to sort an array A[1 . . q] is T[q] and the average time to sort an array A[q+1 . . n] is T[n-q]. We have 
<br>T(n) = 1/n (T(1) + T(n-1) + <sup>n-1</sup><sub>q=1</sub> T(q) + T(n-q))) + Θ(n)&nbsp;&nbsp;&nbsp; ----- 1 
<br>We know from worst-case analysis 
<br>T(1) =&nbsp; Θ(1) and T(n -1) = O(n<sup>2</sup>) 
<br>T(n) = 1/n (Θ(1) + O(n<sup>2</sup>)) + 1/n <sup>n-1</sup><sub>q=1</sub> (r(q) + T(n - q)) + Θ(n) 
<br>&nbsp; = 1/n <sup>n-1</sup><sub>q=1</sub>(T(q) + T(n - q)) + Θ(n)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ------- 2 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 1/n[2&nbsp;<sup> n-1</sup><sub>k=1</sub>(T(k)] + Θ(n) 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 2/n<sup> n-1</sup><sub>k=1</sub>(T(k) + Θ(n)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--------- 3 
<br>Solve the above recurrence using substitution method. Assume inductively that T(n) &#8804; anlgn + b for some constants a &gt; 0 and b &gt; 0. 
<br>If we can pick 'a' and 'b' large enough so that n lg n + b &gt; T(1). Then for n &gt; 1, we have 
<br>T(n) &#8805; <sup>n-1</sup><sub>k=1</sub> 2/n (aklgk + b) + Θ(n) 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 2a/n <sup>n-1</sup><sub>k=1</sub> klgk - 1/8(n<sup>2</sup>) +&nbsp; 2b/n (n -1) + Θ(n)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;------- 4 
<br>At this point we are claiming that 
<br><sup>n-1</sup><sub>k=1</sub> klgk&nbsp; &#8804;&nbsp; 1/2 n<sup>2</sup> lgn - 1/8(n<sup>2</sup>) 
<br>Stick this claim in the equation 4 above and we get 
<br>T(n) &nbsp;&#8804;&nbsp; &nbsp;2a/n [1/2 n<sup>2</sup>&nbsp; lgn - 1/8(n<sup>2</sup>)] + 2/n b(n -1) + Θ(n) &nbsp;&#8804;&nbsp; anlgn - an/4 + 2b + Θ(n)&nbsp;&nbsp;&nbsp;&nbsp;---------- 5 
<br>In the above equation, we see that Θ(n) + b and an/4 are polynomials and we certainly can choose 'a' large enough so that an/4 dominates Θ(n)&nbsp; + b. 
<br>We conclude that QUICKSORT's average running time is Θ(n lg(n)). 
<br>&nbsp; 
	<br><b><b>&nbsp;Conclusion </b></b>
	<br>Quick sort is an in place sorting algorithm whose worst-case running time is Θ(n<sup>2</sup>) and expected running time is Θ(n lg n) where constants hidden in Θ(n lg n) are small. 
<br>&nbsp; 
	<br><b><b>Implementation </b></b>
	<br>void quickSort(int numbers[], int array_size) 
<br>{ 
<br>q_sort(numbers, 0, array_size - 1); 
<br>} 
<br>void q_sort(int numbers[], int left, int right) 
<br>{ 
<br>int pivot, l_hold, r_hold; 
<br>l_hold = left; 
<br>r_hold = right; 
<br>pivot = numbers[left]; 
<br>while (left &lt; right) 
<br>{ 
<br>while ((numbers[right] &gt;= pivot) &amp;&amp; (left &lt; right)) 
<br>right--; 
<br>if (left != right) 
<br>{ 
<br>numbers[left] = numbers[right]; 
<br>left++; 
<br>} 
<br>while ((numbers[left] &lt;= pivot) &amp;&amp; (left &lt; right)) 
<br>left++; 
<br>if (left != right) 
<br>{ 
<br>numbers[right] = numbers[left]; 
<br>right--; 
<br>} 
<br>} 
<br>numbers[left] = pivot; 
<br>pivot = left; 
<br>left = l_hold; 
<br>right = r_hold; 
<br>if (left &lt; pivot) 
<br>q_sort(numbers, left, pivot-1); 
<br>if (right &gt; pivot) 
<br>q_sort(numbers, pivot+1, right); 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/quick-sort.aspx"></asp:HyperLink></td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_quick-sort/image2.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_quick-sort/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_quick-sort/image4.wmf"></sub>
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
