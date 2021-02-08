

using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class estadoarmxalumno
    {
       
        public int id_estado { get; set; }
        public bool estado { get; set; }
        public string nombre { get; set; }  
    
     public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<estadoarmxalumno> mapeoEstadoARMxAlumno)
            {
                mapeoEstadoARMxAlumno.HasKey(x=>x.id_estado);
      
            }
        }   
    }
}