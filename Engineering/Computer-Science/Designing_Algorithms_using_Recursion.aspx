<%@ Page Language="C#" MasterPageFile="~/Masters/dsolinks.master" AutoEventWireup="True" CodeBehind="Designing_Algorithms_using_Recursion.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Designing_Algorithms_using_Recursion" %>
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
	<b>Designing Algorithms using Recursion </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Recursion refers to the technique of defining a process in terms of itself. It is used to solve complex programming problems that are repetitive in nature. 
<br>The basic idea behind recursion is to break a problem into smaller versions of itself, and then build up a solution for the entire problem. This may sound similar to the divide and conquer technique. However, recursions not similar to the divide and conquer technique. Divide and conquer is a theoretical concept that may be implemented in a computer program with the help of recursion. 
<br>Recursion is implemented in a program by using a recursive procedure or function. A recursive procedure is a function which invokes itself. 
<br>Consider a function f(n), which is the sum of the first n natural numbers. This function can be defined in several different ways. 
<br>
<br>
<br>
<br>In mathematics, the function will be defined as: f(n) = 1 + 2 + 3 + .... + n 
<br>However, the same function can be defined in a recursive manner as: f(n) = f(n - 1) + n 
<br>Where n &gt;1; and f(1) = 1 
<br>In this case, the recursive definition of the function f(n) calls the same function, but with its arguments reduced by one. The recursion will end n = 1, in which case f(1) = 1 has been defined. 
<br>To understand this concept, consider a factorial function. A factorial function is defined as:- 
<br>n! = 1 x 2 x 3 x 4 x .. x n 
<br>This same factorial function can be redefined as:- 
<br>n! = (n - 1)! x n
<br>Where n &gt; 1; and 0! = 1 
<br>This definition of n! is recursive because it refers to itself when it uses (n - 1)!. 
<br>The value of n! is explicitly given where n = 0; and the value of n! for arbitrary n is defined in terms of the smaller value of n, which is closer to the base value 0. 
<br>If you have to calculate 3! By using recursion. you first define 3! in terms of 2!:- 
<br>3! = (3 x 2!) 
<br>Now, you will define 2! in terms of 1!: 3! = (3 x (2 x 1!)) 
<br>Now, 1! will be defined in terms of 0!: 3! = (3 x (2 x (1 x 0!))) 
<br>As, 0! is defined as 1, the expression becomes: 3! = (3 x (2 x (1 x 1))) 
<br>3! = (3 x (2 x 1 )) 
<br>3! = (3 x 2) 
<br>3! = 6 
<br>This recursive algorithm for determining the factorial of a number n can be written as:- 
<br><b>Algorithm: Factorial(n) </b>
<br>1. If n = 0, then: //Terminating condition 
<br>a. Return (1) 
<br>2. Return (n x Factorial(n - 1)) 
<br>Please note that every recursive algorithm should have a terminating condition. Otherwise, the algorithm will keep on calling itself infinitely. 
<br>The main advantage of recursion is that it is useful in writing clear, short, and simple programs. One of the most common and interesting problems that can be solved using recursion is the Tower of Hanoi problem. 
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Next Page - Tower of Hanoi Example </b>" NavigateUrl="~/engineering/computer-science/designing_algorithms_using_recursion_examples.aspx"></asp:HyperLink>
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
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>gate 2011 exam practice paper</b>" NavigateUrl="~/engineering/computer-science/designing_algorithms_using_recursion.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>OPERATING SYSTEM</b>" NavigateUrl="~/engineering/computer-science/designing_algorithms_using_recursion.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>questions for DS</b>" NavigateUrl="~/engineering/computer-science/designing_algorithms_using_recursion.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>data base</b>" NavigateUrl="~/engineering/computer-science/designing_algorithms_using_recursion.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>operating systems</b>" NavigateUrl="~/engineering/computer-science/designing_algorithms_using_recursion.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>data structure</b>" NavigateUrl="~/engineering/computer-science/designing_algorithms_using_recursion.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>ds</b>" NavigateUrl="~/engineering/computer-science/designing_algorithms_using_recursion.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>gate level question</b>" NavigateUrl="~/engineering/computer-science/designing_algorithms_using_recursion.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>Data Structure</b>" NavigateUrl="~/engineering/computer-science/designing_algorithms_using_recursion.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>DATA STRUCTURE</b>" NavigateUrl="~/engineering/computer-science/designing_algorithms_using_recursion.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>data struture</b>" NavigateUrl="~/engineering/computer-science/designing_algorithms_using_recursion.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>data structure</b>" NavigateUrl="~/engineering/computer-science/designing_algorithms_using_recursion.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink15" runat="server" Text="<b>operating system</b>" NavigateUrl="~/engineering/computer-science/designing_algorithms_using_recursion.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink16" runat="server" Text="<b>basic of data structure</b>" NavigateUrl="~/engineering/computer-science/designing_algorithms_using_recursion.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image3.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_designing_algorithms_using_recursion/image3.wmf"></sub>
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
