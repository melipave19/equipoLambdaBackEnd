using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class especialidad
    {
      
        
        public int id_especialidad { get; set; }
        public bool estado { get; set; }    
        public string nombre { get; set; }
        
        
         public class Mapeo
        {         
             public Mapeo(EntityTypeBuilder<especialidad> mapeoEspecialidad)
            {

                mapeoEspecialidad.HasKey(x=>x.id_especialidad).HasName("id_especilidad");  
            
            }
        }
        
    }
}