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
    public partial class details : System.Web.UI.Page
    {
        clsHotelRecommendationBAL objclsHotelRecommendationBAL = new clsHotelRecommendationBAL();
        clsHotelRecommendationDAL objclsHotelRecommendationDAL = new clsHotelRecommendationDAL();
        clsHotelRecommendationENTITY objclsHotelRecommendationENTITY = new clsHotelRecommendationENTITY();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindHotelDataList();
            }
        }

        private void BindHotelDataList()
        {
            int hotelId = Convert.ToInt32(Request.QueryString["Id"]);
            DataSet dsDataList = objclsHotelRecommendationDAL.FetchHotelDetails(hotelId);
            DlDetails.DataSource = dsDataList;
            DlDetails.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(DuplicateCheck() == true && EmptyRating() == true)
            {
                clsHotelRecommendationENTITY objUserEntity = new clsHotelRecommendationENTITY();
                objUserEntity.Name = txtName.Text;
                objUserEntity.PhoneNo = txtPhoneNo.Text;
                objUserEntity.EmailId = txtEmailId.Text;
                objUserEntity.HygineR = ajxRatingHygine.CurrentRating;
                objUserEntity.ServiceR = ajxRatingService.CurrentRating;
                objUserEntity.QualityR = ajxRatingQuality.CurrentRating;

                clsHotelRecommendationBAL objUserBAL = new clsHotelRecommendationBAL();
                DataSet Output = objUserBAL.InsertDetails(objUserEntity);
                
                ClearAll();
                lblmsg.Text = "Data recorded succesfully";

            }
        }

        private void ClearAll()
        {
            txtName.Text = string.Empty;
            
            txtPhoneNo.Text = string.Empty;
            txtEmailId.Text = string.Empty;
            ajxRatingHygine.CurrentRating = 0;
            ajxRatingService.CurrentRating = 0;
            ajxRatingQuality.CurrentRating = 0;
        }

        private bool EmptyRating()
        {
            if(ajxRatingHygine.CurrentRating>0 && ajxRatingService.CurrentRating>0 && ajxRatingQuality.CurrentRating>0)
            {
                return true;
                
            }
            else
            {
                return false;
            }
        }

        private bool DuplicateCheck()
        {
            string email = txtEmailId.Text;
            DataSet ds = objclsHotelRecommendationDAL.DuplicateCheck(email);

            if (Convert.ToInt32(ds.Tables[0].Rows[0]["count"]) > 0)
            {
                return false;
            }
            else
            {
                return true;
            }

        }

        
    }
}