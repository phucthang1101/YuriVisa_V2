//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Yurivisa_v2._1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class LookupTable
    {
        public string Object { get; set; }
        public string Lang { get; set; }
        public string Content { get; set; }
    
        public virtual Item Item { get; set; }
        public virtual Language Language { get; set; }
    }
}
