<%@ Page Language="C#" MasterPageFile="~/Masters/operating_system_links.master" AutoEventWireup="True" CodeBehind="Deadlock-Avoidance.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Operating_System.Deadlock_Avoidance" %>
<%@ MasterType VirtualPath="~/Masters/operating_system_links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Deadlock Avoidance</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
	<br>This approach to the deadlock problem anticipates deadlock before it actually occurs. This approach employs an algorithm to access the possibility that deadlock could occur and acting accordingly. This method differs from deadlock prevention, which guarantees that deadlock cannot occur by denying one of the necessary conditions of deadlock. 
	<br>If the necessary conditions for a deadlock are in place, it is still possible to avoid deadlock by being careful when resources are allocated. Perhaps the most famous deadlock avoidance algorithm, due to Dijkstra [1965], is the Banker's algorithm. So named because the process is analogous to that used by a banker in deciding if a loan can be safely made. 
	<br>&nbsp; 
	<br><b><b>Banker's Algorithm </b></b>
	<br>In this analogy <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>Customers </td>

      
      <td class="txt">
	<br> </td>

      
      <td class="txt">
	<br>processes </td>
</tr>

    <tr>

      
      <td class="txt">
<br>Units 
</td>

      
      <td class="txt">
	<br> 
</td>

      
      <td class="txt">
	<br>resources, say, tape drive 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Banker 
</td>

      
      <td class="txt">
	<br> 
</td>

      
      <td class="txt">
	<br>Operating System 
</td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b><b>Customers </b></b></td>

      
      <td class="txt">
	<br><b><b>Used </b></b></td>

      
      <td class="txt">
	<br><b><b>Max </b></b></td>

      
      <td class="txt">
	<br><b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>A </b>
</td>

      
      <td class="txt">
	<br>0 
</td>

      
      <td class="txt">
	<br>6 
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>B 
</td>

      
      <td class="txt">
	<br>0 
</td>

      
      <td class="txt">
	<br>5 
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>C 
</td>

      
      <td class="txt">
	<br>0 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>Available Units = 10 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>D 
</td>

      
      <td class="txt">
	<br>0 
</td>

      
      <td class="txt">
	<br>7 
</td>

      
      <td class="txt">
	<br>
</td>
</tr></table>
<br>In the above figure, we see four customers each of whom has been granted a number of credit nits. The banker reserved only 10 units rather than 22 units to service them. At certain moment, the situation becomes<Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b><b>Customers </b></b></td>

      
      <td class="txt">
	<br><b><b>Used </b></b></td>

      
      <td class="txt">
	<br><b><b>Max </b></b></td>

      
      <td class="txt">
	<br><b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>A </b>
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>6 
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>B 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>5 
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>C 
</td>

      
      <td class="txt">
	<br>2 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>Available Units = 2 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>D 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>7 
</td>

      
      <td class="txt">
	<br>
</td>
</tr></table>
<br><b>Safe State</b>&nbsp;&nbsp;&nbsp; The key to a state being safe is that there is at least one way for all users to finish. In other analogy, the state of figure 2 is safe because with 2 units left, the banker can delay any request except C's, thus letting C finish and release all four resources. With four units in hand, the banker can let either D or B have the necessary units and so on.
	<br><b>Unsafe State </b>&nbsp;&nbsp;&nbsp;&nbsp; Consider what would happen if a request from B for one more unit were granted in above figure 2.
<br>We would have following situation <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b><b>Customers </b></b></td>

      
      <td class="txt">
	<br><b><b>Used </b></b></td>

      
      <td class="txt">
	<br><b><b>Max </b></b></td>

      
      <td class="txt">
	<br><b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>A </b>
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>6 
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>B 
</td>

      
      <td class="txt">
	<br>2 
</td>

      
      <td class="txt">
	<br>5 
</td>

      
      <td class="txt">
	<br>Available Units = 1 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>C 
</td>

      
      <td class="txt">
	<br>2 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>D 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>7 
</td>

      
      <td class="txt">
	<br>
</td>
</tr></table>
<br>This is an unsafe state. 
<br>If all the customers namely A, B, C, and D asked for their maximum loans, then banker could not satisfy any of them and we would have a deadlock. 
	<br><b>Important Note:&nbsp;</b>&nbsp;&nbsp;&nbsp; It is important to note that an unsafe state does not imply the existence or even the eventual existence a deadlock. What an unsafe state does imply is simply that some unfortunate sequence of events might lead to a deadlock.
	<br>The Banker's algorithm is thus to consider each request as it occurs, and see if granting it leads to a safe state. If it does, the request is granted, otherwise, it postponed until later. Haberman [1969] has shown that executing of the algorithm has complexity proportional to N2 where N is the number of processes and since the algorithm is executed each time a resource request occurs, the overhead is significant. 
	<br>
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Ü</b><b> Back to Dealing with Deadlock Problem </b>" NavigateUrl="~/engineering/computer-science/operating-system/dealing-with-deadlock-problem.aspx"></asp:HyperLink>
<br>
<br>
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Ü</b><b> Back to Deadlock of Operating Systems </b>" NavigateUrl="~/engineering/computer-science/operating-system/deadlock.aspx"></asp:HyperLink>
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
<br><b>Discuss About Operating System Tutorial </b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>
	<br>Top of Form<Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink3" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Deadlocks in Operating Systems</b>
<br>Deadlocks in Operating Systems Discussion Forum</td>
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
	<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_deadlock-avoidance/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_deadlock-avoidance/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_deadlock-avoidance/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink4" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_deadlock-avoidance/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_deadlock-avoidance/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_deadlock-avoidance/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_deadlock-avoidance/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_deadlock-avoidance/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_deadlock-avoidance/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/Operating-System/img_deadlock-avoidance/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/Operating-System/img_deadlock-avoidance/image2.wmf"></sub>
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
