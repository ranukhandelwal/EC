<%@ Page Language="C#" MasterPageFile="~/Masters/dsolinks.master" AutoEventWireup="True" CodeBehind="Identifying_Techniques_for_Designing_Algorithms.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Identifying_Techniques_for_Designing_Algorithms" %>
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
	<b>Identifying Techniques for Designing Algorithms </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Although there is no systematic method for designing an algorithm, there are some well-known techniques that have probed to be quite useful in designing algorithms. Two commonly used techniques for designing algorithms are:- 
<br><b>Divide and Conquer Approach </b>
<br>The divide an conquer approach is an algorithm design technique that involves breaking down the problem recursively into sub problems until the sub problems become so small that they can directly be solved. The solutions to the sub problems are then combined to give a solution to the original problem. 
<br>Divide and conquer is a powerful approach for solving conceptually difficult problems. It simply requires you to find a way of:- 
<br>1. Breaking the problem into sub problems 
<br>2. Solving the trivial cases. 
<br>3. Combining the solutions of the sub problems to solve the original problem. 
<br>Divide and conquer often provides a natural way to design efficient algorithms. 
<br>Consider an example where you have to find the minimum value in a list of numbers. The lists is as shown in the figure:- 
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image1.gif"></sub>
<br>To find the minimum value, you can divide the list into two halves, as shown in the following figure:- 
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image2.gif"></sub>
<br>Again, divide each of the two lists into two halves as shown in the following figure:- 
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image3.gif"></sub>
<br>Now, there are only two elements in each list. At this stage, compare the two elements in each lists to find the minimum of the two. The minimum values from each of the four lists is shown in the following figures. 
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image4.gif"></sub>
<br>Again, compare the first two minimum values to determine their minimum. Also compare the last two minimum values to determine their minimum. The two minimum values thus obtained are shown in the following figure:- 
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image5.gif"></sub>
<br>Again, compare the two final minimum values to obtain the overall minimum value, which is 1 in the preceding example. 
<br>· <b>Greedy Approach </b>
<br>The greedy approach is an algorithm design technique that selects the best possible option at any given time. Algorithms based on the greedy approach are used for solving optimization problems, where you need to maximize profits or minimize costs under a given set of conditions. Some examples of optimization problems are:- 
<br>· Finding the shortest distance from an originating city to a set of destination cities, given the distances between the pairs of cities. 
<br>· Finding the minimum number of currency notes required for an amount, where an arbitrary number of notes for each denomination are available. 
<br>· Selecting items with maximum value from a given set of items, where the total weight of the selected items cannot exceed a given value. 
<br>Consider an example, where you have to fill a bag of capacity 10kg by selecting items, (from a set of items) whose weights and values are given in the following table. <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>Item </td>

      
      <td class="txt">
	<br>Weight (in kg) </td>

      
      <td class="txt">
	<br>Value (in$/kg) </td>

      
      <td class="txt">
	<br>Total Value (in $) </td>
</tr>

    <tr>

      
      <td class="txt">
<br>A 
</td>

      
      <td class="txt">
	<br>2 
</td>

      
      <td class="txt">
	<br>200 
</td>

      
      <td class="txt">
	<br>400 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>B 
</td>

      
      <td class="txt">
	<br>3 
</td>

      
      <td class="txt">
	<br>150 
</td>

      
      <td class="txt">
	<br>450 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>C 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>200 
</td>

      
      <td class="txt">
	<br>800 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>D 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>50 
</td>

      
      <td class="txt">
	<br>50 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>E 
</td>

      
      <td class="txt">
	<br>5 
</td>

      
      <td class="txt">
	<br>100 
</td>

      
      <td class="txt">
	<br>500 
</td>
</tr></table>
<br>Weights and Values of Items
<br>A greedy algorithms acts greedy, and therefore selects the item with the maximum total value at each stage. Therefore, first of all, item C with total value of $800 and weight 4 kg will be selected. Next, item E with total value $500 and weight 5 kg will be selected. The next item with the highest value is item B with a total value of $450 and weight 3 kg. However, if this item is selected, the total weight of the selected items will be 12 kg (4 + 5 + 3), which is more than the capacity of the bag. 
<br>Therefore, we discard item B and search for the item with the next highest value. The item with the next higher value is item A having a total value of $400 and a total weight of 2 kg. However, the item also cannot be selected because if it is selected, the total weight of the selected items will be 11 kg ( 4 + 5 + 2). Now, there is only one item left, that is, item D with a total value of $50 and a weight of 1 kg. This item can be selected as it makes the total weight equal to 10 kg. 
<br>The selected items and their total weights are listed in the following table. <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>Item </td>

      
      <td class="txt">
	<br>Weight (in kg) </td>

      
      <td class="txt">
	<br>Total value (in $) </td>
</tr>

    <tr>

      
      <td class="txt">
<br>C 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>800 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>E 
</td>

      
      <td class="txt">
	<br>5 
</td>

      
      <td class="txt">
	<br>500 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>D 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>50 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Total 
</td>

      
      <td class="txt">
	<br>10 
</td>

      
      <td class="txt">
	<br>1350 
</td>
</tr></table>
<br>Items selected using Greedy Approach
<br>For most problems, greedy algorithms usually fail to find the globally optimal solution. This is because they usually don't operate exhaustively on all data. They can make commitments to certain choices too early, which prevent them from finding the best overall solution later. 
<br>This can be seen from the preceding example, where the use of a greedy algorithm selects item with a total value of $1350 only. However, if the items were selected in the sequence depicted by the following table, the total value would have been much greater, with the weight being 10 kg only. <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>Item </td>

      
      <td class="txt">
	<br>Weight (in kg ) </td>

      
      <td class="txt">
	<br>Total value (in $) </td>
</tr>

    <tr>

      
      <td class="txt">
<br>C 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>800 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>B 
</td>

      
      <td class="txt">
	<br>3 
</td>

      
      <td class="txt">
	<br>450
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>A 
</td>

      
      <td class="txt">
	<br>2 
</td>

      
      <td class="txt">
	<br>400
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>D 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>50
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Total 
</td>

      
      <td class="txt">
	<br>10 
</td>

      
      <td class="txt">
	<br>1700 
</td>
</tr></table>
<br>Optimal selection of Items
<br>In the preceding example you can observe that the greedy approach commits to item E very early. This prevents it from determining the best overall solution later. Nevertheless, greedy approach is useful because its quick and easy to implement. Moreover, it often gives good approximation to the optimal value. 
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
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image6.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>gate 2011 exam practice paper</b>" NavigateUrl="~/engineering/computer-science/identifying_techniques_for_designing_algorithms.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image6.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>OPERATING SYSTEM</b>" NavigateUrl="~/engineering/computer-science/identifying_techniques_for_designing_algorithms.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image6.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>questions for DS</b>" NavigateUrl="~/engineering/computer-science/identifying_techniques_for_designing_algorithms.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image6.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>data base</b>" NavigateUrl="~/engineering/computer-science/identifying_techniques_for_designing_algorithms.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image6.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>operating systems</b>" NavigateUrl="~/engineering/computer-science/identifying_techniques_for_designing_algorithms.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image6.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>data structure</b>" NavigateUrl="~/engineering/computer-science/identifying_techniques_for_designing_algorithms.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image6.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>ds</b>" NavigateUrl="~/engineering/computer-science/identifying_techniques_for_designing_algorithms.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image6.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>gate level question</b>" NavigateUrl="~/engineering/computer-science/identifying_techniques_for_designing_algorithms.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image6.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Data Structure</b>" NavigateUrl="~/engineering/computer-science/identifying_techniques_for_designing_algorithms.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image6.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>DATA STRUCTURE</b>" NavigateUrl="~/engineering/computer-science/identifying_techniques_for_designing_algorithms.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image6.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>data struture</b>" NavigateUrl="~/engineering/computer-science/identifying_techniques_for_designing_algorithms.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image6.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>data structure</b>" NavigateUrl="~/engineering/computer-science/identifying_techniques_for_designing_algorithms.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image6.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>operating system</b>" NavigateUrl="~/engineering/computer-science/identifying_techniques_for_designing_algorithms.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image6.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink15" runat="server" Text="<b>basic of data structure</b>" NavigateUrl="~/engineering/computer-science/identifying_techniques_for_designing_algorithms.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image7.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image7.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image8.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image9.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image9.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image9.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image9.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image9.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image8.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image8.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_identifying_techniques_for_designing_algorithms/image8.wmf"></sub>
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
