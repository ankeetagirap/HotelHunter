using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using HotelRecommendationBAL;
using HotelRecommendation;
using HotelRecommendationDAL;
using HotelRecommendationENTITY;

namespace HotelRecommendation
{
    public partial class HotelList : System.Web.UI.Page
    {
        clsHotelRecommendationBAL objclsHotelRecommendationBAL = new clsHotelRecommendationBAL();
        clsHotelRecommendationDAL objclsHotelRecommendationDAL = new clsHotelRecommendationDAL();
        clsHotelRecommendationENTITY objclsHotelRecommendationENTITY = new clsHotelRecommendationENTITY();
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if(!IsPostBack)
        //    {
        //        BindDataList();
        //    }
        //}

        //private void BindDataList()
        //{
            
        //    DataSet dsDataList = objclsHotelRecommendationDAL.GetHotelDetails();
        //    HotelInfo.DataSource = dsDataList;
        //    HotelInfo.DataBind();
        //    Response.Redirect("details.aspx?Id =" );
        //}
    }
}