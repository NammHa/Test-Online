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
    
    public partial class TBL_MENU
    {
        public TBL_MENU()
        {
            this.TBL_MENU_QUYEN = new HashSet<TBL_MENU_QUYEN>();
        }
    
        public int ID { get; set; }
        public int ID_LOAI_MENU { get; set; }
        public string TEN { get; set; }
        public string TEN_URL { get; set; }
        public string LINK { get; set; }
        public bool isEnabled { get; set; }
        public int ID_CHA { get; set; }
        public int STT { get; set; }
        public Nullable<int> ID_NGON_NGU { get; set; }
    
        public virtual ICollection<TBL_MENU_QUYEN> TBL_MENU_QUYEN { get; set; }
        public virtual TBL_MENU_LOAI TBL_MENU_LOAI { get; set; }
    }
}
