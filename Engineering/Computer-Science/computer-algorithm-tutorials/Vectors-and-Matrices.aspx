<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Vectors-and-Matrices.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Vectors_and_Matrices" %>
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
	<b>Vectors and Matrices </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>A vector, u, means a list (or n-tuple) of numbers: 
<br>u = (u<sub>1</sub>, u<sub>2</sub>, . . . , u<sub>n</sub>)
<br>where u<sub>i</sub> are called the components of u. If all the u<sub>i</sub> are zero i.e., u<sub>i</sub> = 0, then u is called the zero vector. 
<br>Given vectors u and v are equal i.e., u = v, if they have the same number of components and if corresponding components are equal. 
	<br><b><b>Addition of Two Vectors </b></b>
	<br>If two vectors, u and v, have the number of components, their sum, u + v, is the vector obtained by adding corresponding components from u and v. 
<br>&nbsp;&nbsp;&nbsp; u + v = (u<sub>1</sub>, u<sub>2</sub>, . . . , u<sub>n</sub>) + (v<sub>1</sub>, v<sub>2</sub>, . . . , v<sub>n</sub>) 
<br>&nbsp;&nbsp;&nbsp; = (u<sub>1</sub> + v<sub>1</sub> + u<sub>2</sub> + v<sub>2</sub>, . . . , u<sub>n</sub> + v<sub>n</sub>)
	<br><b><b>Multiplication of a vector by a Scalar </b></b>
	<br>The product of a scalar k and a vector u i.e., k<sub>u</sub>, is the vector obtained by multiplying each component of u by k: 
<br>ku&nbsp; = k(u<sub>1</sub>, u<sub>2</sub>, . . . , u<sub>n</sub>)
<br>&nbsp;&nbsp;= ku<sub>1</sub>, ku<sub>2</sub>, . . . , ku<sub>n</sub>
<br>&nbsp;Here, we define&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -u = (-1)u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u-v = u +(-v) 
<br>It is not difficult to see k(u + v) = ku + kv where k is a scalar and u and v are vectors
	<br><b><b>Dot Product and Norm </b></b>
	<br>The dot product or inner product of vectors u = (u<sub>1</sub>, u<sub>2</sub>, . . . , u<sub>n</sub>) and v = (v<sub>1</sub>, v<sub>2</sub>, . . . , v<sub>n</sub>) is denoted by u.v and defined by
<br>u.v = u<sub>1</sub>v<sub>1</sub> + u<sub>2</sub>v<sub>2</sub> + . . . + u<sub>n</sub>v<sub>n</sub>
<br>The norm or length of a vector, u, is denoted by ||u|| and defined by 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image1.gif"></sub>
	<br><b><b>Matrices </b></b>
	<br>Matrix, A, means a rectangular array of numbers
<br>A = <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image2.gif"></sub>
<br>The m horizontal n-tuples are called the rows of A, and the n vertical m-tuples, its columns. Note that the element a<sub>ij</sub>, called the ij-entry, appear in the i<sup>th</sup> row and the j<sup>th</sup> column. 
<br>In algorithmic (study of algorithms), we like to write a matrix A as A(a<sub>ij</sub>).
	<br><b><b>Column Vector </b></b>
	<br>A matrix with only one column is called a column vector
	<br><b><b>Zero Matrix </b></b>
	<br>A matrix whose entries are all zero is called a zero matrix and denoted by 0. 
	<br><b><b>Matrix Addition </b></b>
	<br>Let A and B be two matrices of the same size. The sum of A and B is written as A + B and obtained by adding corresponding elements from A and B. 
<br>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; A+B = <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image3.gif"></sub>
<br>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; = <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image4.gif"></sub>
	<br><b><b>Scalar Multiplication </b></b>
	<br>The product of a scalar k and a matrix A, written kA or Ak, is the matrix obtained by multiplying each element of A by k. 
<br>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; kA&nbsp; = k <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image2.gif"></sub>
<br>&nbsp; =&nbsp;&nbsp; <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image5.gif"></sub>
<br>Here, we define &nbsp;&nbsp;&nbsp; -A = (-1)A&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; and&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; A - B = A + (-B). Note that -A is the negative of the matrix A. 
	<br><b><b>Properties of Matrix under Addition and Multiplication </b></b>
	<br>Let A, B, and C be matrices of same size and let k and l be scalars. Then 
<br>I. (A + B) + A + (B + C) 
<br>II. A + B = B + A 
<br>III. A + 0 = 0 + A = A 
<br>IV. A + (-A) = (-A) + A = 0 
<br>V. k(A + B) = kA + kB 
<br>VI. (k + l)A = kA + lA 
<br>VI (kl)A = k(lA) 
<br>VIII. lA = A 
	<br><b><b>Matrix Multiplication </b></b>
	<br>Suppose A and B are two matrices such that the number of columns of A is equal to number of rows of B. Say matrix A is an mxp matrix and matrix B is a pxn matrix. Then the product of A and B is the mxn matrix whose ij-entry is obtained by multiplying the elements of the ith row of a by the corresponding elements of the jth column of B and then adding them. 
<br>It is important to note that if the number of columns of A is not equal to the number of rows of B, then the product AB is not defined. 
	<br><b><b>Properties of Matrix Multiplication </b></b>
	<br>Let A, B, and C be matrices and let k be a scalar. Then
<br>I. (AB)C = A(BC) 
<br>II. A(B+C) = AB + AC 
<br>III. (B+C)A = BA + CA 
<br>IV. k(AB) = (kB)B = A(kB) 
	<br><b><b>Transpose </b></b>
	<br>The transpose of a matrix A is obtained by writing the row of A, in order, as columns and denoted by A<sup>T</sup>. In other words, if A - (A<sub>ij</sub>), then B = (b<sub>ij</sub>) is the transpose of A if b<sub>ij</sub> - a<sub>ji</sub> for all i and j. 
<br>It is not hard to see that if A is an mxn matrix, then A<sup>T</sup> is an nxm matrix. 
<br>For example if&nbsp; A = <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image6.gif"></sub>, then A<sup>T</sup> = <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image7.gif"></sub>
	<br><b><b>Square Matrix </b></b>
	<br>If&nbsp; the number of rows and the number of columns of any matrix are the same, we say matrix is a square matrix, i.e., a square matrix has same number of rows and columns. A square matrix with n rows and n columns is said to be order n and is called an n-square matrix. 
<br>The main diagonal, or simply diagonal, of an n-square matrix A = (a<sub>ij</sub>) consists of&nbsp; the elements a<sub>11</sub>, a<sub>22</sub>, a<sub>33</sub>, . . . , a<sub>mn</sub>.
	<br><b><b>Unit Matrix </b></b>
	<br>The n-square matrix with 1's along the main diagonal and 0's elsewhere is called the unit matrix and usually denoted by I. 
<br>Why unit matrix? 
<br>The unit matrix plays the same role in matrix multiplication as the number 1 does in the usual multiplication of numbers. 
<br>AI = IA = A
<br>for any square matrix A. 
<br>So what dude? 
<br>We can form powers of a square matrix X by defining 
<br>X<sup>2</sup> = XX
<br>X<sup>3</sup> = X<sup>2</sup>X, XXX, . . . 
<br>X<sup>0</sup> = I
<br>Big deal! 
<br>We can also form polynomial in X. That is, for any polynomial 
<br>f(x) = a<sub>0</sub> + a<sub>1</sub>x + a<sub>2</sub>x<sup>2</sup> + . . . + a<sub>n</sub>x<sup>n</sup>
<br>We define f(x) to be the matrix
<br>f(x) = a<sub>0</sub>I + a<sub>1</sub>x + a<sub>2</sub>x<sup>2</sup> + . . . + a<sub>n</sub>x<sup>n</sup>
<br>Note that in the case that f(A) is the zero matrix, then matrix A said to be a zero of the polynomial f(x) or a root of the polynomial equation f(x) = 0. 
<br>Now you're talking !!!! 
	<br><b><b>Invertible Matrices </b></b>
	<br>A square&nbsp; matrix&nbsp; A is said to be invertible if there exists a matrix B with the property AB = BA = I (Identity Matrix). Such a matrix B is unique and it is called the matrix of A and is denoted by A<sup>-1</sup>. Here, the important observation is that B is the inverse of A if and only if A is the matrix of B. It is known that AB = I if and only if BA = I; hence it is necessary to test only one product to determine whether two given matrices are inverse. 
	<br><b><b>Determinants </b></b>
	<br>To each n-square matrix A = (a<sub>ij</sub>), we assign a specific number called the determinants of A and denoted as
<br>|A| &nbsp;&nbsp;&nbsp; = &nbsp;&nbsp;&nbsp; del(A) 
<br>&nbsp;=&nbsp;&nbsp; <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image8.gif"></sub>
<br>where an n by n arrays of numbers enclosed by straight lines is called a determinant of order n. 
<br>It is important to note that n by n array of numbers enclosed by straight line (see above) is NOT a matrix but denotes the number that the determinant function assigns to the enclosed array of numbers, i.e., the enclosed square matrix. 
<br>The determinant of order one is&nbsp; |a<sub>11</sub>| = a<sub>11</sub>
<br>The determinant of order two is&nbsp;&nbsp; <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image9.gif"></sub>= a<sub>11</sub>a<sub>22</sub> - a<sub>12</sub>a<sub>21</sub>
<br>The determinant of order three is&nbsp;&nbsp;&nbsp; <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image10.gif"></sub>= a<sub>11</sub>a<sub>22</sub>a<sub>32</sub>+ a<sub>12</sub>a<sub>23</sub>a<sub>31</sub> + a<sub>13</sub>a<sub>21</sub>a<sub>32</sub> - a<sub>13</sub>a<sub>22</sub>a<sub>31</sub> - a<sub>12</sub>a<sub>21</sub>a<sub>33</sub> - a<sub>11</sub>a<sub>23</sub>a<sub>32</sub>
<br>The determinant of order fo... You get the picture ! 
	<br><b><b>General Definition of Determinant </b></b>
	<br>The general definition of&nbsp; a determinant of order n is as follows
<br>det(A) = sgn(&sigma;)a<sub>1j1</sub>a<sub>2j2</sub> ...... a<sub>xjn</sub>
<br>where the sum is over all possible permutations &sigma;= (j<sub>1</sub>, j<sub>2</sub> , . . . , j<sub>n</sub> ) of (1, 2, . . . , n). Here sgn(&sigma;) equals plus or minus one according as an even or an odd number of interchanges are required to change &sigma; so that its numbers are in the usual order. 
<br>An important property of the determinant function is 
<br><b>Lemma.</b> For any two n-square matrices A and B, det(AB) = det(A) . det(B). 
<br>In simple words the lemma say that the determinant function is multiplicative. 
<br>An important point in the context of invertible matrices and determinant is
<br><b>Lemma.</b> A square matrix is invertible if and only if it has a nonzero determinant. 
<br>A good news and a bad news: If&nbsp; you're an under graduate, you're done here! now goto CLR- If you're graduate and interested in theoretical Computer Science its time to go and find some good on matrix theory. (You'll need this shit for Linear Programming, for example). 
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image11.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image11.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image11.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image12.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image12.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image12.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image12.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image12.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image11.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image11.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_vectors-and-matrices/image11.wmf"></sub>
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
