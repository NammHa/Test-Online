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
    
    public partial class TBL_RULE
    {
        public int ID { get; set; }
        public string NAME { get; set; }
        public string CODE { get; set; }
        public bool isEnabled { get; set; }
        public int ID_PARENT { get; set; }
        public int ORDER { get; set; }
    }
}