using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using HotelRecommendationDAL;
using HotelRecommendationENTITY;

namespace HotelRecommendationBAL
{
    public class clsHotelRecommendationBAL
    {


        public DataSet InsertDetails(int hotelId, clsHotelRecommendationENTITY objUserEntity)
        {
            clsHotelRecommendationDAL objUserDAL = new clsHotelRecommendationDAL();
            try
            {
                return objUserDAL.InsertDetails(hotelId,objUserEntity);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                objUserDAL = null;
            }
        }
    }
}
