using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class provincia
    {
        
        public int id_provincia { get; set; }
        public bool estado { get; set; }
        public string nombre { get; set; }
        
        public int id_pais { get; set; }
        [ForeignKey("id_pais")] 
        public pais pais { get; set; }
        
        public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<provincia> mapeoProvincia)
            {
                mapeoProvincia.HasKey(x=>x.id_provincia);
                mapeoProvincia.Property(x=>x.id_pais).HasColumnName("id_pais");
                mapeoProvincia.HasOne(x=>x.pais);
            }
        }
    }
}