#region ExamCrazy Portal
// FileName: DataAccessObject.cs

// Date Created: 5/19/2008
// Website: www.examcrazy.com
#endregion
using System;
using System.Text;
using Microsoft.Win32;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Diagnostics;

namespace EC.DAL
{
    /// <summary>
    /// Data access helper class, which controls the complete database interaction with the database for all objects.
    /// SqlServer specific.
    /// </summary>
    public static class DataAccess
    {
        /// <summary>
        /// Returns database connection string.
        /// </summary>
        private static string ConnectionString
        {
            get
            {
                try
                {
                    return System.Configuration.ConfigurationManager.ConnectionStrings["strConn"].ConnectionString;
                }
                catch (Exception ex)
                {
                    throw new ApplicationException("Unable to get Database Connection string from Web Config File. Contact the site Administrator" + ex);
                }
            }
        }

        /// <summary>
        /// Returns result set in DataTable given SP name
        /// </summary>
        /// <param name="SPName">SQL Stored Procedure Name</param>
        /// <param name="Parameters">SQL Parameters</param>
        /// <returns></returns>
        public static DataTable GetFromDataTable(string SPName, params SqlParameter[] Parameters)
        {
            SqlConnection cn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(SPName, cn);
            DataTable dt = new DataTable();
            IDataReader dr;

            cmd.CommandType = CommandType.StoredProcedure;

            if (Parameters != null)
                foreach (SqlParameter item in Parameters)
                    cmd.Parameters.Add(item);

            cn.Open();

            try
            {
                dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                if (dr != null)
                {
                    dt.Load(dr);
                }
            }
            catch
            {
                // If we fail to return the SqlDatReader, we need to close the connection
                if (cn != null) cn.Close();
                throw;
            }

            cmd = null;
            cn = null;

            return dt;
        }

        /// <summary>
        /// Returns result set in DataTable given SP name with paging capability
        /// </summary>
        /// <param name="SPName">SQL Stored Procedure Name</param>
        /// <param name="Parameters">SQL Parameters</param>
        /// <returns></returns>
        public static DataTable GetFromDataTableWithPaging(string SPName, int index, int PageSize, params SqlParameter[] Parameters)
        {
            SqlConnection cn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(SPName, cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            cmd.CommandType = CommandType.StoredProcedure;

            if (Parameters != null)
                foreach (SqlParameter item in Parameters)
                    cmd.Parameters.Add(item);

            try
            {

                //Here we take index and PageSize from the argument.
                //index and PageSize value are generated from the category.aspx and passt
                //through the business logic along with SQL parameters.
                da.Fill(ds, index, PageSize, "tb");

            }
            catch
            {
                if (cn != null) cn.Close();
                throw;
            }

            DataTable dt = ds.Tables[0];

            da = null;
            ds = null;
            cmd = null;
            cn = null;

            return dt;
        }

        /// <summary>
        /// Returns an IDataReader result from a specified stored procedure
        /// </summary>
        /// <param name="SPName">Stored Procedure Name</param>
        /// <param name="Parameters">Array of SqlParameters</param>
        /// <returns></returns>
        public static IDataReader GetFromReader(string SPName, params SqlParameter[] Parameters)
        {
            IDataReader dr = null;
            SqlConnection cn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(SPName, cn);

            cmd.CommandType = CommandType.StoredProcedure;

            if (Parameters != null)
                foreach (SqlParameter item in Parameters)
                    cmd.Parameters.Add(item);

            cn.Open();

            try
            {
                dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            }
            catch
            {
                if (cn != null) cn.Close();
                throw;
            }

            cmd = null;
            cn = null;

            return dr;
        }

        /// <summary>
        /// Returns string result from a specified stored procedure
        /// </summary>
        /// <param name="SPName">Stored Procedure Name</param>
        /// <param name="Parameters">Array of SqlParameters</param>
        /// <returns></returns>
        public static string GetString(string SPName, params SqlParameter[] Parameters)
        {
            string output = "";
            SqlConnection cn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(SPName, cn);
            SqlDataReader dreader;

            cmd.CommandType = CommandType.StoredProcedure;

            if (Parameters != null)
                foreach (SqlParameter item in Parameters)
                    cmd.Parameters.Add(item);

            cn.Open();
            try
            {
                dreader = cmd.ExecuteReader();

                if (dreader.Read())
                    if (dreader.GetValue(0) != DBNull.Value)
                        output = dreader.GetString(0);

                dreader.Close();
            }
            catch
            {
                if (cn != null) cn.Close();
                throw;
            }

            cn.Close();
            cmd = null;
            cn = null;

            return output;
        }

        /// <summary>
        /// Returns Int32 result from a specified stored procedure
        /// </summary>
        /// <param name="SPName">Stored Procedure Name</param>
        /// <param name="Parameters">Array of SqlParameters</param>
        /// <returns></returns>
        public static int GetInt32(string SPName, params SqlParameter[] Parameters)
        {
            int output = 0;
            SqlConnection cn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(SPName, cn);

            cmd.CommandType = CommandType.StoredProcedure;

            if (Parameters != null)
                foreach (SqlParameter item in Parameters)
                    cmd.Parameters.Add(item);

            cn.Open();

            try
            {
                SqlDataReader dreader = cmd.ExecuteReader();
                if (dreader.Read())
                    if (dreader.GetValue(0) != DBNull.Value)
                        output = Convert.ToInt32(dreader.GetValue(0));

                dreader.Close();
            }
            catch
            {
                if (cn != null) cn.Close();
                throw;
            }

            cn.Close();
            cmd = null;
            cn = null;

            return output;
        }

        /// <summary>
        /// Returns Int32 scalar value from stored procedure
        /// </summary>
        /// <returns></returns>
        public static int GetIntScalarVal(string SPName)
        {
            int output = 0;
            SqlConnection cn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(SPName, cn);

            cmd.CommandType = CommandType.StoredProcedure;

            cn.Open();

            try
            {
                output = Convert.ToInt32(cmd.ExecuteScalar());
            }
            catch
            {
                if (cn != null) cn.Close();
                throw;
            }

            cn.Close();
            cmd = null;
            cn = null;

            return output;
        }

        /// <summary>
        /// Executes Insert Stored Procedure
        /// </summary>
        /// <param name="SPName">Stored Procedure Name</param>
        /// <param name="Parameters">Array of SqlParameters</param>
        /// <returns>Returns 0 if successful. Otherwise returns 1.</returns>
        public static int Execute(string SPName, params SqlParameter[] Parameters)
        {
            int intErr = 0;
            SqlConnection cn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(SPName, cn);

            cmd.CommandText = SPName;
            cmd.CommandType = CommandType.StoredProcedure;

            if (Parameters != null)
                foreach (SqlParameter item in Parameters)
                    cmd.Parameters.Add(item);

            cn.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                intErr = 1;
                if (cn != null) cn.Close();
            }
            cn.Close();

            cmd = null;
            cn = null;

            return intErr;
        }

        /// <summary>
        /// Record an event to a Event Log
        /// </summary>
        /// <param name="msg">Event Log Message</param>
        /// <param name="EventID">Event ID</param>
        /// <returns>Returns 0 if processed successfully. Any other values indicate failure.</returns>
        private static int WriteToEventLog(string msg, int EventID)
        {
            try
            {
                EventLog myEventLog = new EventLog("XDPortal");
                myEventLog.Source = "XDPortal";
                myEventLog.WriteEntry(msg, EventLogEntryType.Warning, EventID);
                myEventLog = null;
            }
            catch
            {
                return 1;
            }

            return 0;
        }
    }
}