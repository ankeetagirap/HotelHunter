using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using HotelRecommendationENTITY;


namespace HotelRecommendationDAL
{
    public class clsHotelRecommendationDAL
    {
        SqlConnection objSqlCon = new SqlConnection();
        public DataSet DuplicateCheck(string email)
        {
            objSqlCon.ConnectionString = DBHelper.ConnectionString().ToString();
            SqlParameter[] objSqlParam = new SqlParameter[1];
            objSqlParam[0] = new SqlParameter("@EmailId", SqlDbType.VarChar);
            objSqlParam[0].Direction = ParameterDirection.Input;
            objSqlParam[0].Value = email;
            DataSet val = SqlHelper.ExecuteDataset(objSqlCon, CommandType.StoredProcedure, "DuplicateCheck", objSqlParam);
            return val;
        }

        public DataSet InsertDetails(clsHotelRecommendationENTITY objUserEntity)
        {
            objSqlCon.ConnectionString = DBHelper.ConnectionString().ToString();
            SqlParameter[] objSqlParam = new SqlParameter[6];
            objSqlParam[0] = new SqlParameter("@Name", SqlDbType.VarChar);
            objSqlParam[0].Direction = ParameterDirection.Input;
            objSqlParam[0].Value = objUserEntity.Name;

            objSqlParam[1] = new SqlParameter("@PhoneNo", SqlDbType.VarChar);
            objSqlParam[1].Direction = ParameterDirection.Input;
            objSqlParam[1].Value = objUserEntity.PhoneNo;

            objSqlParam[2] = new SqlParameter("@EmailId", SqlDbType.VarChar);
            objSqlParam[2].Direction = ParameterDirection.Input;
            objSqlParam[2].Value = objUserEntity.EmailId;

            objSqlParam[3] = new SqlParameter("@HygineRating", SqlDbType.Int);
            objSqlParam[3].Direction = ParameterDirection.Input;
            objSqlParam[3].Value = objUserEntity.HygineR;

            objSqlParam[4] = new SqlParameter("@ServiceRating", SqlDbType.Int);
            objSqlParam[4].Direction = ParameterDirection.Input;
            objSqlParam[4].Value = objUserEntity.ServiceR;

            objSqlParam[5] = new SqlParameter("@QualityRating", SqlDbType.Int);
            objSqlParam[5].Direction = ParameterDirection.Input;
            objSqlParam[5].Value = objUserEntity.QualityR;

            DataSet val = SqlHelper.ExecuteDataset(objSqlCon, CommandType.StoredProcedure, "InsertDetails", objSqlParam);
            return val;
        }

        public DataSet FetchHotelDetails(int hotelId)
        {
            objSqlCon.ConnectionString = DBHelper.ConnectionString().ToString();
            SqlParameter[] objSqlParam = new SqlParameter[1];
            objSqlParam[0] = new SqlParameter("@Id", SqlDbType.VarChar);
            objSqlParam[0].Direction = ParameterDirection.Input;
            objSqlParam[0].Value = hotelId;
            DataSet val = SqlHelper.ExecuteDataset(objSqlCon, CommandType.StoredProcedure, "FetchHotelDetail", objSqlParam);
            return val;
        }

        public DataSet GetHotelDetails(int id)
        {
            objSqlCon.ConnectionString = DBHelper.ConnectionString().ToString();
            SqlParameter[] objSqlParam = new SqlParameter[1];
            objSqlParam[0] = new SqlParameter("@Id", SqlDbType.VarChar);
            objSqlParam[0].Direction = ParameterDirection.Input;
            objSqlParam[0].Value = id;
            DataSet val = SqlHelper.ExecuteDataset(objSqlCon, CommandType.StoredProcedure, "GetHotelDetails", objSqlParam);
            return val;
        }

        public DataSet GetCity()
        {
            objSqlCon.ConnectionString = DBHelper.ConnectionString().ToString();
            DataSet val = SqlHelper.ExecuteDataset(objSqlCon, CommandType.StoredProcedure, "GetCityList");
            return val;
        }

        
    }
}
