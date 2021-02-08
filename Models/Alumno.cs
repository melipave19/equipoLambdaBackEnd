using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class alumno
    {
        public int legajo { get; set; }
        public string nombre { get; set; }
        public string apellido {get;set;}
        public int id_especialidad { get; set; }
        [ForeignKey("id_especialidad")]
        public especialidad especialidad { get; set; }
        public string mail {get; set;}
        public int tipo_telefono { get; set; }
        [ForeignKey("tipo_telefono")]
        public tipotelefono tipotelefono {  get;set;}
        public int nro_telefono {get;set;}
                        
        public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<alumno> mapeoAlumno)
            {
                mapeoAlumno.HasKey(x=>x.legajo);
                mapeoAlumno.Property(x=>x.id_especialidad).HasColumnName("id_especialidad");
                mapeoAlumno.Property(x=>x.tipo_telefono).HasColumnName("tipo_telefono");
                mapeoAlumno.HasOne(x=>x.especialidad);
                mapeoAlumno.HasOne(x=>x.tipotelefono);
                
            }
        }
    }
}