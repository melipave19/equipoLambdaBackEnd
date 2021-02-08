
using System;
using Microsoft.AspNetCore.Mvc;
using PasantiasWebApi.Models;
using PasantiasWebApi.Services;

namespace PasantiasWebApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ResponsableController : ControllerBase
    {
        private readonly ResponsableService _responsableService;
         private readonly CorreoService _correoService;
        public ResponsableController(ResponsableService responsableService,CorreoService correoService)
        {
            _responsableService=responsableService;
             _correoService =correoService;
        }
               [HttpGet]
        [Route("obtenerResponsable/{legajo}")]
        public ActionResult obtenerResponsable(int legajo)
        {
            try
            {
                var responsable=_responsableService.obtenerResponsable(legajo);
                return Ok(responsable);
            }
            catch(Exception e)
            {
                return Ok(e.Message);
            }
        }

        [HttpGet]
        [Route("mostrarSolicitudes")]
        public ActionResult MostrarSolicitudes()
        {
            try
            {
                
                var lista_solicitudes=_responsableService.MostrarSolicitudes();
                return Ok(lista_solicitudes);
            }
            catch(Exception e)
            {
                return Ok(e.Message);
            }
        }

        [HttpPut]
        [Route("procesarSolicitud")]
        public ActionResult ProcesarSolicitud([FromBody] formularioarmxalumno formularioarmxalumno){
            try
            {
                formularioarmxalumno respuesta = _responsableService.procesarSolicitud(formularioarmxalumno);
                if(respuesta.id_estado == 2)
                {
                
                    _correoService.aceptarPasantia(formularioarmxalumno);
                }
                else
                {
                    _correoService.denegarPasantia(formularioarmxalumno);
                }
                return Ok(respuesta);

            }
            catch (Exception ex) 
            {
                return BadRequest(ex.Message);
            }
        
        }

     



    }
}