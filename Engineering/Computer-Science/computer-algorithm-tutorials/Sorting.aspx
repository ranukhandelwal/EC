<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Sorting.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Sorting" %>
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
	<b>Sorting</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>The objective of the sorting algorithm is to rearrange the records so that their keys are ordered according to some well-defined ordering rule. 
<br>Problem:&nbsp;&nbsp; Given an array of n real number A[1.. n]. 
<br>Objective: Sort the elements of A in ascending order of their values. 
<br>&nbsp; 
	<br><b><b>Internal Sort </b></b>
	<br>If the file to be sorted will fit into memory or equivalently if it will fit into an array, then the sorting method is called internal. In this method, any record can be accessed easily. 
<br>&nbsp; 
	<br><b><b>External Sort </b></b>
	<br>· Sorting files from tape or disk. 
<br>· In this method, an external sort algorithm must access records sequentially, or at least in the block. 
<br>&nbsp; 
	<br><b><b>Memory Requirement </b></b>
	<br>1. Sort in place and use no extra memory except perhaps for a small stack or table. 
<br>2. Algorithm that use a linked-list representation and so use N extra words of memory for list pointers. 
<br>3. Algorithms that need enough extra memory space to hold another copy of the array to be sorted. 
<br>&nbsp; 
	<br><b><b>Stability </b></b>
	<br>A sorting algorithm is called stable if it is preserves the relative order of equal keys in the file. Most of the simple algorithm are stable, but most of the well-known sophisticated algorithms are not. 
<br>&nbsp;There are two classes of sorting algorithms namely, O(n<sup>2</sup>)-algorithms and O(n log n)-algorithms. O(n<sup>2</sup>)-class&nbsp; includes bubble sort, insertion sort, selection sort and shell sort. O(n log n)-class includes heap sort, merge sort and quick sort. 
<br>&nbsp;<b> O(n</b><b><sup>2</b></sup><b>) Sorting Algorithms </b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_sorting/image1.gif"></sub>
<br><b>O(n log n) Sorting Algorithms </b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_sorting/image2.gif"></sub>
<br>&nbsp; &nbsp; Now we show that comparison-based sorting algorithm has an ohm(n log n) worst-case lower bound on its running time operation in sorting, then this is the best we can do. Note that in a comparison sort, we use only comparisons between elements to gain information about an input sequence &lt;A<sub>1</sub>, a<sub>2</sub>, . . . , a<sub>n</sub>&gt;. That is, given two elements ai and aj we perform one of the tests, a<sub>i</sub> &lt; a<sub>j</sub>, a<sub>i</sub> &#8804; a<sub>j</sub>, a<sub>i</sub> = a<sub>j</sub> and a<sub>i</sub> &#8805; a<sub>j</sub> to determine their relative order. 
<br>Given all of the input elements are distinct (this is not a restriction since we are deriving a lower bound), comparisons of the form a<sub>i</sub> = a<sub>j</sub> are useless, so no comparison of a<sub>j</sub> = a<sub>j</sub> are made. We also note that the comparison a<sub>i</sub> &#8804; &nbsp;a<sub>j</sub> , a<sub>i</sub> &#8805; a<sub>j</sub> and a<sub>i</sub> &lt; a<sub>j</sub> are all equivalent. Therefore we assume that all comparisons have form a<sub>i</sub> &#8805; a<sub>j</sub>. 
<br>&nbsp; 
	<br><b><b>The Decision Tree Model </b></b>
	<br>Each time a sorting algorithm compares two elements a<sub>i</sub> and a<sub>j</sub> , there are two outcomes: "Yes" or "No". Based on the result of this comparison, the sorting algorithm may perform some calculation which we are not interested in and will eventually perform another comparison between two other elements of input sequence, which again will have two outcomes. Therefore, we can represent a comparison-based sorting algorithm with a decision tree T. 
<br>As an example, consider the decision tree for insertion sort operating on given elements a<sub>1</sub>, a<sub>2</sub> and a<sub>3</sub>. There are are 3! = 6 possible permutations of the three input elements, so the decision tree must have at least 6 leaves. 
<br>&nbsp; <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_sorting/image3.gif"></sub>
<br>&nbsp; In general, there are n! possible permutations of the n input elements, so decision tree must have at least n! leaves. 
<br>&nbsp; 
	<br><b><b>A Lower Bound for the Worst Case </b></b>
	<br>The length of the longest path from the root to any of its leaves represents the worst-case number of comparisons the sorting algorithm perform. Consequently, the worst-case number of comparisons corresponds to the height of its tree. A lower bound on the height of the tree is therefore a lower bound on the running time of any comparison sort algorithm. 
<br>&nbsp;Theorem&nbsp;&nbsp;&nbsp; The running time of any comparison-based algorithm for sorting an n-element sequence is ?(n lg n) in the worst case. 
<br>&nbsp;Examples of comparison-based algorithms (in CLR) are insertion sort, selection sort, merge sort, quicksort, heapsort, and treesort. 
<br>&nbsp;Proof&nbsp;&nbsp;&nbsp; Consider a decision tree of height h that sorts n elements. Since there are n! permutation of n elements and the tree must have at least n! leaves. We have 
<br>n! &#8804; 2<sup>h</sup> 
<br>Taking logarithms on both sides 
<br>(lg(n!) &#8804; h 
<br>=> &nbsp; h&nbsp; &#8805; lg(n!) 
<br>&nbsp;Since the lg function is monotonically increasing, from Stirling's approximation we have 
<br>n! &gt; (n/e)n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; where e = 2.71828 . . . 
<br>=> &nbsp; h&nbsp; &#8805;&nbsp; (n/e)<sup>n</sup> &nbsp; which is ohm(n lg n) 
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Þ</b><b> Click here for Bubble Sort details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/bubble-sort.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Þ</b><b> Click here for Insertion Sort details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/insertion-sort.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Þ</b><b> Click here for Selection Sort details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/selection-sort.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>Þ</b><b> Click here for Shell Sort details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/shell-sort.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>Þ</b><b> Click here for Heap Sort details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/heap-sort.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Þ</b><b> Click here for Merge Sort details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/merge-sort.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>Þ</b><b> Click here for Quick Sort details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/quick-sort.aspx"></asp:HyperLink>
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink8" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_sorting/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_sorting/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_sorting/image5.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink9" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_sorting/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_sorting/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_sorting/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_sorting/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_sorting/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_sorting/image5.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_sorting/image5.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_sorting/image5.wmf"></sub>
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
