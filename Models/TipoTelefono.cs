using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class tipotelefono
    {
    
        public int id_tipoTelefono { get; set; }
        public string descripcion { get; set; }
        public string nombre { get; set; }
       
        
        public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<tipotelefono> mapeoTipoTelefono)
            {
                mapeoTipoTelefono.HasKey(x=>x.id_tipoTelefono);
            }
        }
    }
}