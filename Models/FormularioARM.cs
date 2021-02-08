
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using PasantiasWebApi.Models;
namespace PasantiasWebApi.Models
{
    public class formularioarm
    {   
        
        public int id_arm { get; set; }
        public int cantidadPasantes { get; set; }
        public string cargoACubrir { get; set; }
        public string codigoArm { get; set; }
        public string denegacionDebidoA { get; set; }
        public int duracionMeses { get; set; }
        public string email { get; set; }
        public bool estudiante_docente { get; set; }
        public string experiencia { get; set; }
        public DateTime fehcaAlta { get; set; }
        public DateTime fechaBaja { get; set; }
        public DateTime horaInicio { get; set; }
        public DateTime horaFin { get; set; }
        //public DateTime horario_inicioEntrevista { get; set; }
        //public DateTime horario_finalEntrevista { get; set; }
        public string lugarTrabajo { get; set; }
        public string otrosConocimientos { get; set; }
        public string otrosRequisitos { get; set; }
        public string perfilSolicitado { get; set; }
        public float remuneracion { get; set; }
        public string seOfrece { get; set; }
        public int id_genero { get; set; }
        [ForeignKey("id_genero")]
        public genero genero { get; set; }
        
        [ForeignKey("id_cantidadAnios")]  
        public cantidadaniospasante cantidadaniospasante { get; set; }
        public int id_cantidadAnios { get; set; }  
        [ForeignKey("id_estado")]  
        public estadoarm estadoarm { get; set; }
        public int id_estado { get; set; } 
        [ForeignKey("id_sucursal")]
        public sucursalesxempresa sucursal { get; set; }
        public int id_sucursal { get; set; }
       
          public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<formularioarm> mapeoFormularioARM)
            {
                mapeoFormularioARM.HasKey(x=>x.id_arm);
                mapeoFormularioARM.Property(x=>x.id_genero).HasColumnName("id_genero");
                mapeoFormularioARM.Property(x=>x.id_estado).HasColumnName("id_estado");
                mapeoFormularioARM.Property(x=>x.id_sucursal).HasColumnName("id_sucursal");
                mapeoFormularioARM.Property(x=>x.id_cantidadAnios).HasColumnName("id_cantidadAnios");
                mapeoFormularioARM.HasOne(x=> x.genero);
                mapeoFormularioARM.HasOne(x=> x.cantidadaniospasante);
                mapeoFormularioARM.HasOne(x=> x.estadoarm);
                mapeoFormularioARM.HasOne(x=>x.sucursal);
                
            }
        }    
        
        
    }
}