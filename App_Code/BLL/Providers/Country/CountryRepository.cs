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
    public class CountryRepository : BaseCountryObj
    {
        public CountryRepository()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        private IDataReader GetData
        {
            get
            {
                IDataReader dr = Blogic.ActionProcedureDataProvider.GetCountryList();
                return dr;
            }

        }
        public override int Add(Country c)
        {
            string name = c.Name;
            int id = c.ID;
            return Blogic.AddNewCountry(name);
        }


        public ExtendedCollection<Country> GetCountryList()
        {

            ExtendedCollection<Country> list = new ExtendedCollection<Country>();
            IDataReader dr = GetData;
            
            while (dr.Read())
            {

                Country item = new Country();
                if (dr["Country_Name"] != DBNull.Value)
                {
                    item.Name = (string)dr["Country_Name"];
                }
                if (dr["Country_ID"] != DBNull.Value)
                {
                    item.ID = (int)dr["Country_ID"];
                }
                                
                list.Add(item);
            }

            dr.Close();

            return list;
        }
    }
}
