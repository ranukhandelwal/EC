<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Introduction-to-computer-algorithms.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Introduction_to_computer_algorithms" %>
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
	<b>Introduction to Computer Algorithms </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>An algorithm, named after the ninth century scholar Abu Jafar Muhammad Ibn Musu Al-Khowarizmi, is defined as follows: Roughly speaking: 
<br>1. An algorithm is a set of rules for carrying out calculation either by hand or on a machine. 
<br>2. An algorithm is a finite step-by-step procedure to achieve a required result. 
<br>3. An algorithm is a sequence of computational steps that transform the input into the output. 
<br>4. An algorithm is a sequence of operations performed on data that have to be organized in data structures. 
<br>5. An algorithm is an abstraction of a program to be executed on a physical machine (model of Computation). 
<br>The most famous algorithm in history dates well before the time of the ancient Greeks: this is Euclid's algorithm for calculating the greatest common divisor of two integers. 
	<br><b><b>The Classic Multiplication Algorithm </b></b>
	<br><b>1. Multiplication, the American way: </b>
<br>Multiply the multiplicand one after another by each digit of the multiplier taken from right to left.
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_introduction-to-computer-algorithms/image1.gif"></sub>
<br><b>2. Multiplication, the English way: </b>
<br>Multiply the multiplicand one after another by each digit of the multiplier taken from left to right.
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_introduction-to-computer-algorithms/image2.gif"></sub>
<br>&nbsp;Algorithmic is a branch of computer science that consists of designing and analyzing computer algorithms
<br>1. The "design” pertain to 
<br>I. The description of algorithm at an abstract level by means of a pseudo language, and 
<br>II. Proof of correctness that is, the algorithm solves the given problem in all cases. 
<br>2. The "analysis” deals with performance evaluation (complexity analysis). 
	<br>We start with defining the model of computation, which is usually the Random Access Machine (RAM) model, but other models of computations can be use such as PRAM. Once the model of computation has been defined, an algorithm can be describe using a simple language (or pseudo language) whose syntax is close to programming language such as C or java.
	<br><b><b>Algorithm's Performance </b></b>
	<br>Two important ways to characterize the effectiveness of an algorithm are its space complexity and time complexity. Time complexity of an algorithm concerns determining an expression of the number of steps needed as a function of the problem size. Since the step count measure is somewhat coarse, one does not aim at obtaining an exact step count. Instead, one attempts only to get asymptotic bounds on the step count. Asymptotic analysis makes use of the O (Big Oh) notation. Two other notational constructs used by computer scientists in the analysis of algorithms are Θ (Big Theta) notation and ohm Ω (Big Omega) notation. The performance evaluation of an algorithm is obtained by totaling the number of occurrences of each operation when running the algorithm. The performance of an algorithm is evaluated as a function of the input size n and is to be considered modulo a multiplicative constant.
	<br>The following notations are commonly use notations in performance analysis and used to characterize the complexity of an algorithm.
<br><b>Notation (Same order) </b>
	<br>This notation bounds a function to within constant factors. We say f(n) = Θ (g(n)) if there exist positive constants n<sub>0</sub>, c<sub>1</sub> and c<sub>2</sub> such that to the right of n<sub>0</sub> the value of f(n) always lies between c<sub>1</sub>g(n) and c<sub>2</sub>g(n) inclusive. 
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_introduction-to-computer-algorithms/image3.gif"></sub>
<br>&nbsp; <b>Notation (Upper Bound) </b>
	<br>This notation gives an upper bound for a function to within a constant factor. We write f(n) = O(g(n)) if there are positive constants n<sub>0</sub> and c such that to the right of n<sub>0</sub>, the value of f(n) always lies on or below cg(n). 
	<br>&nbsp; &nbsp; <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_introduction-to-computer-algorithms/image4.gif"></sub>
<br>&nbsp;<b> Notation (Lower Bound) </b>
	<br>This notation gives a lower bound for a function to within a constant factor. We write f(n) = Ω (g(n)) if there are positive constants n<sub>0</sub> and c such that to the right of n<sub>0</sub>, the value of f(n) always lies on or above cg(n). 
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_introduction-to-computer-algorithms/image5.gif"></sub>
	<br><b><b>Algorithm Analysis </b></b>
	<br>The complexity of an algorithm is a function g(n) that gives the upper bound of the number of operation (or running time) performed by an algorithm when the input size is n.
<br>There are two interpretations of upper bound.
<br>1. Worst-case Complexity: 
<br>The running time for any given size input will be lower than the upper bound except possibly for some values of the input where the maximum is reached. 
<br>2. Average-case Complexity : 
<br>The running time for any given size input will be the average number of operations over all problem instances for a given size. 
	<br>Because, it is quite difficult to estimate the statistical behavior of the input, most of the time we content ourselves to a worst case behavior. Most of the time, the complexity of g(n) is approximated by its family o(f(n)) where f(n) is one of the following functions. n (linear complexity), log n (logarithmic complexity), n<sup>a</sup> where a &#8805; 2 (polynomial complexity), a<sup>n</sup> (exponential complexity).
	<br><b><b>Optimality </b></b>
	<br>Once the complexity of an algorithm has been estimated, the question arises whether this algorithm is optimal. An algorithm for a given problem is optimal if its complexity reaches the lower bound over all the algorithms solving this problem. For example, any algorithm solving "the intersection of n segments” problem will execute at least n<sup>2</sup> operations in the worst case even if it does nothing but print the output. This is abbreviated by saying that the problem has Ω (n<sup>2</sup>) complexity. If one finds an O(n<sup>2</sup>) algorithm that solve this problem, it will be optimal and of complexity Θ (n<sup>2</sup>).
	<br><b><b>Reduction </b></b>
	<br>Another technique for estimating the complexity of a problem is the transformation of problems, also called problem reduction. As an example, suppose we know a lower bound for a problem A, and that we would like to estimate a lower bound for a problem B. If we can transform A into B by a transformation step whose cost is less than that for solving A, then B has the same bound as A.
<br>The Convex hull problem nicely illustrates "reduction" technique.&nbsp; A lower bound of Convex-hull problem established by reducing the sorting problem (complexity: Θ (nlogn)) to the Convex hull problem.
	<br>
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/introduction-to-computer-algorithms.aspx"></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Introduction to Algorithms</b>
<br>Discussion forum for Introduction to Algorithms</td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_introduction-to-computer-algorithms/image6.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_introduction-to-computer-algorithms/image7.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_introduction-to-computer-algorithms/image8.wmf"></sub>
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
