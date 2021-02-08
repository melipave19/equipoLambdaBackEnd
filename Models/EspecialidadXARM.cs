
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using PasantiasWebApi.Models;

namespace PasantiasWebApi.Models
{
    public class especialidadxarm
    {
      
        public int id_especialidadXArm { get; set; }
        public bool estado { get; set; }
        public int id_especialidad { get; set; }
        public int id_arm { get; set; }

        [ForeignKey("id_arm")]
        public formularioarm formularioarm { get; set; }
        [ForeignKey("id_especialidad")]
        public especialidad especialidad { get; set; }       

         public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<especialidadxarm> mapeoEspecialidadXARM)
            {
                mapeoEspecialidadXARM.HasKey(x=>x.id_especialidadXArm);
                mapeoEspecialidadXARM.Property(x=>x.id_arm).HasColumnName("id_arm");
                mapeoEspecialidadXARM.Property(x=>x.id_especialidad).HasColumnName("id_especialidad");
                mapeoEspecialidadXARM.HasOne(x=>x.especialidad);
                mapeoEspecialidadXARM.HasOne(x=>x.formularioarm);
                
            }
        }

    }
    
}