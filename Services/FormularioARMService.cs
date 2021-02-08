using System;
using System.Collections.Generic;
using PasantiasWebApi.Models;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace PasantiasWebApi.Services
{
    public class FormularioARMService
    {
        private readonly PasantiasDBContext _pasantiasDbContext;
        public FormularioARMService(PasantiasDBContext pasantiasDBContext)
        {
                _pasantiasDbContext=pasantiasDBContext;
        }

        public List<especialidadxarm> MostrarPasantias()
        {
            var lista_pasantias = new List<especialidadxarm>();
         
            lista_pasantias= _pasantiasDbContext.especialidadxarm
            .Include(x=>x.formularioarm)
            .Include(x=>x.especialidad)
            .Include(x=>x.formularioarm.sucursal)
            .Where(x=>x.formularioarm.id_estado==1 && DateTime.Compare(DateTime.Now,x.formularioarm.fechaBaja)<1 ).ToList();
            return lista_pasantias;
        
        }
         public List<especialidad> MostrarEspecialidad()
        {
            var lista_especialidad=_pasantiasDbContext.especialidad.ToList();
            return lista_especialidad;
        }
        public List<cantidadaniospasante> MostrarCantidadAños()
        {
            var lista_anios=_pasantiasDbContext.cantidadaniospasante.ToList();
            return lista_anios;
        }
        public List<especialidadxarm> FiltrarPasantias(int id_especialidad=0, int cantidad_años=0,float remuneracion=0)
        {
            var lista_pasantias = new List<especialidadxarm>();
            lista_pasantias= _pasantiasDbContext.especialidadxarm
            .Include(x=>x.formularioarm)
            .Include(x=>x.especialidad)
            .Include(x=>x.formularioarm.sucursal)
            .Include(x=>x.formularioarm.sucursal.empresa)
            .Include(x=>x.formularioarm.cantidadaniospasante)
            .Where(x=>x.formularioarm.id_estado==1 && DateTime.Compare(DateTime.Now,x.formularioarm.fechaBaja)<1 ).ToList();
            
            int[]filtros= new int[3]{0,0,0};
            if(id_especialidad!=0)
            {
                filtros[0]=1;
            }
            if(cantidad_años!=0)
            {
                filtros[1]=2;
            }
            if(remuneracion!=0)
            {
                filtros[2]=3;
            }
            try
            {
                foreach (var filtro in filtros)
                {
                    switch(filtro)
                    {
                        case 1:
                                lista_pasantias=lista_pasantias.Where(x=>x.especialidad.id_especialidad==id_especialidad).ToList();
                                break;
                        case 2:
                                lista_pasantias=lista_pasantias.Where(x=>x.formularioarm.id_cantidadAnios==cantidad_años).ToList();
                                break;
                        case 3:
                                lista_pasantias=lista_pasantias.Where(x=>x.formularioarm.remuneracion>=remuneracion).ToList();
                                break;

                    }    
                }
                return lista_pasantias;
            }
            catch (System.Exception)
            {
                return lista_pasantias;
                throw;
            }
            

        }

        public formularioarm MostrarDatoPasantia(int id_formularioARM)
        {
                
                var formularioARM= _pasantiasDbContext.formularioarm.Where(x=>x.id_arm ==id_formularioARM)
                .Include(x=>x.cantidadaniospasante).SingleOrDefault();
                return formularioARM;

        }

    }
}