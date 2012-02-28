<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Topological-Sort.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Topological_Sort" %>
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
	<b>Topological Sort </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>A&nbsp;topological sort of a directed acylic graph (DAG)&nbsp; G is an ordering of the vertices of&nbsp; G such that for every edge (e<sub>i</sub>, e<sub>i</sub>) of&nbsp; G&nbsp; we have i &lt; j. That is, a topological sort is a linear ordering of all its vertices such that if DAG&nbsp; G&nbsp; contains an edge (e<sub>i</sub>, e<sub>j</sub>), then e<sub>i</sub> appears before e<sub>j</sub> in the ordering. DAG is cyclic then no linear ordering is possible. 
<br>In simple words, a topological ordering is an ordering such that any directed path in DAG&nbsp; G&nbsp; traverses vertices in increasing order. 
<br>It is important to note that if the graph is not acyclic, then no linear ordering is possible. That is, we must not have circularities in the directed graph. For example, in order to get a job you need to have work experience, but in order to get work experience you need to have a job (sounds familiar?). 
<br>&nbsp;Theorem&nbsp;&nbsp;&nbsp; A directed graph has a topological ordering if and only if it is acyclic. 
<br><b>Proof: </b>
<br>Part 1.&nbsp; G has a topological ordering if is G acyclic. 
<br>Let&nbsp; G is topological order. 
<br>Let&nbsp; G has a cycle (Contradiction). 
<br>Because we have topological ordering. We must have &nbsp;i<sub>0</sub>, &lt; i, &lt; . . . &lt; i<sub>k-1</sub> &lt; i<sub>0</sub>, which is clearly impossible. 
<br>Therefore,&nbsp; G must be acyclic. 
<br>Part 2.&nbsp; G is acyclic if has a topological ordering. 
<br>Let is&nbsp; G acyclic. 
<br>Since&nbsp; is&nbsp; G acyclic, must have a vertex with no incoming edges. Let v<sub>1</sub> be such a vertex. If we remove v<sub>1</sub> from graph, together with its outgoing edges, the resulting digraph is still acyclic. Hence resulting digraph also has a vertex * 
<br>&nbsp; 
	<br><b><b>Algorithm Topological Sort </b></b>
	<br>&nbsp;<b> TOPOLOGICAL_SORT(G) </b>
<br>1. For each vertex find the finish time by calling DFS(G). 
<br>2. Insert each finished vertex into the front of a linked list. 
<br>3. Return the linked list. 
<br>&nbsp;<b> Example </b>
<br>Given graph G; start node u 
<br>Diagram 
<br>with no incoming edges, and we let v<sub>2</sub> be such a vertex. By repeating this process until digraph G becomes empty, we obtain an ordering v<sub>1</sub> &lt; v<sub>2</sub> &lt; , . . . , v<sub>n</sub> of vertices of digraph G. Because of the construction, if (v<sub>i</sub>, v<sub>j</sub>) is an edge of digraph G, then vi must be detected before v<sub>j</sub> can be deleted, and thus i &lt; j. Thus, v<sub>1</sub>, . . . , v<sub>n</sub> is a topological sorting. 
<br>Total running time of topological sort is Θ(V + E) . Since DFS(G) search takes Θ(V + E) time and it takes O(1) time to insert each of the |V| vertices onto the front of the linked list. 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Prims Algorithm</b>
<br>Discussion forum for Prims Algorithm</td>
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_topological-sort/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_topological-sort/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_topological-sort/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_topological-sort/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_topological-sort/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_topological-sort/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_topological-sort/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_topological-sort/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_topological-sort/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_topological-sort/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_topological-sort/image2.wmf"></sub>
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
