<%@ Page Language="C#" MasterPageFile="~/Masters/dsolinks.master" AutoEventWireup="True" CodeBehind="Method_of_Determining_the_Efficiency_of_an_Algorithm.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Method_of_Determining_the_Efficiency_of_an_Algorithm" %>
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
	<b>Method for Determining the Efficiency of an Algorithm </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Method for determining Efficiency </b>
<br>Although, the efficiency of an algorithm depends on how efficiently it uses time and memory space, the scope of this course is limited to determining only the time efficiency of an algorithm. 
<br>To measure the time efficiency of an algorithm, you can write a program based on the algorithm, execute it, and measure the time it takes to run. The execution time that you measure in this case would depend on a number of factors such as:- 
<br>· Speed of the machine 
<br>· Compiler 
<br>· Operating System 
<br>· Programming language 
<br>· Input data 
<br>However, to determine how efficiently an algorithm solves a given problem, you would like to determine how the execution time is affected by the nature of the algorithm. Therefore, you need to develop fundamental laws that determine the efficiency of a program in terms of the nature of the underlying algorithm. 
<br>
<br>
<br>
<br>To understand how the nature of an algorithm affects the execution, consider a simple example. Suppose assignment, comparison, write, and increment statements take a, b, c, and d time units to execute respectively. Now, consider the following code used to display the elements stored in an array:- 
<br>1. Set I = 0 // 1 assignment 
<br>2. While(I &lt; n): // n comparisons 
<br>a. Display a[I] // n writes 
<br>b. Increment I by 1 // n increments 
<br>The execution time required for the preceding algorithm is given by:- 
<br>T = a + b x n + c x n + d x n 
<br>T = a + n(b + c + d) 
<br>Here, T is the total running time of the algorithm expressed as a linear function of the number of elements (n) in the array. From the preceding expression, it is clear that T is directly proportional to n. In fact, the total running time T is directly proportional to the number of iterations involved in the algorithm. The number of iterations can be determined by counting the number of comparisons involved in the algorithm. In the preceding code segment, a total of n comparisons are being made. Therefore, the total running time of the algorithm, T is directly proportional to n. As T is directly proportional to n, an increase in the value of n will result in a proportional increase in the value of T, as shown in the following figure. 
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image1.gif"></sub>
<br>Now, consider the following algorithm:- 
<br>1. Set I = 0 // 1 assignment 
<br>2. While (I &lt; n): // n comparisons 
<br>a. Set J = 0 // n assignments 
<br>b. While (J &lt; n): // n x n comparisons 
<br>i. Display (a[I][J]) // n x n writes 
<br>ii. Increment J by 1 // n x n increments 
<br>c. Increment I by 1 // n increments 
<br>If you count the number of comparisons in the preceding code segment, they come out to be (n<sup>2</sup> + n), which is a quadratic function of n. Therefore, the total running time is directly proportional to n<sup>2</sup>. 
<br><b>Note:</b> Although the number of comparisons is n<sup>2</sup> + n, the value of n is very small as compared to the value of n<sup>2</sup> (especially when n is very large). Therefore, the value of n can be ignored for finding the approximate running time. 
<br>As the running time is directly proportional to n<sup>2</sup>, an increase in the value of n will result in a quadratic increase in the running time. This means that if the value of n is doubled, the running time will increase four times. The rate of change of T with an increase in the value of n is depicted in the following figure:- 
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image2.gif"></sub>
<br>From the preceding discussion, you can conclude that the running time of a program is a function of n, where n is the size of the input data. The rate at which the running time of an algorithm increases as a result of an increase in the volume of input data is called the order of growth of the algorithm. 
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Next Page - The big O notation: Order of growth of an algorithm </b>" NavigateUrl="~/engineering/computer-science/determining_the_efficiency_of_an_algorithm_big_o_notation.aspx"></asp:HyperLink>
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink2" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
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
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>gate 2011 exam practice paper</b>" NavigateUrl="~/engineering/computer-science/method_of_determining_the_efficiency_of_an_algorithm.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>OPERATING SYSTEM</b>" NavigateUrl="~/engineering/computer-science/method_of_determining_the_efficiency_of_an_algorithm.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>questions for DS</b>" NavigateUrl="~/engineering/computer-science/method_of_determining_the_efficiency_of_an_algorithm.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>data base</b>" NavigateUrl="~/engineering/computer-science/method_of_determining_the_efficiency_of_an_algorithm.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>operating systems</b>" NavigateUrl="~/engineering/computer-science/method_of_determining_the_efficiency_of_an_algorithm.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>data structure</b>" NavigateUrl="~/engineering/computer-science/method_of_determining_the_efficiency_of_an_algorithm.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>ds</b>" NavigateUrl="~/engineering/computer-science/method_of_determining_the_efficiency_of_an_algorithm.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>gate level question</b>" NavigateUrl="~/engineering/computer-science/method_of_determining_the_efficiency_of_an_algorithm.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>Data Structure</b>" NavigateUrl="~/engineering/computer-science/method_of_determining_the_efficiency_of_an_algorithm.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>DATA STRUCTURE</b>" NavigateUrl="~/engineering/computer-science/method_of_determining_the_efficiency_of_an_algorithm.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>data struture</b>" NavigateUrl="~/engineering/computer-science/method_of_determining_the_efficiency_of_an_algorithm.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>data structure</b>" NavigateUrl="~/engineering/computer-science/method_of_determining_the_efficiency_of_an_algorithm.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink15" runat="server" Text="<b>operating system</b>" NavigateUrl="~/engineering/computer-science/method_of_determining_the_efficiency_of_an_algorithm.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink16" runat="server" Text="<b>basic of data structure</b>" NavigateUrl="~/engineering/computer-science/method_of_determining_the_efficiency_of_an_algorithm.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image5.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink17" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image5.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image5.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_method_of_determining_the_efficiency_of_an_algorithm/image5.wmf"></sub>
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
