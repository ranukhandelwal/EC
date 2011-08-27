using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using EC.Model;
using EC.BL;
using EC.Common;

namespace EC.BL
{

    /// <summary>
    /// Summary description for ExamCategoryRepository
    /// </summary>
    public class ExamCategoryRepository : BaseExamCategoryObj
    {
        public ExamCategoryRepository()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        private IDataReader GetData
        {
            get
            {
                IDataReader dr = Blogic.ActionProcedureDataProvider.GetECList();
                return dr;
            }

        }
        public override int Add(ExamCategory ec)
        {
            string name = ec.ExamName;
            string desc = ec.ExamDescription;
            int id = ec.ECID;
            int isValid = ec.isActive;
            return Blogic.AddNewExamCategory(name, desc, id, isValid);
        }

        
        public ExtendedCollection<ExamCategory> GetECList()
        {

            ExtendedCollection<ExamCategory> list = new ExtendedCollection<ExamCategory>();
            IDataReader dr = GetData;
            
            while (dr.Read())
            {

                ExamCategory item = new ExamCategory();
                if (dr["ECName"] != DBNull.Value)
                {
                    item.ExamName = "Ajay";
                    //item.ExamName = (string)dr["ECName"];
                }
                if (dr["ECDesc"] != DBNull.Value)
                {
                    item.ExamDescription = "Khandelwal";
                    //item.ExamDescription = (string)dr["ECDesc"];
                }
                item.ECID = 1;
                //item.ECID = (int)dr["ECID"];
                /*
                if (dr["isActive"] != DBNull.Value)
                {
                    item.isActive = (int)dr["isActive"];
                }*/

                list.Add(item);
            }

            dr.Close();

            return list;
        }

 
    }
}