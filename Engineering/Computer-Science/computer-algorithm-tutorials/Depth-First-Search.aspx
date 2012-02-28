<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Depth-First-Search.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Depth_First_Search" %>
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
	<b>Depth First Search (DFS) </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Depth first search (DFS) is useful for 
<br>· Find a path from one vertex to another 
<br>· Whether or not graph is connected 
<br>· Computing a spanning tree of a connected graph. 
<br>DFS uses the backtracking technique. 
<br>&nbsp; 
	<br><b><b>Algorithm Depth First Search </b></b>
	<br>Algorithm starts at a specific vertex S in G, which becomes current vertex. Then algorithm traverse graph by any edge (u, v) incident to the current vertex u. If the edge (u, v) leads to an already visited vertex v, then we backtrack to current vertex u. If, on other hand, edge (u, v) leads to an unvisited vertex v, then we go to v and v becomes our current vertex. We proceed in this manner until we reach to "deadend". At this point we start back tracking. The process terminates when backtracking leads back to the start vertex. 
<br>Edges leads to new vertex are called discovery or tree edges and edges lead to already visited are called back edges. 
<br>&nbsp; <b>DEPTH FIRST SEARCH (G, v) </b>
<br>Input:&nbsp;&nbsp;&nbsp; A graph G and a vertex v. 
<br>Output: Edges labeled as discovery and back edges in the connected component. 
<br>For all edges e incident on v do 
<br>If edge e is unexplored then 
<br>w  opposite (v, e) // return the end point of e distant to v 
<br>&nbsp;If vertex w is unexplained then 
<br>&nbsp;- mark e as a discovery edge 
<br>&nbsp;&nbsp;&nbsp;&nbsp;- Recursively call DSF (G, w) 
<br>&nbsp;&nbsp;else 
<br>&nbsp;&nbsp;&nbsp;- mark e as a back edge 
<br><b>&nbsp;Example (CLR) </b>
<br>&nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_depth-first-search/image1.gif"></sub> 
<br>Solid Edge&nbsp;&nbsp;&nbsp;&nbsp; = discovery or tree edge 
<br>Dashed Edge = back edge. 
<br>&nbsp; Each vertex has two time stamps: the first time stamp records when vertex is first discovered and second time stamp records when the search finishes examining adjacency list of vertex. 
<br>&nbsp; <b>DFS algorithm used to solve following problems. </b>
<br>Testing whether graph is connected. 
<br>Computing a spanning forest of graph. 
<br>Computing a path between two vertices of graph or equivalently reporting that no such path exists. 
<br>Computing a cycle in graph or equivalently reporting that no such cycle exists. 
<br>&nbsp; 
	<br><b><b>Analysis </b></b>
	<br>The running time of DSF is Θ(V + E). 
<br>&nbsp; Consider vertex u and vertex v in V[G] after a DFS. Suppose vertex v in some DFS-tree. Then we have d[u] &lt; d[v] &lt; f[v] &lt; f[u] because of the following reasons 
<br>1. Vertex u was discovered before vertex v; and 
<br>2. Vertex v was fully explored before vertex u was fully explored. 
<br>Note that converse also holds: if d[u] &lt; d[v] &lt; f[v] &lt; f[u] then vertex v is in the same DFS-tree and a vertex v is a descendent of vertex u. 
<br>Suppose vertex u and vertex v are in different DFS-trees or suppose vertex u and vertex v are in the same DFS-tree but neither vertex is the descendent of the other. Then one vertex was discovered and fully explored before the other was discovered i.e., f[u] &lt; d[v] or f[v] &lt; d[u]. 
<br>Consider a directed graph G = (V, E). After a DFS of graph G we can put each edge into one of four classes: 
<br>· A tree edge is an edge in a DFS-tree. 
<br>· A back edge connects a vertex to an ancestor in a DFS-tree. Note that a self-loop is a back edge. 
<br>· A forward edge is a nontree edge that connects a vertex to a descendent in a DFS-tree. 
<br>· A cross edge is any other edge in graph G. It connects vertices in two different DFS-tree or two vertices in the same DFS-tree neither of which is the ancestor of the other. 
<br>&nbsp; Lemma 1&nbsp;&nbsp; &nbsp;An Edge (u, v) is a back edge if and only if d[v] &lt; d[u] &lt; f[u] &lt; f[v]. 
<br><b>Proof </b>
<br>(=>  direction)&nbsp;&nbsp;&nbsp; From the definition of a back edge, it connects vertex u to an ancestor vertex v in a DFS-tree. Hence, vertex u is a descendent of vertex v. Corollary 23.7 in the CLR states that vertex u is a proper descendent of vertex v if and only if d[v] &lt; d[u] &lt; f[u] &lt; f[v]. Hence proved forward direction. 
<br>&nbsp; ( direction)&nbsp;&nbsp;&nbsp; Again by the Corollary 23.7 (CLR), vertex u is a proper descendent of vertex v. Hence if an edge (u, v) exists from u to v then it is an edge connecting a descendent vertex u to its ancestor vertex v. Hence it is a back edge. Hence proved backward direction. 
<br>Conclusion: Immediate from both directions. 
<br>&nbsp; Lemma 2&nbsp;&nbsp;&nbsp; An edge (u, v) is a cross edge if and only if d[v] &lt; f[v] &lt; d[u] &lt; f[v]. 
<br><b>Proof </b>
<br>First take =>  direction. 
<br>Observation 1&nbsp;&nbsp;&nbsp; For an edge (u, v), d[u] &lt; f[u] and d[v] &lt; f[v] since for any vertex has to be discovered before we can finish exploring it. 
<br>Observation 2&nbsp;&nbsp;&nbsp; From the definition of a cross edge it is an edge which is not a tree edge, forward edge or a backward edge. This implies that none of the relationships for forward edge [ d[u] &lt; d[v] &lt; f[v] &lt; f[u] ] or back edge [ d[v] &lt; d[u] &lt; f[u] &lt; f[v] ] can hold for a cross edge. 
<br>From the above two observations we conclude that the only two possibilities are: 
<br>d[u] &lt; f[u] &lt; d[v] &lt; f[v] and 
<br>d[v] &lt; f[v] &lt; d[u] &lt; f[u] 
<br>When the cross edge (u, v) is discovered we must be at vertex u and vertex v must be black. The reason is that if v was while then edge (u, v) would be a tree edge and if v was gray edge (u, v) would be a back edge. Therefore, d[v] &lt; d[u] and hence possibility (2) holds true. 
<br>&nbsp; Now take  direction. 
<br>We can prove this direction by eliminating the various possible edges that the given relation can convey. If d[v] &lt; d[v] &lt; d[u] &lt; f[u] then edge (u, v) cannot be a tree or a forward edge. Also, it cannot be a back edge by lemma 1. Edge (u, v) is not a forward or back edge. Hence it must be a cross edge (please go above and look again the definition of cross edge). 
<br>&nbsp; Conclusion: Immediately from both directions. 
<br>&nbsp; Just for the hell of it lets determine whether or not an undirected graph contain a cycle. It is not difficult to see that the algorithm for this problem would be very similar to DFS(G) except that when the adjacent edge is already a GRAY edge than a cycle is detected. While doing this the algorithm also takes care that it is not detecting a cycle when the GRAY edge is actually a tree edge from a ancestor to a descendent. 
<br>&nbsp; <b>ALGORITHM DFS_DETECT_CYCLES [G] </b>
<br>For each vertex u in V[G] do 
<br>Color [u] = while, 
<br>Predecessor [u] = NIL; 
<br>time = 0 
<br>For each vertex u in V[G] do 
<br>if color [u] = while 
<br>DFS_visit(u); 
<br>
<br>&nbsp; The subalgorithm DFS_visit(u) is as follows: 
<br>
<br>&nbsp; DFS_visit(u) 
<br>color(u) = GRAY 
<br>d[u] = time = time + 1 
<br>For each v in adj[u] do 
<br>if color[v] = gray and Predecessor[u] &#8800;v do 
<br>return "cycle exists" 
<br>if color[v] = while do 
<br>Predecessor[v] = u 
<br>Recursively DFS_visit(v) 
<br>color[u] = Black; 
<br>f[u] = time = time + 1 
<br>&nbsp; 
	<br><b><b>Correctness </b></b>
	<br>To see why this algorithm works suppose the node to visited v is a gray node, then there are two possibilities: 
<br>1. The node v is a parent node of u and we are going back the tree edge which we traversed while visiting u after visiting v. In that case it is not a cycle. 
<br>2. The second possibility is that v has already been encountered once during DFS_visit and what we are traversing now will be back edge and hence a cycle is detected. 
<br>&nbsp; 
	<br><b><b>Time Complexity </b></b>
	<br>The maximum number of possible edges in the graph G if it does not have cycle is |V| - 1. If G has a cycles, then the number of edges exceeds this number. Hence, the algorithm will detects a cycle at the most at the V<sup>th</sup> edge if not before it. Therefore, the algorithm will run in O(V) time. 
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_depth-first-search/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_depth-first-search/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_depth-first-search/image3.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_depth-first-search/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_depth-first-search/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_depth-first-search/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_depth-first-search/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_depth-first-search/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_depth-first-search/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_depth-first-search/image3.wmf"></sub>
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
