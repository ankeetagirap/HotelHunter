using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;
using HotelRecommendationBAL;
using HotelRecommendationDAL;
using HotelRecommendationENTITY;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;

namespace HotelRecommendation
{
    public partial class hotels : System.Web.UI.Page
    {
        clsHotelRecommendationBAL objclsHotelRecommendationBAL = new clsHotelRecommendationBAL();
        clsHotelRecommendationDAL objclsHotelRecommendationDAL = new clsHotelRecommendationDAL();
        clsHotelRecommendationENTITY objclsHotelRecommendationENTITY = new clsHotelRecommendationENTITY();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindHotels();
            }
            
        }

        private void BindHotels()
        {
            DataSet dsDataList = objclsHotelRecommendationDAL.GetHotelDetails();
            AllHotelsList.DataSource = dsDataList;
            AllHotelsList.DataBind();
            //BindRating();
        }
    }
}