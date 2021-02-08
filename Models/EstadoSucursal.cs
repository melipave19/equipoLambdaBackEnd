using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class estadosucursal
    {
        
        public int id_estado_sucursal { get; set; }
        public bool estado { get; set; }
        public string nombre { get; set; }

        public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<estadosucursal> mapeoEstadoSucursal)
            {
                mapeoEstadoSucursal.HasKey(x=>x.id_estado_sucursal);
              
            }
        }
    }
}