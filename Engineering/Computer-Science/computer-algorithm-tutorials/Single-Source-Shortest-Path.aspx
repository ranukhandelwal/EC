<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Single-Source-Shortest-Path.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Single_Source_Shortest_Path" %>
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
	<b>Single Source Shortest Path </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Suppose G be a weighted directed graph where a minimum labeled w(u, v) associated with each edge (u, v) in E, called weight of edge (u, v). These weights represent the cost to traverse the edge. A path from vertex u to vertex v is a sequence of one or more edges. 
<br>&nbsp; &lt;(v<sub>1</sub>,v<sub>2</sub>), (v<sub>2</sub>,v<sub>3</sub>), . . . , (v<sub>n-1</sub>, v<sub>n</sub>)&gt; in E[G] where u = v<sub>1</sub> and v = v<sub>n</sub> 
<br>The cost (or length or weight) of the path P is the sum of the weights of edges in the sequence. 
<br>The shortest-path weight from a vertex u&epsilon;V to a vertex v&epsilon;V in the weighted graph is the minimum cost of all paths from u to v. If there exists no such path from vertex u to vertex v then the weight of the shortest-path is &infin;. 
<br>&nbsp; 
	<br><b><b>Variant of single-source shortest problems </b></b>
	<br>1. Given a source vertex, in the weighted diagraph, find the shortest path weights to all other vertices in the digraph. 
<br>2. Given a destination vertex, t, in the weighted digraph, find the shortest path weights from all other vertices in the digraph. 
<br>3. Given any two vertices in the weighted digraph, find the shortest path (from u to v or v to u). 
<br>&nbsp; 
	<br><b><b>Negative-Weight Edges </b></b>
	<br>The negative weight cycle is a cycle whose total is negative. No path from starting vertex S to a vertex on the cycle can be a shortest path. Since a path can run around the cycle many, many times and get any negative cost desired. in other words, a negative cycle invalidates the noton of distance based on edge weights. 
<br>&nbsp; 
	<br><b><b>Relaxation Technique </b></b>
	<br>This technique consists of testing whether we can improve the shortest path found so far if so update the shortest path. A relaxation step may or may not decrease the value of the shortest-path estimate. 
<br>The following code performs a relaxation step on edge(u,v). 
<br>&nbsp; &nbsp;&nbsp;&nbsp; Relax (u, v, w) 
<br>&nbsp;&nbsp;&nbsp; If d[u] + w(u, v) &lt; d[v] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; then d[v] d[u] + w[u, v] 
<br>&nbsp;Diagram 
<br>&nbsp; 
	<br><b><b>Single Source Shortest Problem </b></b>
	<br>Given a weighted graph G, find a shortest path from given vertex to each other vertex in G. Note that we can solve this problem quite easily with BFS traversal algorithm in the special case when all weights are 1. The greedy approach to this problem is repeatedly selecting the best choice from those available at that time. 
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Þ</b><b> Click here for </b><b>Dijkstras</b><b> Algorithm details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/dijkstras-algorithm.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Þ</b><b> Click here for Bellman Ford Algorithm details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/bellman-ford-algorithm.aspx"></asp:HyperLink>
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink3" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Prims</b><b> Algorithm</b>
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_single-source-shortest-path/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_single-source-shortest-path/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_single-source-shortest-path/image1.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_single-source-shortest-path/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_single-source-shortest-path/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_single-source-shortest-path/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_single-source-shortest-path/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_single-source-shortest-path/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_single-source-shortest-path/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_single-source-shortest-path/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_single-source-shortest-path/image1.wmf"></sub>
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
