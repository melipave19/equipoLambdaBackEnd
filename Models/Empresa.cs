using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class empresa
    {
        
        
        public int id_empresa { get; set; }
        public string cuit { get; set; }
        public string guid { get; set; }
        public string observaciones { get; set; }   
        public string razon_social { get; set; }
        public int id_tipoEmpresa { get; set; }
        
        [ForeignKey("id_tipoEmpresa")]
        public tipoempresa tipoempresa { get; set; }
        
        public class Mapeo
        {   
            public Mapeo(EntityTypeBuilder<empresa> mapeoEmpresa)
            {
                mapeoEmpresa.HasKey(x=>x.id_empresa);
                mapeoEmpresa.Property(x=>x.id_tipoEmpresa).HasColumnName("id_tipoEmpresa");
                mapeoEmpresa.HasOne(x=>x.tipoempresa);  
            }
        }
    }
}