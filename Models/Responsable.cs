
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using PasantiasWebApi.Models;

namespace PasantiasWebApi.Models
{
    public class responsable
    {
    
        public int legajo { get; set; }
        public string apellido { get; set; }
        public string nombre { get; set; }
        public DateTime fecha_alta {get; set;}
        
        public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<responsable> mapeoResponsable)
            {
                mapeoResponsable.HasKey(x=>x.legajo);
            }
        }
    }
}