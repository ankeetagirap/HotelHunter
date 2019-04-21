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
        protected void Page_Load(object sender, EventArgs e)
        {

            //int cityid = Convert.ToInt32(Request.QueryString["cityid"]);
           if (!IsPostBack)
           {
                BindDataList();
           }
       }

        private void BindDataList()
        {
            //int Id = Convert.ToInt32(Session["CityId"]);
            DataSet dsDataList = objclsHotelRecommendationDAL.GetHotelDetails(Convert.ToInt32(Request.QueryString["cityid"]));
            HotelInfo.DataSource = dsDataList;
            HotelInfo.DataBind();
            //Session["HotelId"] = Convert.ToInt32(dsDataList.Tables[0].Rows[0]["Id"]);

        }

        //protected void btnDetails_Click(object sender, EventArgs e)
        //{
        //    //int hotelId = (int)HotelInfo.DataKeys[(int)e.Item.ItemIndex];

        //    //int StId = (int)DataList1.DataKeys[(int)e.Item.ItemIndex];
        //    Response.Redirect("details.aspx?hotelid=" + HotelInfo.DataKeys[(int)e.]);

        //}
    }
}