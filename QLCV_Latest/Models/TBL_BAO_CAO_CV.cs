//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CPanel.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class TBL_BAO_CAO_CV
    {
        public int ID { get; set; }
        public int ID_LOAI_CONG_VIEC { get; set; }
        public string TEN_CONG_VIEC { get; set; }
        public string MO_TA { get; set; }
        public Nullable<int> STT { get; set; }
        public Nullable<bool> TT_XOA { get; set; }
        public Nullable<int> ID_NGUOI_TAO { get; set; }
        public Nullable<System.DateTime> NGAY_TAO { get; set; }
        public Nullable<int> ID_NGUOI_SUA { get; set; }
        public Nullable<System.DateTime> NGAY_SUA { get; set; }
        public Nullable<double> TONG_THOI_GIAN { get; set; }
        public Nullable<int> ID_TIMESHEET { get; set; }
    
        public virtual TBL_TIMESHEET TBL_TIMESHEET { get; set; }
    }
}
