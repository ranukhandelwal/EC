using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Information_Technology_Software_IT.Software_Quality_Control_Assurance.Automation_Testing
{
    public partial class Automation_Concepts_definitions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Software quality control and assurance - ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Software Testing Dictionary, Acceptance Test, Ad Hoc Testing, Alpha Testing,Assertion Testing. (NBS), bug, Beta Testing,Benchmarks,Big-bang testing, Black box testing,Boundary Value Analysis (BVA), Breadth test,Cause Effect Graphing,Clean test, Code Inspection,Code Walkthrough, Compatibility bug, Compatibility Testing, Condition Coverage, Conformance directed testing, CRUD Testing, Data flow testing, Database testing, defect, depth, Decision Coverage, Dynamic testing, dirty test,End-to-End testing, Equivalence Partitioning, Error, Errors, Guessing, Error seeding, Exception Testing, Exhaustive Testing, Exploratory Testing, Failure, Formal Testing, Free Form Testing, Functional testing, Gray box testing, High-level tests, Inspection , Integration ,Integration testing, Latent bug, Lateral testing, Load testing, Load/stress test, Load-isolation test, Monkey Testing , smart monkey testing,Maximum Simultaneous Connection testing, Mutation testing, Multiple Condition Coverage, Negative test, Orthogonal array testing , Parallel Testing , Performance Testing , Prior Defect History Testing , Qualification Testing , Quality Assurance, QA, Quality Control , QC, Race condition defect, Recovery testing, Regression Testing, Regression Test, Reengineering , Reference testing, Reliability testing, Range Testing , Risk management, Robust test, Sanity Testing , Sensitive test, Specification-based test,State-based testing, State Transition Testing, Static testing, Statistical testing, Stealth bug, Structural Testing, System testing , Table testing, Test Bed, Test Case , Test Coverage , Test Criteria , Test Driver, Test Harness , Test Item, Test log, Test Plan, Test Procedure, Test Status , Test Stub , Test Suites, Testability , Unit Testing , Usability testing , Validation , Verification , Volume testing , Walkthrough ,White Box Testing ";
metaTag.Content="All About Quality control and qauality assurance, interview questions , definitions, processes, free practice tests, exams ";
this.Header.Controls.Add(metaTag);

        }
    }
}
