<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Linear-Inequalities-and-Linear-Equations.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Linear_Inequalities_and_Linear_Equations" %>
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
	<b>Linear Inequalities and Linear Equations</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
	<br><b><b>Inequalities </b></b>
	<br>The term inequality is applied to any statement involving one of the symbols &lt;, &gt;, &#8804;, &#8805;. 
<br>Example of inequalities are: 
<br>i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x &#8805;1 
<br>ii. &nbsp;&nbsp;&nbsp;&nbsp; x + y + 2z &gt; 16 
<br>iii. &nbsp;&nbsp;&nbsp; P<sup>2</sup> + q<sup>2</sup> &#8804;1/2 
<br>iv. &nbsp;&nbsp;&nbsp; A<sup>2</sup> + ab &gt; 1 
	<br><b><b>Fundamental Properties of Inequalities </b></b>
	<br>1.&nbsp;&nbsp;&nbsp; If a &#8804;b and c is any real number, then a + c &#8804;b + c. 
<br>For example, -3 &#8804;-1 implies -3+4 &#8804;-1 + 4. 
<br>2.&nbsp;&nbsp;&nbsp; If a &#8804;b and c is positive, then ac &#8804;bc. 
<br>For example, 2 &#8804;3 implies 2(4) &#8804;3(4). 
<br>3.&nbsp;&nbsp;&nbsp; If a &#8804;b and c is negative, then ac &#8805;bc. 
<br>For example, 3 &#8804;9 implies 3(-2) &#8805;9(-2). 
<br>4.&nbsp;&nbsp;&nbsp; If a &#8804;b and b &#8804;c, then a &#8804; c. 
<br>For example, -1/2 &#8804;2 and 2 &#8804;8/3 imply -1/2 &#8804;8/3. 
	<br><b><b>Solution of Inequality </b></b>
	<br>By solution of the one variable inequality 2x + 3 &#8804;7 we mean any number which substituted for x yields a true statement. 
<br>For example, 1 is a solution of 2x + 3 &#8804;7 since 2(1) + 3 = 5 and 5 is less than and equal to 7. 
<br>By a solution of the two variable inequality x - y &#8804;5 we mean any ordered pair of numbers which when substituted for x and y, respectively, yields a true statement. 
<br>For example, (2, 1) is a solution of x - y &#8804;5 because 2-1 = 1 and 1 &#8804;5. 
<br>By a solution of the three variable inequality 2x - y + z &#8805;3 we means an ordered triple of number which when substituted for x, y and z respectively, yields a true statement. 
<br>For example, (2, 0, 1) is a solution of 2x - y + z &#8805;3. A solution of an inequality is said to satisfy the inequality. For example, (2, 1) is satisfy x - y &#8804;5. 
<br>Two or more inequalities, each with the same variables, considered as a unit, are said to form a system of inequalities. For example, 
<br>&nbsp;&nbsp;x &#8805;0 
<br>&nbsp;y &#8805;0 
<br>2x + y &#8805;4 
<br>Note that the notion of a system of inequalities is analogous to that of a solution of a system of equations. 
<br>Any solution common to all of the inequalities of a system of inequalities is said to be a solution of that system of inequalities. A system of inequalities, each of whose members is linear, is said to be a system of linear inequalities. 
	<br><b><b>Geometric Interpretation of Inequalities </b></b>
	<br>An inequality in two&nbsp; variable x and y describes a region in the x-y plane (called its graph), namely, the set of all points whose coordinates&nbsp; satisfy the inequality. 
<br>The y-axis divide, the xy-plane into two regions, called half-planes. 
<br>1. Right half-plane : 
<br>The region of points whose coordinates satisfy inequality x &gt; 0. 
<br>2. Left half-plane: 
<br>The region of points whose coordinates satisfy inequality x &lt; 0. 
<br>Similarly, the x-axis divides the xy-plane into two half-planes. 
<br>3. Upper half-plane :
<br>In which inequality y &gt; 0 is true. 
<br>4. Lower half-plane: 
<br>In which inequality y &lt; 0 is true. 
<br>What is x-axis and y-axis? They are simply lines. So, the above arguments can be applied to any line. 
<br>Every line ax + by = c divides the xy-plane into two regions called its half-planes. 
<br>I. On one half-plane ax + by &gt; c is true. 
<br>II. On the other half-plane ax + by &lt; c is true. 
	<br><b><b>Linear Equations</b></b>
	<br><b><b>One Unknown </b></b>
	<br>A linear equation in one unknown can always be stated into the standard form 
<br>ax = b 
<br>where x is an unknown and a and b are constants. If a is not equal to zero, this equation has a unique solution 
<br>x = b/a 
	<br><b><b>Two Unknowns </b></b>
	<br>A linear equation in two unknown, x and y, can be put into the form 
<br>ax + by = c 
<br>where&nbsp; x and y are two unknowns and a, b, c are real numbers. Also, we assume that a and b are no zero. 
	<br><b><b>Solution of Linear Equation </b></b>
	<br>A solution of the equation consists of a pair of number, u = (k<sub>1</sub>, k<sub>2</sub>), which satisfies the equation ax + by = c. Mathematically speaking, a solution consists of&nbsp; u = (k<sub>1</sub>, k<sub>2</sub>) such that ak<sub>1</sub> + bk<sub>2</sub> = c. Solution of the equation can be found by assigning arbitrary values to x and solving for y OR assigning arbitrary values to y and solving for x. 
<br>Geometrically, any solution u = (k<sub>1</sub>, k<sub>2</sub>) of the linear equation ax + by = c determine a point in the cartesian plane. Since a and b are not zero, the solution u correspond precisely to the points on a straight line. 
	<br><b><b>Two Equations in the Two Unknowns </b></b>
	<br>A system of two linear equations in the two unknowns x and y is 
<br>A<sub>1</sub>x + b<sub>1</sub>x = c<sub>1</sub> 
<br>a<sub>2</sub>x + b<sub>2</sub>x = c<sub>2</sub> 
<br>Where a<sub>1</sub>, a<sub>2</sub>, b<sub>1</sub>, b<sub>2</sub> are not zero. A pair of numbers which satisfies both equations is called a simultaneous solution of the given equations or a solution of the system of equations. 
<br>Geometrically, there are three cases of a simultaneous solution 
<br>I. If the system has exactly one solution, the graph of the linear equations intersect in one point. 
<br>2. If&nbsp; the system has no solutions, the graphs of the linear equations are parallel. 
<br>3. If the system has an infinite number of solutions, the graphs of the linear equations coincide. 
<br>The special cases (2) and (3) can only occur when the coefficient of x and y in the two linear equations are proportional. 
<br>(a<sub>1</sub>/a<sub>2</sub>)=(b<sub>1</sub>/b<sub>2</sub>) 
<br>OR&nbsp; (a<sub>1</sub>/a<sub>2</sub>) = (b<sub>1</sub>/b<sub>2</sub>) &nbsp; =&gt;&nbsp; a<sub>1</sub>b<sub>2</sub> - a<sub>2</sub>b<sub>1</sub> = 0&nbsp;&nbsp;&nbsp; =&gt; <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_linear-inequalities-and-linear-equations/image1.gif"></sub>= 0 
<br>The system has no solution when (a<sub>1</sub>/a<sub>2</sub>) = (b<sub>1</sub>/b<sub>2</sub>) &#8800; (c<sub>1</sub>/c<sub>2</sub>) 
<br>The solution to system 
<br>A<sub>1</sub>x + b<sub>1</sub>x = c<sub>1</sub> 
<br>a<sub>2</sub>x + b<sub>2</sub>x = c<sub>2</sub> 
<br>can be obtained by the elimination process, whereby reduce the system to a single equation in only one unknown. This is accomplished by the following algorithm 
<br><b>ALGORITHM </b>
<br>&nbsp;&nbsp; Step 1.&nbsp;&nbsp;&nbsp; Multiply the two equation by two numbers which are such that &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; the resulting coefficients of one of the unknown are negative of &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; each other. 
<br>&nbsp;&nbsp;Step 2 .&nbsp;&nbsp;&nbsp; Add the equations obtained in Step 1. 
<br>&nbsp; The output of this algorithm is a&nbsp; linear equation in one unknown. This equation may be solved for that unknown, and the solution may be substituted in one of the original equations yielding the value of the other unknown. 
<br>As an example, consider the following system 
<br>3x + 2y = 8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ------------&nbsp; (1) 
<br>2x - 5y = -1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ------------&nbsp; (2) 
<br>Step 1: Multiply equation (1) by 2 and equation (2) by -3 
<br>&nbsp;6x + 4y = 16 
<br>-6x + 15y = 3 
<br>Step 2: Add equations, output of Step 1 
<br>19y = 19 
<br>Thus, we obtain an equation involving only unknown y. we solve for y to obtain 
<br>y = 1 
<br>Next, we substitute y =1 in equation (1) to get 
<br>x = 2 
<br>Therefore, x = 2 and y = 1 is the unique solution to the system. 
	<br><b><b>n Equations in n Unknowns </b></b>
	<br>Now, consider a system of n linear equations in n unknowns 
<br>A<sub>11</sub>x<sub>1</sub> +&nbsp; a<sub>12</sub>x<sub>2</sub> + . . . + a<sub>1n</sub>x<sub>n</sub> = b<sub>1</sub> 
<br>a<sub>21</sub>x<sub>1</sub> +&nbsp; a<sub>22</sub>x<sub>2</sub> + . . . + a<sub>2n</sub>x<sub>n</sub> = b<sub>2</sub> 
<br>&nbsp;………………………………………………………… 
<br>a<sub>n1</sub>x<sub>1</sub> +&nbsp; a<sub>n2</sub>x<sub>2</sub> + . . . + a<sub>nn</sub>x<sub>n</sub> = b<sub>n</sub> 
<br>Where the a<sub>ij</sub>, b<sub>i</sub> are real numbers. The number a<sub>ij</sub> is called the coefficient of x<sub>j</sub> in the i<sup>th</sup> equation, and the number b<sub>i</sub> is called the constant of the ith equation. A list of values for the unknowns, 
<br>X<sub>1</sub> = k<sub>1</sub>, x<sub>2</sub> = k<sub>2</sub>, . . . , x<sub>n</sub> = k<sub>n</sub> 
<br>or equivalently, a list of n numbers 
<br>u = (k<sub>1</sub>, k<sub>2</sub>, . . . , k<sub>n</sub>) 
<br>is called a solution of the system if, with k<sub>j</sub> substituted for x<sub>j</sub>, the left hand side of each equation in fact equals the right hand side. 
<br>The above system is equivalent to the matrix equation. 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_linear-inequalities-and-linear-equations/image2.gif"></sub>
<br>or, simply we can write A x = B, where A = (a<sub>ij</sub>), x = (x<sub>i</sub>), and B = (b<sub>i</sub>). 
<br>The matrix&nbsp; <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_linear-inequalities-and-linear-equations/image3.gif"></sub>is called the coefficient matrix of the system of n linear equations in the system of n unknown. 
<br>The matrix&nbsp; <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_linear-inequalities-and-linear-equations/image4.gif"></sub>is called the augmented matrix of n linear&nbsp; equations in n unknown. 
<br>Note for algorithmic nerds: we store a system in the computer as its augmented matrix. Specifically, system is stored in computer as an N x (N+1) matrix array A, the augmented matrix array A, the augmented matrix of the system. Therefore, the constants b<sub>1</sub>, b<sub>2</sub>, . . . , b<sub>n</sub> are respectively stored as <sup>A</sup>1,N+1, <sup>A</sup>2,N+1, . . . , <sup>A</sup>N,N+1. 
	<br><b><b>Solution of a Triangular System </b></b>
	<br>If&nbsp; a<sub>ij</sub> = 0 for i &gt; j, then system of n linear equations in n unknown assumes the triangular form. 
<br>a<sub>11</sub>x<sub>1</sub> +&nbsp; a<sub>12</sub>x<sub>2</sub> + . . . + a<sub>1,n-1</sub> x<sub>n-1</sub> + a<sub>1n</sub>x<sub>n</sub>&nbsp; =&nbsp;&nbsp; b<sub>1</sub> 
<br>A<sub>22</sub>x<sub>2</sub> + . . . + a<sub>2,n-1</sub>x<sub>n-1</sub> + a<sub>2n</sub>x<sub>n</sub>&nbsp; =&nbsp;&nbsp; b<sub>2</sub> 
<br>. . . . . . . . . . . . . . . . . . . . . . . . . . . . 
<br>A<sub>n-2,n-2</sub>x<sub>n-2</sub> + a<sub>n-2,n-1</sub>x<sub>n-1</sub> + a<sub>n-2,n</sub>xn-1 + a<sub>2n</sub>x<sub>n</sub> =&nbsp;&nbsp;&nbsp; b<sub>2</sub>&nbsp; 
<br>A<sub>n-1,n-1</sub>x<sub>n-1</sub> + a<sub>n-1,n</sub>x<sub>n</sub> =&nbsp;&nbsp; b<sub>n-1</sub> 
<br>A<sub>mn</sub>x<sub>n</sub> =&nbsp;&nbsp; b<sub>n</sub> 
<br>Where |A| = a<sub>11</sub>a<sub>22</sub> . . .&nbsp; a<sub>nn</sub>; If none of the diagonal entries a<sub>11</sub>,a<sub>22</sub>, . . .,&nbsp; a<sub>nn</sub> is zero, the system has a unique solution. 
	<br><b><b>Back Substitution Method </b></b>
	<br>we obtain the solution of a triangular system by the technique of back substitution, consider the above general triangular system. 
<br>1. First, we solve the last equation for the last unknown, x<sub>n</sub>; 
<br>x<sub>n</sub> = b<sub>n</sub>/a<sub>nn</sub> 
<br>2. Second, we substitute the value of x<sub>n</sub> in the next-to-last equation and solve it for the next-to-last unknown, x<sub>n-1</sub>: 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_linear-inequalities-and-linear-equations/image5.gif"></sub>. 
<br>3. Third, we substitute these values for x<sub>n</sub> and x<sub>n-1</sub> in the third-from-last equation and solve it for the third-from-last unknown, x<sub>n-2</sub> : 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_linear-inequalities-and-linear-equations/image6.gif"></sub>. 
<br>In general, we determine x<sub>k</sub> by substituting the previously obtained values of x<sub>n</sub>, x<sub>n-1</sub>, . . . , x<sub>k+1</sub> in the k<sup>th</sup> equation. 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_linear-inequalities-and-linear-equations/image7.gif"></sub>.&nbsp;&nbsp; &nbsp;&nbsp;
<br>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
	<br><b><b>Gaussian Elimination </b></b>
	<br>Gaussian elimination is a method used for finding the solution of a system of linear equations. This method consider of two parts. 
<br>1. This part consists of step-by-step putting the system into triangular system. 
<br>2. This part consists of solving the triangular system by back substitution. 
<br>x - 3y - 2z = 6&nbsp;&nbsp; --- (1) 
<br>2x - 4y + 2z = 18&nbsp; --- (2) 
<br>-3x + 8y + 9z = -9&nbsp;&nbsp; --- (3) 
<br><b>First Part </b>
<br>Eliminate first unknown x from the equations 2 and 3. 
<br>(a) multiply -2 to equation (1) and add it to equation (2). Equation (2) becomes 
<br>&nbsp; 2y + 6z = 6 
<br>(b) Multiply 3 to equation (1) and add it to equation (3). Equation (3) becomes 
<br>-y + 3z = 9 
<br>And the original system is reduced to the system 
<br>x - 3y - 2z = 6 
<br>&nbsp;&nbsp;2y + 6z = 6 
<br>-y + 3z = 9 
<br>Now, we have to remove the second unknown, y, from new equation 3, using only the new equation 2 and 3 (above). 
<br>a, Multiply equation (2) by 1/2 and add it to equation (3). The equation (3) becomes 6z = 12. 
<br>Therefore, our given system of&nbsp; three linear equation of 3 unknown is reduced to the triangular system 
<br>x - 3y - 2z&nbsp;&nbsp; = 6 
<br>&nbsp; 2y + 6z&nbsp;&nbsp; = 6 
<br>&nbsp; 6z&nbsp; = 12 
<br><b>Second Part </b>
<br>In the second part, we solve the equation by back substitution and get 
<br>&nbsp; x = 1, y = -3, z = 2 
<br>In the first stage of the algorithm, the coefficient of x in the first equation is called the pivot, and in the second stage of the algorithm, the coefficient of y in the second equation is the point. Clearly, the algorithm cannot work if either pivot is zero. In such a case one must interchange equation so that a pivot is not zero. In fact, if one would like to code this algorithm, then the greatest accuracy is attained when the pivot is as large in absolute value as possible. For example, we would like to interchange equation 1 and equation 2 in the original system in the above example before eliminating x from the second and third equation. 
<br>That is, first step of the algorithm transfer system as 
<br>2x - 4y + 2z = 18 
<br>x - 4y + 2z = 18 
<br>&nbsp;-3x + 8y + 9z = -9 
	<br><b><b>Determinants and systems of linear equations </b></b>
	<br>Consider a system of n linear equations in n unknowns. That is, for the following system 
<br>&nbsp;&nbsp; A<sub>11</sub>x<sub>1</sub> +&nbsp; a<sub>12</sub>x<sub>2</sub> + . . . + a<sub>1n</sub>x<sub>n</sub> = b<sub>1</sub> 
<br>A<sub>21</sub>x<sub>1</sub> +&nbsp; a<sub>22</sub>x<sub>2</sub> + . . . + a<sub>2n</sub>x<sub>n</sub> = b<sub>2</sub> 
<br>&nbsp;. . . . . . . . . . . . . . . . . . . . . . . . . 
<br>a<sub>n1</sub>x<sub>1</sub> +&nbsp; a<sub>n2</sub>x<sub>2</sub> + . . . + a<sub>nn</sub>x<sub>n</sub> = b<sub>n</sub> 
<br>Let D denote the determinant of the matrix A +(a<sub>ij</sub>) of coefficients; that is, let D =|A|. Also, let N<sub>i</sub> denote the determinants of the matrix obtained by replacing the i<sup>th</sup> column of A by the column of constants. 
<br><b>Theorem.</b> If D&#8800; 0, the above system of linear equations has the unique solution u={(N<sub>1</sub>/D),(N<sub>2</sub>/D), ..... , (N<sub>n</sub>/D)}. 
<br>This theorem is widely known as Cramer's rule. It is important to note that Gaussian elimination is usually much more efficient for solving systems of linear equations than is the use of determinants. 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/linear-inequalities-and-linear-equations.aspx"></asp:HyperLink></td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_linear-inequalities-and-linear-equations/image8.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_linear-inequalities-and-linear-equations/image9.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_linear-inequalities-and-linear-equations/image10.wmf"></sub>
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
