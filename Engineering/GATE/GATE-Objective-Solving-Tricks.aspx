<%@ Page Language="C#" MasterPageFile="~/Masters/gatelinks.master" AutoEventWireup="True" CodeBehind="GATE-Objective-Solving-Tricks.aspx.cs"  Inherits="ExamCrazy.Engineering.GATE.GATE_Objective_Solving_Tricks" %>
<%@ MasterType VirtualPath="~/Masters/gatelinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>Objective Solving Tricks for GATE exam </b></td>
</tr>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
<br><b>Objective Solving Tricks</b> by GATE Tutor(gate.tutor@gmail.com) 
<br>
<br>Most of time students complain that they <b>couldn't complete</b> their objective paper; they were struck in one or another problem and wasted a lot of time. Some says that their guess went wrong and marks were deducted due to <b>negative marking</b>, some could not read paper completely and <b>missed some easy questions</b> etc.
<br>I'll like to stress that <b>objective paper solving is different</b> from subjective paper. You don't need to study extra for objective questions but practice little bit.
<br>Your guess in solving objective can bring you in difficulty but some <b>intelligent/educated guess</b> can add valuable marks to your score. Most of time objective questions have <b>some hint</b> in the form of multiple choices for the question. 
<br>Following can be used as guidelines for solving objective paper:
<br>
<br><b>General Tips</b>
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; Keep the structure of GATE in mind(25 Quest 1 Mark each, 30 Quest. 2 Marks each with 4 common data questions and 4 Linked Questions).
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; Plan your time. Allow more time for high point value questions; reserve time at the end to review your work, and for emergencies. I'll suggest following sequence, but you can keep as per your choice: 2 Marks question, Common Data Questions, Linked questions and then single mark questions.
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; Look the whole test over, skimming the quesitons and developing a general plan for your work. If any immediate thoughts come to you, jot them down in the margin 
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; Start with the section of the test that will yield the most points, but begin working with the easiest questions to gain time for the more difficult ones and to warm up. 
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; Work quickly, check your timing regularly, and adjust your speed when necessary.
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; Avoid reading into the questions. When you find yourself thinking along the lines of "this is too easy; there must be a trick..." mark the question and move on to another. &nbsp;Interpret questions literally. 
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; Mark key words in every question. To help find the key words, ask yourself WHAT, WHO, WHERE, WHEN, and HOW? 
<br>
<br><b>Multiple Choice Specific Tips</b>
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; Remember in GATE each question will have four choices for the answer, only one is correct and wrong answer carry 33% negative marks
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; Read the question (without reading choices) very carefully.
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; Mark important key words and <b>look for special key words</b> like not, but, except , or, nor, always, never, and only . Mark these key words. E.g. 
<br><b>Ques</b> The number of leaf nodes in a rooted tree of n(n&gt;0) nodes, with each node having 0 or 3 children is:
<br>
<br>Important words to mark in this are, <b>"n&gt;0"</b> and <b>"or"</b>
<br>The number of leaf nodes in a rooted tree of n(<b>n&gt;0</b>) nodes, with each node having 0 <b>or </b>3 children is:
<br>Many times we miss words like "or" and whole question in changed. 
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; If you can think of answer before reading choices, keep it in mind before reading choices
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; Compare with choices and select the best suited answer.
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; Most of times <b>choices are made to confuse</b>. If there are two or more options that could be the correct answer, compare them to each other to determine the differences between them.
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; If there is an encompassing answer choice, for example "<b>all of the above</b>", and you are unable to determine that there are at least two correct choices, select the encompassing choice.
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; Make <b>educated/intelligent guesses</b> - eliminate options any way you can.
<br><sub><img src="/Engineering/GATE/img_gate-objective-solving-tricks/image1.gif"></sub>&nbsp; Multiple choices can provide <b>direct short cut</b> to get correct answer, especially in numerical problems. For example in the above question
<br>
<br><b>Example</b>
<br>The number of leaf nodes in a rooted tree of n(<b>n&gt;0</b>) nodes, with each node having 0 <b>or</b> 3 children is:
<br><b>Choices:</b>
<br><b>A</b> n/2
<br><b>B</b> (n-1)/3
<br><b>C</b> (n-1)/2
<br><b>D</b> (2n+1)/3
<br>
<br>Direct solving the problem can be difficult. Use following short cut.
<br>Imagine few such trees and try to get answer from choices. Lets start with tree with one node, i.e. n = 1. In this case obviously number of leaves should be one(same as root). Putting n=1 in above options only option "D" gives 1. But assure your self with more tries. Next possible value of n = 4 with number of leaves = 3. Putting this is multiple choices only "D" satisfies confirming our solution. 
<br>
<br>
<br>I'll try to include more examples to understand different tricks as and when I get time. But you can always <b>reach me at</b> gate.tutor@gmail.com. I'll try to solve your problems. I'll also recommend student to <b>send their tricks/suggestions</b> so that they can be included in this page. I'm looking for <b>contributions from you all</b> to make this page useful for all student appearing in GATE. 
<br>
<br>Thanks
<br>GATE Tutor
<br>gate.tutor@gmail.com
<br>
<br>
<br>Do send your feedback by <asp:HyperLink ID="HyperLink1" runat="server" Text="Clicking here " NavigateUrl="~/ano_utils/contactus.aspx"></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Other GATE Links</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="Gate Eligbility Criteria" NavigateUrl="~/engineering/gate/gate-eligibility.aspx"></asp:HyperLink>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><asp:HyperLink ID="HyperLink3" runat="server" Text="GATE Examination Pattern" NavigateUrl="~/engineering/gate/pattern-of-gate-exam.aspx"></asp:HyperLink>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><asp:HyperLink ID="HyperLink4" runat="server" Text="Important Changes in GATE 2010" NavigateUrl="~/engineering/gate/new-changes-in-gate-paper.aspx"></asp:HyperLink>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><asp:HyperLink ID="HyperLink5" runat="server" Text="How Gate Score Is Calculated?"" NavigateUrl="~/engineering/gate/gate-calculating-percentile-score-result.aspx"></asp:HyperLink>
</td>
</tr></table>
<br>
</td>
</tr></table>
</div>
</asp:Content>
