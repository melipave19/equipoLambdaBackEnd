using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class localidad
    {
        
        public int id_localidad { get; set; }
        public bool estado { get; set; }
        public string nombre { get; set; }
        public int id_provincia { get; set; }
        [ForeignKey("id_provincia")] 
        public provincia provincia { get; set; }
        
        public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<localidad> mapeoLocalidad)
            {
                mapeoLocalidad.HasKey(x=>x.id_localidad);
                mapeoLocalidad.Property(x=>x.id_provincia).HasColumnName("id_provincia");
                mapeoLocalidad.HasOne(x=>x.provincia);
            }
        }
    }
}