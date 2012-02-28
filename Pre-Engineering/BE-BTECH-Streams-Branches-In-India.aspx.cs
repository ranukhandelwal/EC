using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering
{
    public partial class BE_BTECH_Streams_Branches_In_India : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Bachelor of Engineering(B.E.) and Bachelor of Technology In India - ExamCrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "B.Tech Admissions, B.E. Admissions, Pre engineering Tests, Acoustic Engineering,Aerospace Engineering,Aeronautical Engineering,Agricultural Engineering ,Automobiles Engineering,Biomedical Engineering,Chemical Engineering,Computer Engineering, Electrical Engineering,Electronics Engineering,Industrial Engineering,Instrumentation and Control Engineering,Marine Engineering,Materials Engineering,Mechanical Engineering, Metallurgical Engineering, Mining Engineering,Naval Architecture, Nuclear Engineering, Ocean Engineering,Petroleum Engineering,Production Engineering,Textile Engineering,Transportation Engineering, ";
metaTag.Content="Everything you need for Bachelor of Enginerring(B.E.) and Bachelor of Technology(B.Tech.) in India is available here for Free. Various Branches for Engineering in India. Regulatory Authorities for B.E./B.Tech. Admission Procedures for B.E./B.Tech. All India and State Wise Pre Enginerring Tests. AIEEE practice tests, IIT practice Tests, Pre-Engineering Practice Tests(PET) Tips and Tricks for AIEEE preparation";
this.Header.Controls.Add(metaTag);

        }
    }
}
