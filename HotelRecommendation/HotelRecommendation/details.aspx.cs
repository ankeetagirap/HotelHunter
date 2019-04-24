using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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

        private void BindRating()
        {
            try
            {
                int hotelId = Convert.ToInt32(Request.QueryString["Id"]);
                int ratingQtotal = 0, ratingStotal = 0, ratingHtotal = 0;
                DataSet ds = objclsHotelRecommendationDAL.GetRatings(hotelId);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    // now we will loop through the rows and get the total values submitted by the user.
                    for (int getrating = 0; getrating < ds.Tables[0].Rows.Count; getrating++)
                    {
                        ratingHtotal += Convert.ToInt32(ds.Tables[0].Rows[0]["HygineRating"].ToString());
                        ratingStotal += Convert.ToInt32(ds.Tables[0].Rows[0]["ServiceRating"].ToString());
                        ratingQtotal += Convert.ToInt32(ds.Tables[0].Rows[0]["QualityRating"].ToString());

                    }
                    int count = ds.Tables[0].Rows.Count;
                    // Over here we will get the average rating by dividing the total rating value by the count of users.
                    int Haverage = ratingHtotal / count;

                    int Qaverage = ratingQtotal / count;
                    int Saverage = ratingStotal / count;

                    //ajxRating.CurrentRating = average;
                    int Average = (Qaverage + Saverage + Haverage) / 3;
                    HygineAverageRating.CurrentRating = Haverage;
                    ServiceAverageRating.CurrentRating = Saverage;
                    QualityAverageRating.CurrentRating = Qaverage;
                    AverageRating.CurrentRating = Average;
                    AverageHygineRating.Text = "Average rating for Hygine is :" + " " + Convert.ToString(Haverage);
                    AverageServiceRating.Text = "Average rating for Service is :" + " " + Convert.ToString(Saverage);
                    AverageQualityRating.Text = "Average rating for Quality is :" + " " + Convert.ToString(Qaverage);
                    AverageRatingScore.Text = "Average rating is :" + " " + Convert.ToString(Average);


                }
                }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void BindHotelDataList()
        {
            int hotelId = Convert.ToInt32(Request.QueryString["Id"]);
            DataSet dsDataList = objclsHotelRecommendationDAL.FetchHotelDetails(hotelId);
            DlDetails.DataSource = dsDataList;
            DlDetails.DataBind();
            BindRating();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(DuplicateCheck() == true && EmptyRating() == true)
            {
                clsHotelRecommendationENTITY objUserEntity = new clsHotelRecommendationENTITY();
                int hotelId = Convert.ToInt32(Request.QueryString["Id"]);
                
                objUserEntity.Name = txtName.Text;
                objUserEntity.PhoneNo = txtPhoneNo.Text;
                objUserEntity.EmailId = txtEmailId.Text;
                objUserEntity.HygineR = ajxRatingHygine.CurrentRating;
                objUserEntity.ServiceR = ajxRatingService.CurrentRating;
                objUserEntity.QualityR = ajxRatingQuality.CurrentRating;

                clsHotelRecommendationBAL objUserBAL = new clsHotelRecommendationBAL();
                DataSet Output = objUserBAL.InsertDetails(hotelId,objUserEntity);
                
                ClearAll();
                lblmsg.Text = "Data recorded succesfully";
                Response.Redirect("index.aspx");


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
            int hotelId = Convert.ToInt32(Request.QueryString["Id"]);
            DataSet ds = objclsHotelRecommendationDAL.DuplicateCheck(hotelId,email);

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