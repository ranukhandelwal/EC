<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Euler-Tour.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Euler_Tour" %>
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
	<b>Euler Tour </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>The motivation of this section is derived from the famous Konigsberg bridge problem solved by Leonhard Euler in 1736. The 18th century German city of Königsberg was situated on the river Pregel. Within a park built on the banks of the river, there were two islands joined by seven bridges. The puzzle asks whether it is possible to take a tour through the park, crossing each bridge only once. 
<br>An exhaustive search requires starting at every possible point and traversing all the possible paths from that point - an O(n!) problem. However Euler showed that an Eulerian path existed if and only if 
<br>· it is possible to go from any vertex to any other by following the edges (the graph must be connected) and 
<br>· every vertex must have an even number of edges connected to it, with at most two exceptions (which constitute the starting and ending points). 
<br>It is easy to see that these are necessary conditions: to complete the tour, one needs to enter and leave every point except the start and end points. The proof that these are sufficient conditions may be found in the literature . Thus we now have a O(n) problem to determine whether a path exists. 
<br>&nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_euler-tour/image1.gif"></sub> 
<br>&nbsp;In order to get a solution transform the map into a graph in which the nodes represent the "dry land" points and the arcs represent the bridges. 
<br>&nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_euler-tour/image2.gif"></sub> 
<br>&nbsp;We can now easily see that the Bridges of Königsberg does not have a solution. A quick inspection shows that it does have a Hamiltonian path. 
<br>&nbsp;<b> Definition </b>&nbsp;&nbsp;&nbsp; A Euler tour of a connected, directed graph G = (V, E) is a cycle that traverses each edge of graph G exactly once, although it may visit a vertex more than once. 
<br>In the first part of this section we show that G has an Euler tour if and only if in-degrees of every vertex is equal to out-degree vertex. In the second part, we describe an algorithm to find an Euler tour of graph if one exists. 
<br>Part 1&nbsp;&nbsp;&nbsp; Show that G has an Euler tour if and only if in-degree(v) = out-degree(v) for each vertex vÎV 
<br><b>Proof </b>
<br>First we'll work with =>  direction. 
<br>We will call a cycle simple if it visits each vertex no more than once, and complex if can visit a vertex more than once. We know that each vertex in a simple cycle in-degree and out-degree one, and any complex cycles can be expressed as a union of simple cycles. This implies that any vertex in a complex cycle (and in particular an Euler tour) has in-degree equal to its out-degree. Thus, if a graph has an Euler tour than all of its vertices have equal in- and out- degrees. 
<br>&nbsp;Now look at the  direction. 
<br>Suppose we have a connected graph for which the in-degree and out-degree of all vertices are equal. Let C be the longest complex cycle within G. If C is not an Euler tour, then there is a vertex v of G touched by C such that not all edges in and out v of are exhausted by C. We may construct a cycle C` in G-C starting and ending at v by performing a walk in G-C. (The reason is that G-C also has a property that in-degrees and out-degrees are equal.) this simply means that the complex cycle that starts at v goes along the edges of C` (returning to v) and then goes along the edges of C is a longer complex cycle than C. This contradicts our choice of C as the longest complex cycle which means that C must have been an Euler tour. 
<br>&nbsp;Part 2 Find an Euler tour of given graph G if one exists. 
	<br><b><b>&nbsp;ALGORITHM </b></b>
	<br>Given a starting vertex , the v<sub>0</sub> algorithm will first find a cycle C starting and ending at&nbsp; v<sub>0</sub> such that C contains all edges going into and out of&nbsp; v<sub>0</sub>. This can be performed by a walk in the graph. As we discover vertices in cycle C, we will create a linked list which contains vertices in order and such that the list begins and ends in vertex&nbsp; v<sub>0</sub>. We set the current painter to the head of the list. We now traverse the list by moving our pointer "current" to successive vertices until we and a vertex which has an outgoing edge which has not been discovered. (If we reach the end of the list, then we have already found the Euler tour). Suppose we find the vertex,&nbsp; v<sub>i</sub>, that has an undiscovered outgoing edge. We then take a walk beginning and ending at&nbsp; v<sub>i</sub> such that all undiscovered edges containing vi are contained in the walk. We insert our new linked list into old linked list in place of v<sub>i</sub> and more "current" to the new neighbor pointed to the first node containing v<sub>i</sub>. We continue this process until we search the final node of the linked list, and the list will then contains an Euler tour. 
<br>&nbsp; 
	<br><b><b>Running Time of Euler Tour </b></b>
	<br>The algorithm traverse each edge at most twice, first in a walk and second while traversing the list to find vertices with outgoing edges. Therefore, the total running time of the algorithm is O(|E|). 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/euler-tour.aspx"></asp:HyperLink></td>
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
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Start your new thread here</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Enter thread subject</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_euler-tour/image3.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_euler-tour/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_euler-tour/image5.wmf"></sub>
</td>
</tr></table>
<br>Bottom of Form
</td>
</tr></table>
<br>
</td>
</tr></table>
</div>
</asp:Content>
