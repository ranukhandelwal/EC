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
    public class CityRepository : BaseCityObj
    {
        public CityRepository()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        private IDataReader GetData
        {
            get
            {
                IDataReader dr = Blogic.ActionProcedureDataProvider.GetCityList(StateID);
                return dr;
            }

        }
        public override int Add(City c)
        {
            string name = c.Name;
            int id = c.ID;
            return Blogic.AddNewCity(name, id);
        }


        public ExtendedCollection<City> GetCityList(int SID)
        {

            ExtendedCollection<City> list = new ExtendedCollection<City>();
            StateID = SID;
            IDataReader dr = GetData;

            while (dr.Read())
            {

                City item = new City();
                if (dr["City_Name"] != DBNull.Value)
                {
                    item.Name = (string)dr["City_Name"];
                }
                if (dr["City_ID"] != DBNull.Value)
                {
                    item.ID = (int)dr["City_ID"];
                }

                list.Add(item);
            }

            dr.Close();

            return list;
        }
    }
}
