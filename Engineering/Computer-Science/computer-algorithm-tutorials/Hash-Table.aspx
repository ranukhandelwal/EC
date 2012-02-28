<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Hash-Table.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Hash_Table" %>
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
	<b>Hash Table</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
	<br><b><b>Direct-address table </b></b>
	<br>If the keys are drawn from the reasoning small universe U = {0, 1, . . . , m-1} of keys, a solution is to use a Table T[0, . m-1], indexed by keys. To represent the dynamic set, we use an array, or direct-address table, denoted by T[0 . . m-1], in which each slot corresponds to a key in the universe. 
<br>Following figure illustrates the approach. 
<br>&nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_hash-table/image1.gif"></sub> 
<br>Each key in the universe U i.e., Collection, corresponds to an index in the table T[0 . . m-1]. Using this approach, all three basic operations (dictionary operations) take &theta; (1) in the worst case. 
<br>&nbsp; 
	<br><b><b>Hash Tables </b></b>
	<br>When the size of the universe is much larger the same approach (direct address table) could still work in principle, but the size of the table would make it impractical. A solution is to map the keys onto a small range, using a function called a hash function. The resulting data structure is called hash table. 
<br>With direct addressing, an element with key k is stored in slot k. With hashing =, this same element is stored in slot h(k); that is we use a hash function h to compute the slot from the key. Hash function maps the universe U of keys into the slot of a hash table T[0 . . .m-1]. 
<br>h: U -> {0, 1, . . ., m-1} 
<br>More formally, suppose we want to store a set of size n in a table of size m. The ratio &alpha; = n/m is called a load factor, that is, the average number of elements stored in a Table. Assume we have a hash function h that maps each key k &epsilon;U to an integer name h(k) &epsilon;[0 . . m-1]. The basic idea is to store key k in location T[h(k)]. 
<br>Typical, hash functions generate "random looking" valves. For example, the following function usually works well 
<br>h(k) = k mod m&nbsp; where m is a prime number. 
<br>Is there any point of the hash function? Yes, the point of the hash function is to reduce the range of array indices that need to be handled. 
<br>&nbsp; 
	<br><b><b>Collision </b></b>
	<br>As keys are inserted in the table, it is possible that two keys may hash to the same table slot. If the hash function distributes the elements uniformly over the table, the number of conclusions cannot be too large on the average, but the birthday paradox makes it very likely that there will be at least one collision, even for a lightly loaded table 
<br>&nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_hash-table/image2.gif"></sub> 
<br>&nbsp;A hash function h map the keys k and j to the same slot, so they collide. 
<br>There are two basic methods for handling collisions in a hash table: Chaining and Open addressing. 
<br>&nbsp; 
	<br><b><b>Collision Resolution by Chaining </b></b>
	<br>When there is a collision (keys hash to the same slot), the incoming keys is stored in an overflow area and the corresponding record is appeared at the end of the linked list. 
<br>&nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_hash-table/image3.gif"></sub> 
<br>Each slot T[j] contains a linked list of all the keys whose hash value is j. For example, h(k<sub>1</sub>) = h(k<sub>n</sub>) and h(k<sub>5</sub>) = h(k<sub>2</sub>) = h(k<sub>7</sub>). 
<br>. The worst case running time for insertion is O(1). 
<br>. Deletion of an element x can be accomplished in O(1) time if the lists are doubly linked. 
<br>. In the worst case behavior of chain-hashing, all n keys hash to the same slot, creating a list of length n. The worst-case time for search is thus &theta; (n) plus the time to compute the hash function. 
<br>keys: 5, 28, 19, 15, 20, 33, 12, 17, 10 
<br>slots: 9 
<br>hash function = h(k) = k mod 9 
<br>h(5)&nbsp;&nbsp; =&nbsp;&nbsp;&nbsp; 5 mod 9 = 4 
<br>h(28) =&nbsp; 28 mod 9 = 1 
<br>h(19) = 19 mod&nbsp; 9 = 1 
<br>h(15) =&nbsp; 15 mod 9 = 6 
<br>h(20) =&nbsp; 20 mod 9 = 2 
<br>h(33) =&nbsp; 33 mod 9 = 6 
<br>h(12) =&nbsp; 12mod&nbsp; 9 =&nbsp; 3 
<br>h(17) =&nbsp; 17 mod 9 = 8 
<br>h(10) =&nbsp; 10 mod 9 = 1 
<br>&nbsp;Figure 
<br>A good hash function satisfies the assumption of simple uniform hashing, each element is equally likely to hash into any of the m slots, independently of where any other element has hash to. But usually it is not possible to check this condition because one rarely knows the probability distribution according to which the keys are drawn. 
<br>In practice, we use heuristic techniques to create a hash function that perform well. One good approach is to derive the hash value in a way that is expected to be independent of any patterns that might exist in the data (division method). 
<br>&nbsp;Most hash function assume that the universe of keys is the set of natural numbers. Thus, its keys are not natural to interpret than as natural numbers. 
<br>&nbsp; 
	<br><b><b>Method for Creating Hash Function </b></b>
	<br>&nbsp;The division method. 
<br>1. The multiplication method. 
<br>2. Universal hashing. 
<br>&nbsp; 
	<br><b><b>1. The Division Method </b></b>
	<br>Map a key k into one of m slots by taking the remainder of k divided by m. That is, the hash function is 
<br>h(k) = k mod m. 
<br>Example: 
<br>If table size m = 12 
<br>key k = 100 
<br>than 
<br>&nbsp; h(100) = 100 mod 12 
<br>= 4 
<br>&nbsp; <b>Poor choices of m </b>
<br>m should not be a power of 2, since if m = 2p, then h(k) is just the p lowest-order bits of k. 
<br>So, 2p may be a poor choice, because permuting the characters of k does not change value. 
<br>&nbsp; <b>Good m choice of m </b>
<br>A prime not too close to an exact of 2. 
<br>&nbsp; 
	<br><b><b>2. The Multiplication Method </b></b>
	<br>Two step process 
<br><b>Step 1: </b>
<br>Multiply the key k by a constant 0&lt; A &lt; 1 and extract the fraction part of kA. 
<br><b>Step 2: </b>
<br>Multiply kA by m and take the floor of the result. 
<br>&nbsp; &nbsp; The hash function using multiplication method is: 
<br>h(k) = m(kA mod 1) 
<br>where "kA mod 1" means the fractional part of kA, that is, kA -&nbsp;kA. 
<br>&nbsp;Advantage of this method is that the value of m is not critical and can be implemented on most computers. 
<br>A reasonable value of constant A is 
<br>&#8776 (sqrt5 - 1) /2 
<br>suggested by Knuth's Art of Programming. 
<br>&nbsp; 
	<br><b><b>3. Universal Hashing </b></b>
	<br>Open Addressing 
<br>This is another way to deal with collisions. 
<br>In this technique all elements are stored in the hash table itself. That is, each table entry contains either an element or NIL. When searching for element (or empty slot), we systematically examine slots until we found an element (or empty slot). There are no lists and no elements stored outside the table. That implies that table can completely "fill up"; the load factor ? can never exceed 1.Advantage of this technique is that it avoids pointers (pointers need space too). Instead of chasing pointers, we compute the sequence of slots to be examined. To perform insertion, we successively examine or probe, the hash table until we find an empty slot. The sequence of slots probed "depends upon the key being inserted." To determine which slots to probe, the hash function includes the probe number as a second input. Thus, the hash function becomes 
<br>h: &upsilon;x {0, 1, . . . m -1 }--&gt; {0, 1, . . . , m-1} 
<br>and the probe sequence 
<br>&lt; h(k, 0), h(k, 1), . . . , h(k, m-1) &gt; 
<br>in which every slot is eventually considered. 
<br>&nbsp; 
	<br><b><b>Pseudocode for Insertion </b></b>
	<br>HASH-INSERT (T, k) 
<br>i = 0 
<br>Repeat j &lt;-- h(k, i) 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if Y[j] = NIL 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; then T[j] = k 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return j 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; use i = i +1 
<br>until i = m 
<br>error "table overflow" 
<br>&nbsp; 
	<br><b><b>Pseudocode for Search </b></b>
	<br>HASH-SEARCH (T, k) 
<br>i = 0 
<br>Repeat j &lt;-- h(k, i) 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if T[j] = k 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; then return j 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i = i +1 
<br>until T[j] = NIL or i = m 
<br>Return NIL 
<br>&nbsp; 
	<br><b><b>Pseudocode for Deletion </b></b>
	<br>&nbsp; Following are the three techniques to compute the probe sequences. 
<br>1. Linear probing. 
<br>2. Quadratic probing. 
<br>3. Double hashing. 
<br>&nbsp; These techniques guarantee that 
<br>&lt; h(k, 0), h(k, 1), . . . , h(k, m-1) &gt; 
<br>a permutation of &lt; 0, 1, . . . , m-1&gt; for each key k. 
<br>&nbsp; Uniform hashing required are not met. Since none of these techniques capable of generating more than m2 probe sequences (instead of m!). 
<br>&nbsp; 
	<br><b><b>Uniform Hashing </b></b>
	<br>Each key is equally likely to have any of the m! permutation of &lt; 0, 1, . . . , m-1&gt; as its probe sequence. 
<br>Note that uniform hashing generalizes the notion of simple uniform hashing. 
<br>&nbsp;<b> 1. Linear Probing </b>
<br>This method uses the hash function of the form: 
<br>h(k, i) = (h`(k) + i) mod m&nbsp;&nbsp;&nbsp; for i = 0, 1, 2, . . . , m-1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>where h` is an auxiliary hash function. Linear probing suffers primary clustering problem. 
<br>&nbsp;<b> 2. Quadratic Probing </b>
<br>This method uses the hash function of the form 
<br>h(k, i) = (h`(k) + c<sub>1</sub>i + c<sub>2</sub>i<sup>2</sup>) mod m&nbsp;for i = 0, 1, 2, . . . , m-1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<br>where h` is an auxiliary hash function. C<sub>1</sub> + c<sub>2</sub> &#8800; 0 are auxiliary constants. 
<br>This method works much better than linear probing. 
<br>Quadratic probing suffers a milder form of clustering, called secondary clustering. 
<br>&nbsp;<b> 3. Double Hashing </b>
<br>This method produced the permutation that is very close to random. This method uses a hash function of the form 
<br>h(k, i) = (h, 9k) + ih<sub>2</sub> (k)) mod m 
<br>where h<sub>1</sub> and h<sub>2</sub> are auxiliary hash functions. 
<br>The probe sequence here depends in two ways on the key k, the initial probe position and the offset. 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/hash-table.aspx"></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Minimum Spanning Tree</b>
<br>Discussion forum for Minimum Spanning Tree</td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_hash-table/image4.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_hash-table/image5.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_hash-table/image6.wmf"></sub>
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
