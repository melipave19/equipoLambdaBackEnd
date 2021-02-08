
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using PasantiasWebApi.Models;
namespace PasantiasWebApi.Models
{
    public class formularioarmxalumno
    {           
        public int id_formularioArmXalumno { get; set; }
        public int id_formularioArm {get;set;}
        [ForeignKey("id_formularioArm")]
        public formularioarm formularioarm {get;set;}
        public int legajo_alumno { get; set; }
        [ForeignKey("legajo_alumno")]
        public alumno alumno{get;set;}
        public int legajo_responsable { get; set; }
        [ForeignKey("legajo_responsable")]
        public responsable responsable {get;set;}
        public DateTime fecha_solicitud { get; set; }
        public DateTime fecha_respuesta { get; set; }
        public int id_estado { get; set; }
        [ForeignKey("id_estado")]
        public estadoarmxalumno estadoarmxalumno {get;set;}
        public string observacion { get; set; }

          public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<formularioarmxalumno> mapeoFormularioARMxAlumno)
            {
                mapeoFormularioARMxAlumno.HasKey(x=>x.id_formularioArmXalumno);
                mapeoFormularioARMxAlumno.Property(x=>x.id_formularioArm).HasColumnName("id_formularioArm");
                mapeoFormularioARMxAlumno.Property(x=>x.legajo_alumno).HasColumnName("legajo_alumno");
                mapeoFormularioARMxAlumno.Property(x=>x.legajo_responsable).HasColumnName("legajo_responsable");
                mapeoFormularioARMxAlumno.Property(x=>x.id_estado).HasColumnName("id_estado");
                mapeoFormularioARMxAlumno.HasOne(x=> x.formularioarm);
                mapeoFormularioARMxAlumno.HasOne(x=> x.alumno);
                mapeoFormularioARMxAlumno.HasOne(x=> x.estadoarmxalumno);
                mapeoFormularioARMxAlumno.HasOne(x=>x.responsable);
                
            }
        }    
        
        
    }
}