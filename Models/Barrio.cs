using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class barrio
    {
        public int id_barrio { get; set; }
        public bool estado { get; set; }
        public string nombre { get; set; }
        public int id_localidad { get; set; }
        [ForeignKey("id_localidad")]
        public localidad localidad { get; set; }
        
        public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<barrio> mapeoBarrio)
            {
                mapeoBarrio.HasKey(x=>x.id_barrio);
                mapeoBarrio.Property(x=>x.id_localidad).HasColumnName("id_localidad");
                mapeoBarrio.HasOne(x=>x.localidad);
                
            }
        }
    }
}