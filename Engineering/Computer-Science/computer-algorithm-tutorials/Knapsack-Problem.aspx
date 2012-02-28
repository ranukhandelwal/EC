<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Knapsack-Problem.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Knapsack_Problem" %>
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
	<b>Knapsack Problem </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Statement</b>&nbsp;&nbsp;&nbsp; A thief robbing a store and can carry a maximal weight of w into their knapsack. There are n items and i<sup>th</sup> &nbsp;item weigh w<sub>i</sub> and is worth v<sub>i</sub> dollars. What items should thief take? 
<br>There are two versions of problem 
<br>I. <b>Fractional knapsack problem </b>
<br>The setup is same, but the thief can take fractions of items, meaning that the items can be broken into smaller pieces so that thief may decide to carry only a fraction of x<sub>i</sub> of item i, where 0 &#8804; x<sub>i</sub> &#8804; 1. 
<br>Exhibit greedy choice property. 
<br>§ Greedy algorithm exists. 
<br>Exhibit optimal substructure property. 
<br>§ ????? 
<br>II. <b>0-1 knapsack problem</b> 
<br>The setup is the same, but the items may not be broken into smaller pieces, so thief may decide either to take an item or to leave it (binary choice), but may not take a fraction of an item. 
<br>Exhibit No greedy choice property. 
<br>§ No greedy algorithm exists. 
<br>Exhibit optimal substructure property. 
<br>§ Only dynamic programming algorithm exists. 
<br>
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Þ</b><b> Click here for O-I Knapsack details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/o-i-knapsack.aspx"></asp:HyperLink>
<br>
<br>
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Þ</b><b> Click here for Fractional Knapsack details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/%20fractional-knapsack.aspx"></asp:HyperLink>
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink3" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/knapsack-problem.aspx"></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Knapsack Problem</b>
<br>Discussion forum for Knapsack Problem</td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_knapsack-problem/image1.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_knapsack-problem/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_knapsack-problem/image3.wmf"></sub>
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
