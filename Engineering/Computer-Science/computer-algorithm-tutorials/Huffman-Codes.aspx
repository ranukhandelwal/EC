<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Huffman-Codes.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Huffman_Codes" %>
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
	<b>Huffman's Codes </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Huffman code is a technique for compressing&nbsp; data. Huffman's greedy algorithm look at the occurrence of each character and it as a binary string in an optimal way. 
<br>&nbsp; 
	<br><b><b>Example </b></b>
	<br>Suppose we have a data consists of 100,000 characters that we want to compress. The characters in the data occur with following frequencies. <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>a </td>

      
      <td class="txt">
	<br>b </td>

      
      <td class="txt">
	<br>c </td>

      
      <td class="txt">
	<br>d </td>

      
      <td class="txt">
	<br>r </td>

      
      <td class="txt">
	<br>f</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Frequency 
</td>

      
      <td class="txt">
	<br>45,000 
</td>

      
      <td class="txt">
	<br>13,000 
</td>

      
      <td class="txt">
	<br>12,000 
</td>

      
      <td class="txt">
	<br>16,000 
</td>

      
      <td class="txt">
	<br>9,000 
</td>

      
      <td class="txt">
	<br>5,000
</td>
</tr></table>
<br>Consider the problem of designing a "binary character code" in which each character is represented by a unique binary string. 
<br>&nbsp; 
	<br><b><b>Fixed Length Code </b></b>
	<br>In fixed length code, needs 3 bits to represent six(6) characters. <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>a </td>

      
      <td class="txt">
	<br>b </td>

      
      <td class="txt">
	<br>c </td>

      
      <td class="txt">
	<br>d </td>

      
      <td class="txt">
	<br>e </td>

      
      <td class="txt">
	<br>f </td>
</tr>

    <tr>

      
      <td class="txt">
<br>Frequency 
</td>

      
      <td class="txt">
	<br>45,000 
</td>

      
      <td class="txt">
	<br>13,000 
</td>

      
      <td class="txt">
	<br>12,000 
</td>

      
      <td class="txt">
	<br>16,000 
</td>

      
      <td class="txt">
	<br>9,000 
</td>

      
      <td class="txt">
	<br>5,000
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Fixed Length code 
</td>

      
      <td class="txt">
	<br>000 
</td>

      
      <td class="txt">
	<br>010 
</td>

      
      <td class="txt">
	<br>011 
</td>

      
      <td class="txt">
	<br>100 
</td>

      
      <td class="txt">
	<br>101
</td>

      
      <td class="txt">
	<br>
</td>
</tr></table>
<br>This method require 3000,000 bits to code the entire file. 
<br>How do we get 3000,000? 
<br>· Total number of characters are 45,000 + 13,000 + 12,000 + 16,000 + 9,000 + 5,000 = 1000,000. 
<br>· Add each character is assigned 3-bit codeword =>  3 * 1000,000 = 3000,000 bits. 
<br>&nbsp; 
	<br><b><b>Conclusion </b></b>
	<br>Fixed-length code requires 300,000 bits while variable code requires 224,000 bits. 
<br>=>  Saving of approximately 25%. 
<br>&nbsp; 
	<br><b><b>Prefix Codes </b></b>
	<br>In which no codeword is a prefix of other codeword. The reason prefix codes are desirable is that they simply encoding (compression) and decoding. 
<br>&nbsp;<b> Can we do better? </b>
<br>&nbsp;A variable-length code can do better by giving frequent characters short codewords and infrequent characters long codewords. <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>a </td>

      
      <td class="txt">
	<br>b </td>

      
      <td class="txt">
	<br>c </td>

      
      <td class="txt">
	<br>d </td>

      
      <td class="txt">
	<br>e </td>

      
      <td class="txt">
	<br>f </td>
</tr>

    <tr>

      
      <td class="txt">
<br>Frequency 
</td>

      
      <td class="txt">
	<br>45,000 
</td>

      
      <td class="txt">
	<br>13,000 
</td>

      
      <td class="txt">
	<br>12,000 
</td>

      
      <td class="txt">
	<br>16,000 
</td>

      
      <td class="txt">
	<br>9,000 
</td>

      
      <td class="txt">
	<br>5,000
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Fixed Length code 
</td>

      
      <td class="txt">
	<br>0 
</td>

      
      <td class="txt">
	<br>101 
</td>

      
      <td class="txt">
	<br>100 
</td>

      
      <td class="txt">
	<br>111 
</td>

      
      <td class="txt">
	<br>1101 
</td>

      
      <td class="txt">
	<br>1100
</td>
</tr></table>
<br>Character 'a' are 45,000 
<br>&nbsp;&nbsp; each character 'a' assigned 1 bit codeword. 
<br>&nbsp; 1 * 45,000 = 45,000 bits. 
<br>
<br>&nbsp;Characters (b, c, d) are 13,000 + 12,000 + 16,000 = 41,000 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; each character assigned 3 bit codeword 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3 * 41,000 = 123,000 bits 
<br>
<br>&nbsp;Characters (e, f) are 9,000 + 5,000 = 14,000 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; each character assigned 4 bit codeword. 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4 * 14,000 = 56,000 bits. 
<br>
<br>&nbsp; Implies that the total bits are: 45,000 + 123,000 + 56,000 = 224,000 bits 
<br>&nbsp;<b>Encoding:</b>&nbsp; Concatenate the codewords representing each characters of the file. 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_huffman-codes/image1.gif"></sub>
<br>String&nbsp;&nbsp; Encoding 
<br>TEA&nbsp;&nbsp;&nbsp; 10 00 010 
<br>SEA&nbsp;&nbsp;&nbsp; 011 00 010 
<br>TEN&nbsp;&nbsp;&nbsp; 10 00 110 
<br>&nbsp;Example&nbsp;&nbsp;&nbsp;&nbsp; From variable-length codes table, we code the3-character file abc as: 
<br>&nbsp; <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>a </td>

      
      <td class="txt">
	<br>b </td>

      
      <td class="txt">
	<br>c </td>

      
      <td class="txt">
	<br></td>
</tr>

    <tr>

      
      <td class="txt">
<br>0 
</td>

      
      <td class="txt">
	<br>101 
</td>

      
      <td class="txt">
	<br>100 
</td>

      
      <td class="txt">
	<br>=&gt; 0.101.100 = 0101100 
</td>
</tr></table>
<br><b><b>Decoding&nbsp; </b></b>
	<br>Since no codeword is a prefix of other, the codeword that begins an encoded file is unambiguous. To decode (Translate back to the original character), remove it from the encode file and repeatedly parse. 
<br>For example in "variable-length codeword" table, the string 001011101 parse uniquely as 0.0.101.1101, which is decode to aabe. 
<br>The representation of "decoding process" is binary tree, whose leaves are characters. We interpret the binary codeword for a character as path from the root to that character, where 0 means "go to the left child" and 1 means "go to the right child". Note that an optimal code for a file is always represented by a full (complete) binary tree. 
<br>&nbsp;Theorem&nbsp;&nbsp;&nbsp; &nbsp;A Binary tree that is not full cannot correspond to an optimal prefix code. 
<br>&nbsp;Proof&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Let T be a binary tree corresponds to prefix code such that T is not full. Then there must exist an internal node, say x, such that x has only one child, y. Construct another binary tree, T`, which has save leaves as T and have same depth as T except for the leaves which are in the subtree rooted at y in T. These leaves will have depth in T`, which implies T cannot correspond to an optimal prefix code. 
<br>To obtain T`, simply merge x and y into a single node, z is a child of parent of x (if a parent exists) and z is a parent to any children of y. Then T` has the desired properties: it corresponds to a code on the same alphabet as the code which are obtained, in the subtree rooted at y in T have depth in T` strictly less (by one) than their depth in T. 
<br>This completes the proof. 
<br>&nbsp; <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>a </td>

      
      <td class="txt">
	<br>b </td>

      
      <td class="txt">
	<br>c </td>

      
      <td class="txt">
	<br>d &nbsp; </td>

      
      <td class="txt">
	<br>e </td>

      
      <td class="txt">
	<br>f </td>
</tr>

    <tr>

      
      <td class="txt">
<br>Frequency 
</td>

      
      <td class="txt">
	<br>45000 
</td>

      
      <td class="txt">
	<br>13000 
</td>

      
      <td class="txt">
	<br>12000 
</td>

      
      <td class="txt">
	<br>16000 
</td>

      
      <td class="txt">
	<br>9000 
</td>

      
      <td class="txt">
	<br>5000
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Fixed Length code 
</td>

      
      <td class="txt">
	<br>000 
</td>

      
      <td class="txt">
	<br>001 
</td>

      
      <td class="txt">
	<br>010 
</td>

      
      <td class="txt">
	<br>011 
</td>

      
      <td class="txt">
	<br>100 
</td>

      
      <td class="txt">
	<br>101 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Variable-length code 
</td>

      
      <td class="txt">
	<br>0 
</td>

      
      <td class="txt">
	<br>101 
</td>

      
      <td class="txt">
	<br>100 
</td>

      
      <td class="txt">
	<br>111 
</td>

      
      <td class="txt">
	<br>1101 
</td>

      
      <td class="txt">
	<br>1100 
</td>
</tr></table>
<br>Fixed-length code is not optimal since binary tree is not full. 
<br>Figure 
<br>&nbsp;Optimal prefix code because tree is full binary 
<br>Figure 
<br>&nbsp; 
	<br><b><b>From now on consider only full binary tree </b></b>
	<br>If C is the alphabet from which characters are drawn, then the tree for an optimal prefix code has exactly |c| leaves (one for each letter) and exactly |c|-1 internal orders. Given a tree T corresponding to the prefix code, compute the number of bits required to encode a file. For each character c in C, let f(c) be the frequency of c and let d<sub>T</sub>(c) denote the depth of c's leaf. Note that d<sub>T</sub>(c) is also the length of codeword. The number of bits to encode a file is 
<br>B (T) = S f(c) d<sub>T</sub>(c) 
<br>which define as the cost of the tree T. 
<br>For example, the cost of the above tree is 
<br>B (T) = S f(c) d<sub>T</sub>(c) 
<br>&nbsp;&nbsp;&nbsp;= 45*1 +13*3 + 12*3 + 16*3 + 9*4 +5*4 
<br>= 224 
<br>Therefore, the cost of the tree corresponding to the optimal prefix code is 224 (224*1000 = 224000). 
<br>&nbsp; 
	<br><b><b>Constructing a Huffman code </b></b>
	<br>A greedy algorithm that constructs an optimal prefix code called a Huffman code. The algorithm builds the tree T corresponding to the optimal code in a bottom-up manner. It begins with a set of |c| leaves and perform |c|-1 "merging" operations to create the final tree. 
<br>Data Structure used: Priority queue = Q 
<br>Huffman (c) 
<br>n = |c| 
<br>Q = c 
<br>for&nbsp; i =1&nbsp; to&nbsp;&nbsp; n-1 
<br>&nbsp;do&nbsp;&nbsp; z = Allocate-Node ()
<br>x = left[z] = EXTRACT_MIN(Q) 
<br>&nbsp;&nbsp;y = right[z] = EXTRACT_MIN(Q) 
<br>f[z] = f[x] + f[y] 
<br>&nbsp;INSERT (Q, z) 
<br>return EXTRACT_MIN(Q) 
<br>&nbsp;<b> Analysis </b>
<br>· Q implemented as a binary heap. 
<br>· line 2 can be performed by using BUILD-HEAP (P. 145; CLR) in O(n) time. 
<br>· FOR loop executed |n| - 1 times and since each heap operation requires O(lg n) time. =>  the FOR loop contributes (|n| - 1) O(lg n) =>  O(n lg n) 
<br>· Thus the total running time of Huffman on the set of n characters is O(nlg n). 
<br>&nbsp; 
	<br><b><b>Operation of the Algorithm </b></b>
	<br>&nbsp;An optimal Huffman code for the following set of frequencies 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a:1&nbsp;&nbsp;&nbsp; b:1&nbsp;&nbsp;&nbsp; c:2&nbsp;&nbsp;&nbsp; d:3&nbsp;&nbsp;&nbsp; e:5&nbsp;&nbsp;&nbsp; g:13&nbsp;&nbsp;&nbsp; h:2 
<br>Note that the frequencies are based on Fibonacci numbers. 
<br>Since there are letters in the alphabet, the initial queue size is n = 8, and 7 merge steps are required to build the tree. The final tree represents the optimal prefix code. 
<br>Figure 
<br>The codeword for a letter is the sequence of the edge labels on the path from the root to the letter. Thus, the optimal Huffman code is as follows: <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>h: </td>

      
      <td class="txt">
	<br>1 </td>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>&nbsp; </td>
</tr>

    <tr>

      
      <td class="txt">
<br>g: 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>0 
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>f: 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>0 
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>e: 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>0 
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>d: 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>0 
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>c: 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>0 
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>b: 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>0 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>a: 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>1
</td>
</tr></table>
<br>As we can see the tree is one long limb with leaves n=hanging off. This is true for Fibonacci weights in general, because the Fibonacci the recurrence is 
<br>&nbsp;&nbsp;F<sub>i+1</sub> + F<sub>i</sub> + F<sub>i-1</sub> implies that <sub>i</sub> F<sub>i</sub> = F<sub>i+2</sub> - 1. 
<br>&nbsp;To prove this, write F<sub>j</sub> as F<sub>j+1</sub> - F<sub>j-1</sub> and sum from 0 to i, that is, F<sub>-1</sub> = 0. 
<br>&nbsp; 
	<br><b><b>Correctness of Huffman Code Algorithm </b></b>
	<br><b>Proof Idea </b>
<br>Step 1: Show that this problem satisfies the greedy choice property, that is, if a greedy choice is made by Huffman's algorithm, an optimal solution remains possible. 
<br>Step 2: Show that this problem has an optimal substructure property, that is, an optimal solution to Huffman's algorithm contains optimal solution to subproblems. 
<br>Step 3: Conclude correctness of Huffman's algorithm using step 1 and step 2. 
<br>&nbsp;<b> Lemma - Greedy Choice Property&nbsp;</b> Let c be an alphabet in which each character c has frequency f[c]. Let x and y be two characters in C having the lowest frequencies. Then there exists an optimal prefix code for C in which the codewords for x and y have the same length and differ only in the last bit. 
<br>&nbsp;<b> Proof Idea&nbsp;&nbsp;&nbsp; </b>
<br>&nbsp;Take the tree T representing optimal prefix code and transform T into a tree T` representing another optimal prefix code such that the x characters x and y appear as sibling leaves of maximum depth in T`. If we can do this, then their codewords will have same length and differ only in the last bit. 
<br>Figures 
<br>&nbsp;<b> Proof </b>
<br>&nbsp; Let characters b and c are sibling leaves of maximum depth in tree T. Without loss of generality assume that f[b]&nbsp; &#8805;&nbsp; f[c] and f[x] &#8804;&nbsp; f[y]. Since f[x] and f[y] are lowest leaf frequencies in order and f[b] and f[c] are arbitrary frequencies in order. We have f[x] &#8804;&nbsp; f[b] and f[y] &#8804;&nbsp; f[c]. As shown in the above figure, exchange the positions of leaves to get first T` and then T``. By formula, B(t) = &nbsp;<sub>c in c </sub>f(c)d<sub>T</sub>(c), the difference in cost between T and T` is 
<br>B(T) - B(T`) = f[x]d<sub>T</sub>(x) + f(b)d<sub>T</sub>(b) - [f[x]d<sub>T</sub>(x) + f[b]d<sub>T</sub>`(b) 
<br>&nbsp;&nbsp;= (f[b] - f[x]) (d<sub>T</sub>(b) - d<sub>T</sub>(x)) 
<br>&nbsp;&nbsp;= (non-negative)(non-negative) &#8805; 0 
<br>&nbsp; 
	<br><b><b>Two Important Points </b></b>
	<br>The reason f[b] - f[x] is non-negative because x is a minimum frequency leaf in tree T and the reason d<sub>T</sub>(b) - d<sub>T</sub>(x) is non-negative that b is a leaf of maximum depth in T. 
<br>Similarly, exchanging y and c does not increase the cost which implies that B(T) - B(T`) &#8805; 0. This fact in turn implies that B(T) &#8804; B(T`), and since T is optimal by supposition, which implies&nbsp; B(T`) = B(T). Therefore, T`` is optimal in which x and y are sibling leaves of maximum depth, from which greedy choice property follows. This complete the proof. 
<br>&nbsp;<b> Lemma - Optimal Substructure Property</b> &nbsp; Let T be a full binary tree representing an optimal prefix code over an alphabet C, where frequency f[c] is define for each character c belongs to set C. Consider any two characters x and y that appear as sibling leaves in the tree T and let z be their parent. Then, considering character z with frequency f[z] = f[x] + f[y], tree T` = T - {x, y} represents an optimal code for the alphabet C` = C - {x, y}U{z}. 
<br>&nbsp;<b> Proof Idea </b>
<br>Figure 
<br>&nbsp;<b> Proof </b>
<br>&nbsp; We show that the cost B(T) of tree T can be expressed in terms of the cost B(T`). By considering the component costs in equation, B(T) =&nbsp; f(c)d<sub>T</sub>(c), we show that the cost B(T) of tree T can be expressed in terms of the cost B(T`) of the tree T`. For each c belongs to C - {x, y}, we have d<sub>T</sub>(c) = d<sub>T</sub>(c) 
<br>&nbsp;<sub>cinC</sub> f[c]d<sub>t</sub>(c) = S<sub>cinC-{x,y}</sub> f[c]d<sub>T</sub>`(c) &nbsp;= f[x](d<sub>T</sub>` (z) + 1 + f[y] (d<sub>T</sub>`(z) +1) &nbsp;= (f[x] + f[y]) d<sub>T</sub>`(z) + f[x] + f[y] And&nbsp;&nbsp;&nbsp;&nbsp; B(T) = B(T`) + f(x) + f(y) 
<br>&nbsp;If T` is non-optimal prefix code for C`, then there exists a T`` whose leaves are the characters belongs to C` such that B(T``) &lt; B(T`). Now, if x and y are added to T`` as a children of z, then we get a prefix code for alphabet C with cost B(T``) + f[x] + f[y] &lt; B(T), Contradicting the optimality of T. Which implies that, tree T` must be optimal for the alphabet C. 
<br><b>&nbsp;Theorem </b>&nbsp;Procedure HUFFMAN produces an optimal prefix code. 
<br><b>&nbsp;Proof </b>
<br>&nbsp; Let S be the set of integers n &#8805; 2 for which the Huffman procedure produces a tree of representing optimal prefix code for frequency f and alphabet C with |c| = n. 
<br>If C = {x, y}, then Huffman produces one of the following optimal trees. 
<br>figure 
<br>This clearly shows 2 is a member of&nbsp; S. Next assume that n belongs to S and show that (n+1) also belong to S. 
<br>Let C is an alphabet with |c| = n + 1. By lemma 'greedy choice property', there exists an optimal code tree T for alphabet C. Without loss of generality, if x and y are characters with minimal frequencies then 
<br>&nbsp;&nbsp;&nbsp; a. x and y are at maximal depth in tree T and b. and y have a common parent z. Suppose that T` = T - {x,y} and C` = C - {x,y}U{z} then by lemma-optimal substructure property (step 2), tree T` is an optimal code tree for C`. Since |C`| = n and n belongs to S, the Huffman code procedure produces an optimal code tree T* for C`. Now let T** be the tree obtained from T* by attaching x and y as leaves to z. Without loss of generality, T** is the tree constructed for C by the Huffman procedure. Now suppose Huffman selects a and b from alphabet C in first step so that f[a] not equal f[x] and f[b] = f[y]. Then tree C constructed by Huffman can be altered as in proof of lemma-greedy-choice-property to give equivalent tree with a and y siblings with maximum depth. Since T` and T* are both optimal for C`, implies that B(T`) = B(T*) and also B(T**) = B(T) why? because 
<br>B(T**) = B(T*) - f[z]d<sub>T*</sub>(z) + [f[x] + f[y]] (d<sub>T*</sub>(z) + 1)] &nbsp;= B(T*)&nbsp; + f[x] + f[y] 
<br>Since tree T is optimal for alphabet C, so is T** . And T** is the tree constructed by the Huffman code. 
<br>And this completes the proof. 
<br>&nbsp;<b> Theorem&nbsp;&nbsp;</b>&nbsp; &nbsp;The total cost of a tree for a code can be computed as the sum, over all internal nodes, of the combined frequencies of the two children of the node. 
<br>&nbsp;<b> Proof </b>
<br>Let tree be a full binary tree with n leaves. Apply induction hypothesis on the number of leaves in T. When n=2 (the case n=1 is trivially true), there are two leaves x and y (say) with the same parent z, then the cost of T is 
<br>B(T) = f(x)d<sub>T</sub>(x) + f[y]d<sub>T</sub>(y) 
<br>&nbsp;= f[x] + f[y]&nbsp;&nbsp; since d<sub>T</sub>(x) = d<sub>t</sub>(y) =1 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = f[child<sub>1</sub> of z] + f[child<sub>2</sub> of z]. 
<br>Thus, the statement of theorem is true. Now suppose n&gt;2 and also suppose that theorem is true for trees on n-1 leaves. 
<br>Let c<sub>1</sub> and c<sub>2</sub> are two sibling leaves in T such that they have the same parent p. Letting T` be the tree obtained by deleting c<sub>1</sub> and c<sub>2</sub>, we know by induction that 
<br>B(T) = &nbsp;<sub>leaves l` in T`</sub> f[l`]d<sub>T</sub>(l`) &nbsp; =&nbsp; <sub>internal nodes i` in T`</sub> f[child<sub>1</sub>of i`] + f [child<sub>2</sub> of&nbsp; i`] 
<br>Using this information, calculates the cost of T. 
<br>B(T) =&nbsp; <sub>leaves l in T</sub> f[l]d<sub>T</sub>(l) 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = <sub>l not= c1, c2</sub>&nbsp; f[l]d<sub>T</sub>(l) + f[c<sub>1</sub>]d<sub>T</sub> (c<sub>1</sub>) -1) + f[c<sub>2</sub>]d<sub>T</sub> (c<sub>2</sub>) -1) + f[c<sub>1</sub>]+ f[c<sub>2</sub>] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = <sub>leaves l` in T`</sub> f[l]d<sub>T</sub>`(l) + f[c<sub>1</sub>]+ f[c<sub>2</sub>] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &nbsp;<sub>internal nodes i` in T`</sub>&nbsp; f[child<sub>1</sub>of i`] + f [child<sub>2</sub> of&nbsp; i`] + f[c<sub>1</sub>]+ f[c<sub>2</sub>] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &nbsp;<sub>internal nodes i in T</sub> f[child<sub>1</sub>of i] + f[child<sub>1</sub>of i] 
<br>Thus the statement is true. And this completes the proof. 
<br>&nbsp;The question is whether Huffman's algorithm can be generalize to handle ternary codewords, that is codewords using the symbols 0,1 and 2. Restate the question, whether or not some generalized version of Huffman's algorithm yields optimal ternary codes? Basically, the algorithm is similar to the binary code example given in the CLR-text book. That is, pick up three nodes (not two) which have the least frequency and form a new node with frequency equal to the summation of these three frequencies. Then repeat the procedure. However, when the number of nodes is an even number, a full ternary tree is not possible. So take care of this by inserting a null node with zero frequency. 
<br>&nbsp; 
	<br><b><b>Correctness&nbsp;&nbsp;&nbsp; </b></b>
	<br>Proof is immediate from the greedy choice property and an optimal substructure property. In other words, the proof is similar to the correctness proof of Huffman's algorithm in the CLR. 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/huffman-codes.aspx"></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Knapsack Problem</b>
<br>Discussion forum for Knapsack Problem</td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_huffman-codes/image2.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_huffman-codes/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_huffman-codes/image4.wmf"></sub>
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
