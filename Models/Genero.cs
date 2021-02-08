using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class genero
    {
        
        public int id_genero { get; set; }
        public bool estado { get; set; }
        public string nombre { get; set; }
        
        public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<genero> mapeoGenero)
            {
                mapeoGenero.HasKey(x=>x.id_genero);
                
            }
        }
    }
}