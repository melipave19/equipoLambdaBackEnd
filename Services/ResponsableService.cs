

using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using PasantiasWebApi.Models;

namespace PasantiasWebApi.Services
{
    public class ResponsableService
    {
        private readonly PasantiasDBContext _pasantiasDbContext;
        public ResponsableService(PasantiasDBContext pasantiasDBContext)
        {
                _pasantiasDbContext=pasantiasDBContext;
        }

        public List<formularioarmxalumno> MostrarSolicitudes()
        {
            var lista_solicitudes = new List<formularioarmxalumno>();
         
            lista_solicitudes= _pasantiasDbContext.formularioarmxalumno
            /*.Include(x=>x.formularioarm)*/
            .Include(x=>x.alumno)
            .Include(x=>x.responsable)
            .Include(x=>x.formularioarm.sucursal)
            .Include(x=>x.formularioarm.sucursal.empresa)
            .Include(x=>x.estadoarmxalumno)
            .Include(x=>x.alumno.especialidad)
            .Where(x=>x.formularioarm.id_estado==1 && x.id_estado==1 && DateTime.Compare(DateTime.Now,x.formularioarm.fechaBaja)<1 ).ToList();
            return lista_solicitudes;
        
        }
        public responsable obtenerResponsable(int legajo)
        {
            var responsable =_pasantiasDbContext.responsable.Where(x=>x.legajo==legajo).Single();
            return responsable;
        }

        public formularioarmxalumno procesarSolicitud(formularioarmxalumno formularioarmxalumno){
    
           try 
           {

            _pasantiasDbContext.Entry(formularioarmxalumno).State = EntityState.Modified;
            _pasantiasDbContext.Update(formularioarmxalumno);
            _pasantiasDbContext.SaveChanges();
            return formularioarmxalumno;
            }
            catch(Exception)
            {
                throw;
               
            }

        }

     

       


       

    }
}