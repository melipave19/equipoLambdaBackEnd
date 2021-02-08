using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class sucursalesxempresa
    {
        
        public int id_sucursal { get; set; }
        public string nombre_sucursal { get; set; }
        public string cantidad_empleados { get; set; }
        public string email { get; set; }
        public DateTime fecha_registro { get; set; }
        public string rubro { get; set; }
        public string sitio_web { get; set; }
        public int celular { get; set; }
        public int telefono_fijo { get; set; }
        public string calle { get; set; }
        public int numero_calle { get; set; }
        
        [ForeignKey("id_barrio")] 
        public barrio barrio { get; set; }
        public int id_barrio { get; set; }
        [ForeignKey("id_empresa")] 
        public empresa empresa { get; set; }
        public int id_empresa { get; set; } 
        
        [ForeignKey("id_estado_sucursal")] 
        public estadosucursal estadosucursal { get; set; }
        public int id_estado_sucursal { get; set; }
        
        public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<sucursalesxempresa> mapeoSucursalXEmpresa)
            {
                mapeoSucursalXEmpresa.HasKey(x=>x.id_sucursal);
                mapeoSucursalXEmpresa.Property(x=>x.id_barrio).HasColumnName("id_barrio");
                mapeoSucursalXEmpresa.Property(x=>x.id_estado_sucursal).HasColumnName("id_estado_sucursal");
                mapeoSucursalXEmpresa.Property(x=>x.id_empresa).HasColumnName("id_empresa");
                mapeoSucursalXEmpresa.HasOne(x=>x.barrio);
                mapeoSucursalXEmpresa.HasOne(x=>x.empresa);
                mapeoSucursalXEmpresa.HasOne(x=>x.estadosucursal);
            }
        }
    }
}