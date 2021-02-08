using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class cantidadaniospasante
    {
        
        public int id_cantidad_aniospasante { get; set; }
        public string descripcion { get; set; }
        public string nombre { get; set; }
        
        public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<cantidadaniospasante> mapeoCantidadAños)
            {
                mapeoCantidadAños.HasKey(x=>x.id_cantidad_aniospasante);
              
            }
        }
    }
}