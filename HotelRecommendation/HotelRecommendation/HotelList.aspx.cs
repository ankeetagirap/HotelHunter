using System;
using System.Data;
using HotelRecommendationBAL;
using HotelRecommendationDAL;
using HotelRecommendationENTITY;
using AjaxControlToolkit;

namespace HotelRecommendation
{
    public partial class HotelList : System.Web.UI.Page
    {
        clsHotelRecommendationBAL objclsHotelRecommendationBAL = new clsHotelRecommendationBAL();
        clsHotelRecommendationDAL objclsHotelRecommendationDAL = new clsHotelRecommendationDAL();
        clsHotelRecommendationENTITY objclsHotelRecommendationENTITY = new clsHotelRecommendationENTITY();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //int cityid = Convert.ToInt32(Request.QueryString["cityid"]);
           if (!IsPostBack)
           {
                BindDataList();
                BindCityList();
                //BindRating();
           }
       }

        //private void BindRating()
        //{
        //    try
        //    {
        //        //int hotelId = Convert.ToInt32(Request.QueryString["Id"]);
        //        int hotelId = Convert.ToInt32(Request.QueryString["CityId"]);                
        //        int ratingHtotal = 0, ratingStotal = 0, ratingQtotal = 0;
        //        DataSet ds = objclsHotelRecommendationDAL.GetRatings(hotelId);
        //        if(ds.Tables[0].Rows.Count>0)
        //        {
        //            for (int getrating =0;getrating<ds.Tables[0].Rows.Count;getrating++)
        //            {
        //                ratingHtotal += Convert.ToInt32(ds.Tables[0].Rows[0]["HygineRating"].ToString());
        //                ratingStotal += Convert.ToInt32(ds.Tables[0].Rows[0]["ServiceRating"].ToString());
        //                ratingQtotal += Convert.ToInt32(ds.Tables[0].Rows[0]["QualityRating"].ToString());
        //            }
        //            int count = ds.Tables[0].Rows.Count;
        //            int Haverage = ratingHtotal / count;
        //            int Saverage = ratingStotal / count;
        //            int Qaverage = ratingQtotal / count;
        //            int Average = (Haverage+Saverage+Qaverage) / 3;
                    
                    
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}

        

        private void BindCityList()
        {
            //int cityid = Convert.ToInt32(Request.QueryString["CityId"]);
            DataSet dsDataList = objclsHotelRecommendationDAL.GetCityDetails();
            CityList.DataSource = dsDataList;
            CityList.DataBind();

            
        }

        private void BindDataList()
        {
            //int Id = Convert.ToInt32(Session["CityId"]);
            DataSet dsDataList = objclsHotelRecommendationDAL.GetHotelDetails(Convert.ToInt32(Request.QueryString["CityId"]));
            HotelInfo.DataSource = dsDataList;
            HotelInfo.DataBind();
            
            //Session["HotelId"] = Convert.ToInt32(dsDataList.Tables[0].Rows[0]["Id"]);

        }

        
    }
}