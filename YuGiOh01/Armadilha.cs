//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace YuGiOh01
{
    using System;
    using System.Collections.Generic;
    
    public partial class Armadilha
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Armadilha()
        {
            this.CartaTipoCartas = new HashSet<CartaTipoCarta>();
        }
    
        public int IdArmadilha { get; set; }
        public string Descricao { get; set; }
        public int IdTipoCarta { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CartaTipoCarta> CartaTipoCartas { get; set; }
        public virtual TipoCarta TipoCarta { get; set; }
    }
}
