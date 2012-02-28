<%@ Page Language="C#" MasterPageFile="~/Masters/dsolinks.master" AutoEventWireup="True" CodeBehind="Determining_the_Efficiency_of_an_Algorithm_Big_O_Notation.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Determining_the_Efficiency_of_an_Algorithm_Big_O_Notation" %>
<%@ MasterType VirtualPath="~/Masters/dsolinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>The big O notation: Order of growth of an algorithm</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Big O Notations </b>
<br>The order of growth of an algorithm is defined by using the big O notation. The big O notation has been accepted as a fundamental technique for describing the efficiency of an algorithm. 
<br>The following table lists some possible orders of growth, and their corresponding big O notations. <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>Order of Growth </td>

      
      <td class="txt">
	<br>Big O notation </td>
</tr>

    <tr>

      
      <td class="txt">
<br>Constant 
</td>

      
      <td class="txt">
	<br>O(1) 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Logarithmic 
</td>

      
      <td class="txt">
	<br>O(log n ) 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Linear 
</td>

      
      <td class="txt">
	<br>O(n) 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Loglinear 
</td>

      
      <td class="txt">
	<br>O(n log n ) 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Quadratic 
</td>

      
      <td class="txt">
	<br>O(n<sup>2</sup>) 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Cubic 
</td>

      
      <td class="txt">
	<br>O(n<sup>3</sup>) 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Exponential 
</td>

      
      <td class="txt">
	<br>O(2<sup>n</sup>), O(10<sup>n</sup>) 
</td>
</tr></table>
<br>
<br>If an algorithm has a linear order of growth, the algorithm is said to be of the order O(n). Similarly, if an algorithm has a quadratic order of growth, the algorithm is said to be of the order O(n<sup>2</sup>). 
<br>
<br>
<br>
<br><b>Selecting an Efficient Algorithm </b>
<br>Now that you know how the efficiency of a particular algorithm is determined, let us see how this knowledge can be used to select an efficient algorithm. According to their orders of growth, the big O notations can be arranged in an increasing order as:- 
<br>O(1) &lt; O(log n) &lt; O(n) &lt; O(n log n) &lt; O(n<sup>2</sup>) &lt; O(n<sup>3</sup>) &lt; O (2<sup>n</sup>) &lt; O (10<sup>n</sup>) Therefore, if a problem can be solved by using algorithms each of the preceding orders of growth, an algorithm of the order of O(1) will be considered best, and an algorithm of the order O(10<sup>n</sup>) will be considered the worst. The goal of algorithm development should be to make algorithms of the smallest possible orders. 
<br>The following table depicts the orders of growth for the preceding big O notations. <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>Big O Notation </td>

      
      <td class="txt">
	<br>Order of growth </td>
</tr>

    <tr>

      
      <td class="txt">
<br>O(1) 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image1.gif"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>O(log n) 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image2.gif"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>O(n) 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image3.gif"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>O(n log n) 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image4.gif"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>O(n<sup>2</sup>) 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image5.gif"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>O(n<sup>3</sup>) 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image6.gif"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>O(2<sup>n</sup>) 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image7.gif"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>O(10<sup>n</sup>) 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image8.gif"></sub>
</td>
</tr></table>
<br>Now, consider that the assignment, comparisons, write and increment statements take a,b,c and d time units to execute, respectively. Also, suppose all arithmetic operations require e time units to execute. Now, consider the following two algorithms to find the sum of first n natural numbers:- 
<br><b>Algorithm A </b>
<br>1. Set sum = 0 // 1 assignment 
<br>2. Set i = 0 // 1 assignment 
<br>3. While (i &lt;= n) // n comparisons 
<br>a. Set sum = sum + i // n arithmetic operations, n assignments 
<br>b. Increment i by 1 // n increments 
<br>4. Display (sum) // 1 write 
<br><b>Algorithm B </b>
<br>1. Set sum = (n x (n + 1))/2 // 3 arithmetic operations, 1 assignment 
<br>2. Display (sum) // 1 write 
<br>Both Algorithm A and Algorithm B perform the same task, that is, both determine the sum of the first n natural numbers. Algorithm A adds each number iteratively to a variable sum. However, Algorithm B uses a formula to calculate the sum of the first n natural numbers. 
<br>The execution time requires for Algorithm A is given by:- 
<br>T = (n + 2) x a + (n x b) + (1 x c) + (n x d) + (n x e) 
<br>T = an + 2n + bn + c + dn + en 
<br>T = c + n(a + b + d + e + 2) 
<br>As T is a linear function of n. 
<br>Therefore, the algorithm is of the order O(n). 
<br>Now determine the time required to execute algorithm B:- 
<br>T = (1 x a) + (1 x c) + (3 x e) 
<br>T = a + c + 3e 
<br>Unlike Algorithm A, the time taken by Algorithm B is a constant, and does not depend on the value of n. Therefore, the algorithm is of the order O(1). Because Algorithm A is of the order O(n), the execution time of Algorithm A increases linearly with the value of n. However, Algorithm B is of the order O(1). Therefore, the execution time of Algorithm B is constant. This means that an increase in the value of n does not have any impact on the execution time of the algorithm. Therefore, however large the problem be, Algorithm A solves it in the same amount of time. 
<br>Suppose for n = 10, both Algorithm A and B take 10 nanoseconds(ns) to execute. However when n is increased to 100, Algorithm A will take 100 ns to execute, but Algorithm B will take only 10 ns to execute, Similarly, when n is increased to 1000, Algorithm A will take 1000 ns to execute, but Algorithm B will take only 10 ns. This means that when the problem is very large in size, Algorithm B would prove to be much more efficient than Algorithm A. 
<br><b>Best, Worst, and Average Case Efficiency </b>
<br>Suppose you have a list of names in which you have to search for a particular name. You have designed an algorithm that searches the name in the list of n elements, by comparing the name to be searched with each element in the list sequentially. 
<br>The best case in this scenario would be if the first element in the list matches the name to be searched. The efficiency in that case would be expressed as O(1) because only one comparison was made. 
<br>Similarly, the worst case in this scenario would be if the complete list is traversed and the element is found at the end of the list or is not found in the list. The efficiency in that case would be expressed as O(n) because n comparisons were made. 
<br>Continuing with the same example, the average case efficiency can be obtained by finding the average number of comparisons. Here, 
<br>Minimum number of comparisons = 1 
<br>Maximum number of comparisons = n 
<br>Therefore, average number of comparisons = (n + 1)/2 
<br>(n + 1)2 is a linear function of n. Therefore, the average case efficiency will be expressed as O(n). 
<br>The worst case efficiency of the preceding search program can be improved by using an alternate search algorithm that provides a better worst case efficiency. 
<br>A search algorithm with a better worst case efficiency is binary search that provides an efficiency of O(log n) in the worst case. We will learn more about this algorithm in the subsequent tutorials. 
</td>

      
      <td class="txt">
	<br>
</td>
</tr></table>
<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Discuss about Data Structure Tutorials</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Data Structures Overview</b>
<br>Data Structures Overview - Tutorials</td>
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
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>gate 2011 exam practice paper</b>" NavigateUrl="~/engineering/computer-science/determining_the_efficiency_of_an_algorithm_big_o_notation.aspx"></asp:HyperLink> 
<br>pls send gate 2011 practice paper 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;abhimanyukumar</b> 
</td>

      
      <td class="txt">
	<br>Jan 26, 5:22:22 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>960
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>OPERATING SYSTEM</b>" NavigateUrl="~/engineering/computer-science/determining_the_efficiency_of_an_algorithm_big_o_notation.aspx"></asp:HyperLink> 
<br>question bank 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;patilvidya111</b> 
</td>

      
      <td class="txt">
	<br>Jan 20, 2:13:27 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1046
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>questions for DS</b>" NavigateUrl="~/engineering/computer-science/determining_the_efficiency_of_an_algorithm_big_o_notation.aspx"></asp:HyperLink> 
<br>plz send me gate level questions for DS
<br>and my email id is mohd.jaha.jahangir@gmail.com 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;albasit</b> 
</td>

      
      <td class="txt">
	<br>Jan 19, 7:21:56 PM
</td>

      
      <td class="txt">
	<br>1
</td>

      
      <td class="txt">
	<br>931
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>data base</b>" NavigateUrl="~/engineering/computer-science/determining_the_efficiency_of_an_algorithm_big_o_notation.aspx"></asp:HyperLink> 
<br>please send me course material and importan question of dbms for gate exam 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;pragya20ranu@yahoo.co.in</b> 
</td>

      
      <td class="txt">
	<br>Nov 11, 7:26:27 PM
</td>

      
      <td class="txt">
	<br>1
</td>

      
      <td class="txt">
	<br>2093
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>operating systems</b>" NavigateUrl="~/engineering/computer-science/determining_the_efficiency_of_an_algorithm_big_o_notation.aspx"></asp:HyperLink> 
<br>memory management 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;rangapuramramesh</b> 
</td>

      
      <td class="txt">
	<br>Oct 14, 11:48:43 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>681
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>data structure</b>" NavigateUrl="~/engineering/computer-science/determining_the_efficiency_of_an_algorithm_big_o_notation.aspx"></asp:HyperLink> 
<br>plz send me the question bank of data structure.
<br>my e-mail id is preety20.yadav@gmail.com 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;preety12a13</b> 
</td>

      
      <td class="txt">
	<br>Dec 2, 2:08:29 PM
</td>

      
      <td class="txt">
	<br>1
</td>

      
      <td class="txt">
	<br>1120
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>ds</b>" NavigateUrl="~/engineering/computer-science/determining_the_efficiency_of_an_algorithm_big_o_notation.aspx"></asp:HyperLink> 
<br>sir, plz send me question bank of data structure.... 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;pallavigupta00007@gmail.com</b> 
</td>

      
      <td class="txt">
	<br>Oct 5, 12:39:40 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>720
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>gate level question</b>" NavigateUrl="~/engineering/computer-science/determining_the_efficiency_of_an_algorithm_big_o_notation.aspx"></asp:HyperLink> 
<br>plz send me gate level question 
<br>and my email id is
<br>cse07348.sbit@gmail.com 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;@sanjay@</b> 
</td>

      
      <td class="txt">
	<br>Sep 26, 9:54:29 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>727
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Data Structure</b>" NavigateUrl="~/engineering/computer-science/determining_the_efficiency_of_an_algorithm_big_o_notation.aspx"></asp:HyperLink> 
<br>Hello Sir Mam.....
<br>
<br>plzzzz send me gate level questions for data structure on my email id......
<br>
<br>my email id, raman8065@yahoo.in 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;magan1986</b> 
</td>

      
      <td class="txt">
	<br>Oct 20, 4:33:04 PM
</td>

      
      <td class="txt">
	<br>1
</td>

      
      <td class="txt">
	<br>1049
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>DATA STRUCTURE</b>" NavigateUrl="~/engineering/computer-science/determining_the_efficiency_of_an_algorithm_big_o_notation.aspx"></asp:HyperLink> 
<br>SEND ME OBJECTIVE TEST PAPER FOR DS 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;vipin90</b> 
</td>

      
      <td class="txt">
	<br>Jun 6, 6:49:47 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1086
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>data struture</b>" NavigateUrl="~/engineering/computer-science/determining_the_efficiency_of_an_algorithm_big_o_notation.aspx"></asp:HyperLink> 
<br>i want practice test paper 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;saurabh100deep</b> 
</td>

      
      <td class="txt">
	<br>Aug 6, 7:42:04 PM
</td>

      
      <td class="txt">
	<br>1
</td>

      
      <td class="txt">
	<br>1313
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>data structure</b>" NavigateUrl="~/engineering/computer-science/determining_the_efficiency_of_an_algorithm_big_o_notation.aspx"></asp:HyperLink> 
<br>i want question bank for ds 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;manju99</b> 
</td>

      
      <td class="txt">
	<br>Mar 10, 7:57:01 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>921
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>operating system</b>" NavigateUrl="~/engineering/computer-science/determining_the_efficiency_of_an_algorithm_big_o_notation.aspx"></asp:HyperLink> 
<br>objective question
<br>
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;mustak</b> 
</td>

      
      <td class="txt">
	<br>Feb 3, 11:16:53 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1206
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink15" runat="server" Text="<b>basic of data structure</b>" NavigateUrl="~/engineering/computer-science/determining_the_efficiency_of_an_algorithm_big_o_notation.aspx"></asp:HyperLink> 
<br>link list 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;jassisaggu</b> 
</td>

      
      <td class="txt">
	<br>Feb 1, 9:56:50 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1116
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
	<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image10.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image10.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image11.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink16" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image12.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image12.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image12.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image12.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image12.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image11.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image11.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_determining_the_efficiency_of_an_algorithm_big_o_notation/image11.wmf"></sub>
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
