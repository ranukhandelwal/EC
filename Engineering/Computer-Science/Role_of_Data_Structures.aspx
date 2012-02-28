<%@ Page Language="C#" MasterPageFile="~/Masters/dsolinks.master" AutoEventWireup="True" CodeBehind="Role_of_Data_Structures.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Role_of_Data_Structures" %>
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
	<b>Role of Data Structures </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Multiple algorithms can be designed to solve a particular problem. However, the algorithm may differ in how efficiently they can solve the problem. In such a situation, an algorithm that provides the maximum efficiency should be used for solving the problem. Efficiency here means that the algorithm should work in minimal time and use minimal memory. 
<br>One of the basic techniques for improving the efficiency of algorithms is to structure the data that they operate on in such a way that the resulting operations can be efficiently performed. 
<br>The way in which the various data elements are organized in memory with respect to each other is called a data structure. Data can be organized in many different ways; therefore, you can create as many data structures as you want. However, there are some standard data structures that have proved useful over the years. These include arrays, linked lists, stacks, queues, trees and graphs. We will learn more about these data structures in the subsequent tutorials. 
<br>All these data structures are designed to hold a collection of data items. However, the differences lies in the way the data items are arranged with respect to each other and the operations that they allow. Because of the different ways in which the data items are arranged with respect to each other, some data structures prove to be more efficient that others to solve a given problem. 
<br>Suppose you have to write an algorithm that enables printer to service the requests of multiple users on a first-come-first-served (FCFS) basis. In this case, using a data structure that stores and retrieves the requests in the order of their arrival would be much more efficient than a data structure that stores and retrieves the requests in a random order. 
<br>In addition to improving the efficiency of an algorithm, the use of appropriate data structures also allows you to overcome some other programming challenges, such as:- 
<br>· Simplifying complex problems 
<br>· Creating standard, reusable code components 
<br>· Creating programs that are easy to understand and maintain 
<br>Consider an example where you have to find the maximum value in a set of 50 numbers, In this scenario, you can either use 50 variables or a data structure, such as an array of size 50, to store the numbers. When 50 different variables are used to store the numbers, the algorithm to determine the maximum value among the numbers can be written as: 
<br>1. Accept 50 numbers and store them in num1, num2, num3, .. num50 
<br>2. Set max = num1 
<br>3. If num2 &gt; max then: max = num2 
<br>4. If num3 &gt; max then: max = num3: 
<br>5. If num50 &gt; max then max = num50 
<br>6. Display max 
<br>On the other hand, when an array of size 50 is used, the algorithm can be written as:- 
<br>1. Set max = num[0] 
<br>2. Repeat step3 varying i from 1 to 49 
<br>3. If num[i] &gt; max then: max = num[i] 
<br>4. Display max 
<br>From the preceding two algorithms, it can be seen that the algorithm using an array manipulates memory much more efficiently than the algorithm using 50 variables. Also, the algorithm using an array involves few steps and is therefore, easier to understand and implement as compared to the algorithm that uses 50 variables. 
<br>Data structures also enable the creation of reusable code components. Suppose you have created a class to implement a data structure that stores and retrieves requests in the order of their arrival. Once the class is created, the same class can be used in several different applications that need to service the requests of multiple users on a FCFS basis. 
<br>This means that a data structure once implemented can be used as a standard component to provide a standard solution to a specific set of problems. The use of standard components helps simplify the maintenance process. This is because the standard components are time tested and therefore, do not need much maintenance. 
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
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>gate 2011 exam practice paper</b>" NavigateUrl="~/engineering/computer-science/role_of_data_structures.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>OPERATING SYSTEM</b>" NavigateUrl="~/engineering/computer-science/role_of_data_structures.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>questions for DS</b>" NavigateUrl="~/engineering/computer-science/role_of_data_structures.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>data base</b>" NavigateUrl="~/engineering/computer-science/role_of_data_structures.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>operating systems</b>" NavigateUrl="~/engineering/computer-science/role_of_data_structures.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>data structure</b>" NavigateUrl="~/engineering/computer-science/role_of_data_structures.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>ds</b>" NavigateUrl="~/engineering/computer-science/role_of_data_structures.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>gate level question</b>" NavigateUrl="~/engineering/computer-science/role_of_data_structures.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Data Structure</b>" NavigateUrl="~/engineering/computer-science/role_of_data_structures.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>DATA STRUCTURE</b>" NavigateUrl="~/engineering/computer-science/role_of_data_structures.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>data struture</b>" NavigateUrl="~/engineering/computer-science/role_of_data_structures.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>data structure</b>" NavigateUrl="~/engineering/computer-science/role_of_data_structures.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>operating system</b>" NavigateUrl="~/engineering/computer-science/role_of_data_structures.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink15" runat="server" Text="<b>basic of data structure</b>" NavigateUrl="~/engineering/computer-science/role_of_data_structures.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image3.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_role_of_data_structures/image3.wmf"></sub>
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
