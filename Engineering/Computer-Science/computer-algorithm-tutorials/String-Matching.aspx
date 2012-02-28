<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="String-Matching.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.String_Matching" %>
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
	<b>String Matching </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>String matching consists of&nbsp; finding one or more generally, all of the occurrences of a pattern in a text. Finding a certain pattern in a text is a problem arises in text-editing programs and web "surfing". Here we study various fundamental text processing algorithms (CLR) for quickly performing string searching and string matching. 
<br>&nbsp; 
	<br><b><b>Problem Formulation </b></b>
	<br>Given a text array, T[1 . . n], of n character and a pattern array, P[1 . . m], of m characters. The problem is to find an integer s, called valid shift where 0 &#8804; s &lt; n - m and T[s +1 . . . s + m] = P[1 . . m]. In other words, to find whether P in T i.e., where P is a substring of T. The elements of P and T are character drawn from some finite alphabet such as {0, 1} or {A, B, . . Z, a, b, . . . , z}. 
<br>&nbsp;Given a string T[1 . . n], the substrings is define as T[i . . j] for some 0 &#8804; i &#8804; &nbsp;j &#8804; n -1, that is, the string formed by the characters in T from index i to index j, inclusive. This means that a string is a substring of itself (simply take i = 0 and j = m). 
<br>The proper substring, of string T[1 . . n] is T[i . . j] for some 0&lt; i &#8804; &nbsp;j &#8804; n -1. That is, we must have either i &gt; 0 or j &lt; m -1. 
<br>&nbsp; Using these definition, we can say given any string T[1 . . n], the substrings are 
<br>T[i . . j] = T[i] T[i + 1] T[i + 2] . . . T[j]&nbsp;&nbsp;&nbsp; for some 0 &#8804; i &#8804; &nbsp;j &#8804; n -1. 
<br>And proper substrings are 
<br>T[i . . j] = T[i] T[i + 1] T[i + 2] . . . T[j]&nbsp;&nbsp;&nbsp; for some 0 &lt; i &#8804; &nbsp;j &#8804; n -1. 
<br>Note that if i &gt; j, then T[i . . j] is equal to the empty string or null, which has length zero. 
<br>&nbsp;Using these notations, we can define of a given string T[1 . . n] as T[0 . . i] for some 0 &#8804; i&nbsp; &#8804; n -1 and suffix of a given string T[1- n] as T[i . . n -1] for some&nbsp; 0 &#8804; i&nbsp; &#8804; n -1. 
<br>&nbsp;For example, given string T[1 . . B] is 
<br>T:&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; c&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; c&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; c 
<br>then a proper substring of T is 
<br>a&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; a 
<br>a prefix string of T is 
<br>a&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; c 
<br>and a suffix string of T is 
<br>b&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; c 
<br>&nbsp; Suppose we given string w, x, y and z 
<br>w:&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; c 
<br>x:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; c&nbsp;&nbsp;&nbsp;&nbsp; a 
<br>y:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; c&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; b 
<br>z:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; c&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; b 
<br>&nbsp; Here 
<br>x is a substring of z. 
<br>y is a substring of z. 
<br>Since |x| &#8804; |y| therefore, we have <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>x is a substring| </td>

      
      <td class="txt">
	<br>y: a b c a b</td>
</tr>

    <tr>

      
      <td class="txt">
<br>of y| 
</td>

      
      <td class="txt">
	<br>x: a b c a
</td>
</tr></table>
<br>&nbsp; In this case, 
<br>Since |y| &#8805; |x| 
<br>therefore x is a substring of y 
<br>y:&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; c&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; b 
<br>x:&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; c&nbsp;&nbsp;&nbsp;&nbsp; a 
<br>&nbsp;In this case, since 
<br>|x| = |w| 
<br>therefore, x = y 
<br>x&nbsp; = a&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; c 
<br>w = a&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; c 
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Þ</b><b> Click here for Naïve String Matching details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/naive-string-matching.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Þ</b><b> Click here for Knuth Morris Pratt Algorithm details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/knuth-morris-pratt-algorithm.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Þ</b><b> Click here for Boyer Moore Algorithm details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/boyer-moore-algorithm.aspx"></asp:HyperLink>
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink4" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Dijkstras Algorithm</b>
<br>Discussion forum for Dijkstras Algorithm</td>
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_string-matching/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_string-matching/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_string-matching/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink5" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_string-matching/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_string-matching/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_string-matching/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_string-matching/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_string-matching/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_string-matching/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_string-matching/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_string-matching/image2.wmf"></sub>
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
