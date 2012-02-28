<%@ Page Language="C#" MasterPageFile="~/Masters/performance_testing_links.master" AutoEventWireup="True" CodeBehind="Load-Runner-Basics.aspx.cs"  Inherits="ExamCrazy.Interviews_Jobs.Information_Technology_Software_IT.Software_Quality_Control_Assurance.Performance_Testing.Load_Runner_Basics" %>
<%@ MasterType VirtualPath="~/Masters/performance_testing_links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>LoadRunner</b><b> Basics </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>LoadRunner</b><b> components and terminology</b>
<br>
<br><b>1. Virtual User </b><b>Generator(</b><b> VU-Gen)</b> - Used to capture end user's business steps and to create an automated performance testing script, This is also known as a virtual user script.
<br>
<br><b>2. Controller</b> - Used to organize, drive, manage, and to monitor the load test.
<br>
<br><b>3. Load Generators</b> - create the load by running virtual users.
<br>
<br><b>4. Analysis</b> - helps to view, dissect, and compare the performance results.
<br>
<br><b>5. Launcher</b> - provides a single point of access for all of the LoadRunner components.
<br>
<br><b>6. Scenarios</b> A scenario is a sequence of steps/transactions that defines the events that occur during each testing session, based on performance requirements.
<br>
<br><b>7. </b><b>Vusers</b> In the scenario, LoadRunner replaces human users with virtual users or Vusers. Vusers emulate the actions of human users working with application under test(AUT). A scenario can contain as much Vusers as defined in service level agreement (SLA).
<br>
<br><b>8. </b><b>Vuser</b><b> Scripts</b> Vuser script contains the actions which are performed by a Vuser during the scenario recording.
<br>
<br><b>9. Transactions</b> For the measurement of performance of the server, we need to define transactions. A transaction represents end-user business processes that we are required to measure
<br>
<br>
<br>
<br><b>Load Testing Process</b> 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><sub><img src="/Interviews-Jobs/Information-Technology-Software-IT/Software-Quality-Control-Assurance/Performance-Testing/img_load-runner-basics/image1.jpeg"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Plan Load Test</b> - Define the performance testing requirements, e.g, number of concurrent users, typical business processes and required response times.
<br>
<br><b>Create </b><b>Vuser</b><b> Scripts</b> - Record the end-user activities into automated scripts.
<br>
<br><b>Define a Scenario</b> - Using LoadRunner Controller set up the load test environment.
<br>
<br><b>Run</b><b> a Scenario</b> - Using LoadRunner Controller Drive, manage, and monitor the load test.
<br>
<br><b>Analyze the Results</b> - Use LoadRunner Analysis to create graphs and reports, and evaluate the performance.
</td>
</tr></table>
</div>
</asp:Content>
