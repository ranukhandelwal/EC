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
using EC.Common;
using EC.BL;

namespace EC.BL
{
    public class StateRepository : BaseStateObj
    {
        public StateRepository()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        private IDataReader GetData
        {
            get
            {
                IDataReader dr = Blogic.ActionProcedureDataProvider.GetStateList(CountryID);
                return dr;
            }

        }
        public override int Add(State c)
        {
            string name = c.Name;
            int id = c.ID;
            return Blogic.AddNewState(name, id);
        }


        public ExtendedCollection<State> GetStateList(int CID)
        {

            ExtendedCollection<State> list = new ExtendedCollection<State>();
            CountryID = CID;
            IDataReader dr = GetData;

            while (dr.Read())
            {

                State item = new State();
                if (dr["State_Name"] != DBNull.Value)
                {
                    item.Name = (string)dr["State_Name"];
                }
                if (dr["State_ID"] != DBNull.Value)
                {
                    item.ID = (int)dr["State_ID"];
                }

                list.Add(item);
            }

            dr.Close();

            return list;
        }
    }
}
