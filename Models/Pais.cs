using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class pais
    {
        
        public int id_pais { get; set; }
        public bool estado { get; set; }
        public string nombre { get; set; }
        
        public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<pais> mapeoPais)
            {
                mapeoPais.HasKey(x=>x.id_pais);
                
            }
        }
    }
}