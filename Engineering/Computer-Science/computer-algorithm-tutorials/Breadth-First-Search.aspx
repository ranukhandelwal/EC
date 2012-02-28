<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Breadth-First-Search.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Breadth_First_Search" %>
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
	<b>Breadth First Search (BFS) </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Breadth First Search algorithm used in 
<br>· Prim's MST algorithm. 
<br>· Dijkstra's single source shortest path algorithm. 
<br>Like depth first search, BFS traverse a connected component of a given graph and defines a spanning tree. 
<br>&nbsp; 
	<br><b><b>Algorithm Breadth First Search </b></b>
	<br>BFS starts at a given vertex, which is at level 0. In the first stage, we visit all vertices at level 1. In the second stage, we visit all vertices at second level. These new vertices, which are adjacent to level 1 vertices, and so on. The BFS traversal terminates when every vertex has been visited. 
<br>&nbsp;<b> BREADTH FIRST SEARCH (G, S) </b>
<br>Input:&nbsp;&nbsp;&nbsp; A graph G and a vertex. 
<br>Output: Edges labeled as discovery and cross edges in the connected component. 
<br>Create a Queue Q. 
<br>ENQUEUE (Q, S)&nbsp;&nbsp;&nbsp; // Insert S into Q. 
<br>While Q is not empty do 
<br>for each vertex v in Q do 
<br>for all edges e incident on v do 
<br>if edge e is unexplored then 
<br>let w be the other endpoint of e. 
<br>if vertex w is unexpected then 
<br>- mark e as a discovery edge 
<br>&nbsp;- insert w into Q 
<br>&nbsp;&nbsp;else 
<br>&nbsp;&nbsp;&nbsp;mark e as a cross edge 
<br>&nbsp;BFS label each vertex by the length of a shortest path (in terms of number of edges) from the start vertex. 
<br>&nbsp;<b> Example (CLR) </b>
<br>&nbsp;Step1 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image1.gif"></sub>
<br>Step 2 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image2.gif"></sub>
<br>Step 3 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image3.gif"></sub>
<br>Step 4 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image4.gif"></sub>
<br>Step 5 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image5.gif"></sub>
<br>Step 6 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image6.gif"></sub>
<br>Step 7 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image7.gif"></sub>
<br>Step 8 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image8.gif"></sub>
<br>Step 9 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image9.gif"></sub>
<br>&nbsp;Starting vertex (node) is S 
<br>Solid edge&nbsp;&nbsp;&nbsp;&nbsp; =&nbsp; discovery edge. 
<br>Dashed edge =&nbsp; error edge (since none of them connects a vertex to one of its ancestors). 
<br>&nbsp;As with the depth first search (DFS), the discovery edges form a spanning tree, which in this case we call the BSF-tree. 
<br>&nbsp;<b> BSF used to solve following problem </b>
<br>Testing whether graph is connected. 
<br>Computing a spanning forest of graph. 
<br>Computing, for every vertex in graph, a path with the minimum number of edges between start vertex and current vertex or reporting that no such path exists. 
<br>Computing a cycle in graph or reporting that no such cycle exists. 
<br>&nbsp;<b> Analysis </b>
<br>Total running time of BFS is O(V + E). 
<br>&nbsp; 
	<br><b><b>Bipartite Graph </b></b>
	<br>We define bipartite graph as follows: A bipartite graph is an undirected graph G = (V, E) in which V can be partitioned into two sets V<sub>1</sub> and V<sub>2</sub> such that (u, v) Î E implies either u &epsilon;V<sub>1</sub> and v &epsilon;V<sub>2</sub> or u &epsilon;V<sub>2</sub> and v &epsilon;V<sub>1</sub>. That is, all edges go between the two sets V<sub>1</sub> and V<sub>2</sub>. 
<br>In other to determine if a graph G = (V, E) is bipartite, we perform a BFS on it with a little modification such that whenever the BFS is at a vertex u and encounters a vertex v that is already 'gray' our modified BSF should check&nbsp; to see if the depth of both u and v are even, or if they are both odd. If either of these conditions holds which implies d[u] and d[v] have the same parity, then the graph is not bipartite. Note that this modification does not change the running time of BFS and remains Θ(V + E). 
<br>Formally, to check if the given graph is bipartite, the algorithm traverse the graph labeling the vertices 0, 1, or 2 corresponding to unvisited., partition 1 and partition 2 nodes. If an edge is detected between two vertices in the same partition, the algorithm returns. 
<br>&nbsp;<b> ALGORITHM: BIPARTITE (G, S) </b>
<br>For each vertex U Î V[G] - {s} do 
<br>Color[u] = WHITE 
<br>&nbsp;d[u] = &infin; 
<br>partition[u] = 0 
<br>
<br>Color[s] = gray 
<br>partition[s] = 1 
<br>d[s] = 0 
<br>Q = [s] 
<br>While Queue 'Q' is not empty do 
<br>u = head [Q] 
<br>&nbsp;&nbsp;&nbsp; for each v in Adj[u] do 
<br>&nbsp;&nbsp;&nbsp;&nbsp;if partition [u] = partition [v] then 
<br>&nbsp;&nbsp;&nbsp;&nbsp;return 0 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else 
<br>&nbsp;&nbsp;&nbsp;&nbsp;if color[v] WHITE then 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;color[v] = gray 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d[v] = d[u] +1 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;partition[v] = 3 - partition[u] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ENQUEUE (Q, v) 
<br>DEQUEUE (Q) 
<br>Color[u] = BLACK 
<br>Return 1 
<br>&nbsp; 
	<br><b><b>Correctness </b></b>
	<br>As Bipartite (G, S) traverse the graph it labels the vertices with a partition number consisted with the graph being bipartite. If at&nbsp; any vertex, algorithm detects an inconsistency, it shows with an invalid return value,. Partition value of u will always be a valid number as it was enqueued at some point and its partition was assigned at that point. AT line 19, partition of v will unchanged if it already set, otherwise it will be set to a value opposite to that of vertex u. 
<br>&nbsp;<b> Analysis </b>
<br>The lines added to BFS algorithm take constant time to execute and so the running time is the same as that of BFS which is O(V + E). 
<br>&nbsp; 
	<br><b><b>Diameter of Tree </b></b>
	<br>The diameter of a tree T = (V, E) is the largest of all shortest-path distance in the tree and given by max[dist(u,v)]. As we have mentioned that BSF can be use to compute, for every vertex in graph, a path with the minimum number of edges between start vertex and current vertex. It is quite easy to compute the diameter of a tree. For each vertex in the tree, we use BFS algorithm to get a shortest-path. By using a global variable length, we record the largest of all shortest-paths. This will clearly takes O(V(V + E)) time. 
<br>&nbsp; <b>ALGORITHM: TREE_DIAMETER (T) </b>
<br>maxlength = 0 
<br>For S = 0 to S &lt; |V[T]| 
<br>temp = BSF(T, S) 
<br>if maxlength &lt; temp 
<br>maxlength = temp 
<br>Increment s by 1 
<br>return maxlength 
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image10.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image10.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image10.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image11.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image11.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image11.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image11.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image11.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image10.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image10.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_breadth-first-search/image10.wmf"></sub>
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
