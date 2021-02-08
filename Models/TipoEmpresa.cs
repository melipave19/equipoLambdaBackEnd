using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class tipoempresa
    {
    
        public int id_tipoEmpresa { get; set; }
        public string descripcion { get; set; }
        public string nombre { get; set; }
       
        
        public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<tipoempresa> mapeoTipoEmpresa)
            {
                mapeoTipoEmpresa.HasKey(x=>x.id_tipoEmpresa);
            }
        }
    }
}