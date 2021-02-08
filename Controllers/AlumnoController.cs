using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using PasantiasWebApi.Services;
using PasantiasWebApi.Models;

namespace PasantiasWebApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
     public class AlumnoController : ControllerBase
    {
        private readonly AlumnoService _alumnoService;
        private readonly CorreoService _correoService;
        public AlumnoController(AlumnoService alumnoService,CorreoService correoService)
        {
            _alumnoService =alumnoService;
             _correoService =correoService;
        }

        [HttpPost]
        [Route("postularAlumno")]
        public IActionResult postularAlumno([FromBody] formularioarmxalumno alumnoxarm)
        {
            try
            {
                var postulado= _alumnoService.postularAlumno(alumnoxarm);
                if(postulado)
                    {
                        return Ok();
                    }
                else
                    {
                        return BadRequest();
                    }
            }
            catch(System.Exception)
            {
                throw;
            }
        }        
        
        [HttpPut]
        [Route("actualizarAlumno")]
        public IActionResult actualizarAlumno([FromBody] alumno alumno)
        {
            try
            {
                
                var actualizar= _alumnoService.actualizarAlumno(alumno);    
                if(actualizar)
                    {
                        return Ok();
                    }
                else
                    {
                        return BadRequest();
                    }
                
            }
            catch (System.Exception)
                {
                    throw;
                }
        }
        [HttpGet]
        [Route("obtenerAlumno/{legajo}")]
        public IActionResult obtenerAlumno(int legajo)
        {
            try
            {
                
                var alumno= _alumnoService.obtenerAlumno(legajo);    
                return Ok(alumno);
                
            }
            catch (System.Exception)
                {
                    throw;
                }
        }
        [HttpGet]
        [Route("validarAlumno/{legajo}/{id_formulario}")]
        public IActionResult validarAlumno(int legajo, int id_formulario)
        {
            try
            {
                
                var alumno= _alumnoService.validarAlumno(legajo,id_formulario);    
                return Ok(alumno);
                
            }
            catch (System.Exception)
                {
                    throw;
                }
        }
    }
}