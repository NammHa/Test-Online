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
    
    public partial class TBL_DANH_MUC
    {
        public int ID { get; set; }
        public string MA_DANH_MUC { get; set; }
        public string TEN { get; set; }
        public string MO_TA { get; set; }
        public Nullable<int> STT { get; set; }
        public Nullable<bool> TT_XOA { get; set; }
        public Nullable<int> ID_NGUOI_TAO { get; set; }
        public Nullable<System.DateTime> NGAY_TAO { get; set; }
        public Nullable<int> ID_NGUOI_SUA { get; set; }
        public Nullable<System.DateTime> NGAY_SUA { get; set; }
    }
}
