<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Strongly-Connected-Components.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Strongly_Connected_Components" %>
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
	<b>Strongly Connected Components </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Decomposing a directed graph into its strongly connected components is a classic application of DFS. Two vertices of directed graph are in the same component if and only if they are reachable from each other. For example, consider the following directed graph 
<br>Diagram 
<br>The above directed graph has four strongly connected components, namely {a, b, e}, {c, d}, {f, g} and {h}. 
<br>From any vertex v, one can visit to any other vertex in the same component as v and then return back v; if one visits a vertex in a different component the return to v is impossible. 
<br>&nbsp;The component graph for the above directed graph is 
<br>Diagram 
<br>The above directed graph has 4 strongly connected components: c<sub>1</sub>, c<sub>2</sub>, c<sub>3</sub> and c<sub>4</sub>. If G has an edge from some vertex in c<sub>i</sub> to some vertex in c<sub>j</sub> where i &#8800; j, then one can reach any vertex in c<sub>j</sub> from any vertex in c<sub>i</sub> but not return. In the example, one can reach any vertex in c<sub>3</sub> from any vertex in c<sub>1</sub> but cannot return to c<sub>1</sub> from c<sub>3</sub>. 
<br>&nbsp;If G = (V, E) is a directed graph, its transpose, G<sup>T</sup> = (V, E<sup>T</sup>) is the same as G with all arrows reversed. 
<br>For example, given directed graph G = (V, E) 
<br>Diagram 
<br>The transpose of G = (V, E) is G<sup>T</sup> = (V, E<sup>T</sup>) 
<br>Diagram 
<br>From above example it is apparent that edge set E<sup>T</sup> contains edge (u, v) iff edge set E contains (u, v). This observation implies that G<sup>T</sup> has same strongly components as G and the strongly components of G are transposes of&nbsp; strongly components of G<sup>T</sup>. 
<br>&nbsp; 
	<br><b><b>ALGORITHM </b></b>
	<br>A DFS(G) produces a forst of DFS-trees. Let C be any strongly connected component of G, let v be the first vertex on C discovered by the DFS and let T be the DFS-tree containing v when DFS-visit(v) is called all vertices in C are reachable from v along paths containing visible vertices; DFS-visit(v) will visit every vertex in C, add it to T as a descendant of v. 
<br>&nbsp;<b> STRONGLY-CONNECTED-COMPONENTS(G) </b>
<br>1. Call DFS(G) to compute finishing time for each vertex. 
<br>2. Compute transpose of G i.e., G<sup>T</sup>. 
<br>3. Call DFS(G<sup>T</sup>) but this time consider the vertices in order of decreasing finish time. 
<br>4. Out the vertices of each tree in DFS-forest. 
<br>&nbsp;Example (CLR)&nbsp;&nbsp; Consider a graph G = (V, E) 
<br>1. Call DFS(G) 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_strongly-connected-components/image1.gif"></sub>
<br>2. Compute G<sup>T</sup> 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_strongly-connected-components/image2.gif"></sub>
<br>&nbsp; 3. Call DFS(G<sup>T</sup>) but this time consider the vertices in order of decreasing finish time. 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_strongly-connected-components/image3.gif"></sub>
<br>First 16 
<br>Start with 10 
<br>Start with 7 
<br>4. Output the vertices of each tree in the DFS-forest as a separate strongly connected component. 
<br>{a, b, e}, {c, d}, {f, g} and {h} 
<br>&nbsp; The algorithm computes the strongly connected components of a directed graph G = (V, E) using two depth searches, one on G and one on G<sup>T</sup>. Thus, the total running time is linear i.e., Θ(V + E). 
<br>&nbsp; Before leaving strongly connected components, lets prove that component graph of G(V, E) is a directed acylic graph. 
<br><b>Proof&nbsp;</b>&nbsp;&nbsp; (by contradiction) 
<br>Suppose component graph of G = (V, E) was not a DAG and G comprised of a cycle consisting of vertices v<sub>1</sub>, v<sub>2</sub> , . . . , v<sub>n</sub> . Each vi corresponds to a strongly connected component (SCC) of component graph G. If v<sub>1</sub>, v<sub>2</sub> , . . . , v<sub>n</sub> themselves form a cycle then each v<sub>i</sub> ( i runs from 1 to n) should have been included in the SCC corresponding to v<sub>j</sub> ( j runs from 1 to n and i &#8800;j). But each of the vertices is a vertex from a difference SCC of G. Hence, we have a contradiction! Therefore, SCC of G is a directed acylic graph. 
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_strongly-connected-components/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_strongly-connected-components/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_strongly-connected-components/image4.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_strongly-connected-components/image5.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_strongly-connected-components/image5.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_strongly-connected-components/image5.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_strongly-connected-components/image5.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_strongly-connected-components/image5.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_strongly-connected-components/image4.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_strongly-connected-components/image4.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_strongly-connected-components/image4.wmf"></sub>
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
