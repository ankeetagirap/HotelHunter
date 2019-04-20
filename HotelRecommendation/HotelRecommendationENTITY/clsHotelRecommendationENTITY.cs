using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelRecommendationENTITY
{
    public class clsHotelRecommendationENTITY
    {
        private int _Id;
        private string _Name;
        private string _PhoneNo;
        private string _EmailId;
        private int _HygineR;
        private int _ServiceR;
        private int _QualityR;
        public int Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
            }
        }

        public string Name
        {
            get
            {
                return _Name;
            }
            set
            {
                _Name = value;
            }
        }

        public string PhoneNo
        {
            get
            {
                return _PhoneNo;
            }
            set
            {
                _PhoneNo = value;
            }
        }

        public string EmailId
        {
            get
            {
                return _EmailId;
            }
            set
            {
                _EmailId = value;
            }
        }
        public int HygineR
        {
            get
            {
                return _HygineR;
            }
            set
            {
                _HygineR = value;
            }
        }
        public int ServiceR
        {
            get
            {
                return _ServiceR;
            }
            set
            {
                _ServiceR = value;
            }
        }
        public int QualityR
        {
            get
            {
                return _QualityR;
            }
            set
            {
                _QualityR = value;
            }
        }
    }
}
