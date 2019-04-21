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
    public partial class index : System.Web.UI.Page
    {
        clsHotelRecommendationBAL objclsHotelRecommendationBAL = new clsHotelRecommendationBAL();
        clsHotelRecommendationDAL objclsHotelRecommendationDAL = new clsHotelRecommendationDAL();
        clsHotelRecommendationENTITY objclsHotelRecommendationENTITY = new clsHotelRecommendationENTITY();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindCity();
            }
        }

        private void BindCity()
        {
            DataSet dsCity = objclsHotelRecommendationDAL.GetCity();
            ddlCity.DataSource = dsCity;
            ddlCity.DataValueField = "CityId";
            ddlCity.DataTextField = "CityName";
            ddlCity.DataBind();
        }

        protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Session["CityId"] = ddlCity.SelectedIndex.ToString();
            Response.Redirect("HotelList.aspx?cityid="+ ddlCity.SelectedItem.Value);
        }
    }
}