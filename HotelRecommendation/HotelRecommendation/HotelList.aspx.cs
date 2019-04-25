using System;
using System.Data;
using HotelRecommendationBAL;
using HotelRecommendationDAL;
using HotelRecommendationENTITY;
using AjaxControlToolkit;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;


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
                
                BindCityList();
                //BindRating();
                BindDataList();


            }
       }

        //private void BindRating()
        //{
        //    try
        //    {
        //        DataSet ds = objclsHotelRecommendationDAL.GetHotelRatings(Convert.ToInt32(Request.QueryString["CityId"]));
        //        ajxAverageRating.CurrentRating = Convert.ToInt32(ds);
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
            DataSet dsDataList = objclsHotelRecommendationDAL.GetHotelDetails(Convert.ToInt32(Request.QueryString["CityId"]));
            HotelInfo.DataSource = dsDataList;
            HotelInfo.DataBind();
            //if (dsDataList.Tables[0].Rows.Count > 0)
            //{
            //    for (int getrating = 0; getrating < dsDataList.Tables[0].Rows.Count; getrating++)
            //    {
            //        ajxAverageRating.CurrentRating = Convert.ToInt32(dsDataList.Tables[0].Rows[0]["AverageRating"].ToString());
            //    }
            //}
        }

        
    }
}