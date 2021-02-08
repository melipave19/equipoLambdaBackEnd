using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using PasantiasWebApi.Services;

namespace PasantiasWebApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class HomeController : ControllerBase
    {
        private readonly FormularioARMService _formularioARMservice;
        public HomeController(FormularioARMService formularioARMservice)
        {
            _formularioARMservice=formularioARMservice;
        }
        [HttpGet]
        [Route("MostrarPasantias")]
        public ActionResult MostrarPasantias()
        {
            try
            {
                var lista_pasantias=_formularioARMservice.MostrarPasantias();
                return Ok(lista_pasantias);
            }
            catch(Exception e)
            {
                return Ok(e.Message);
            }
        }

        [HttpGet]
        [Route("FiltrarPasantias/{id_especialidad}/{cantidad_años}/{remuneracion}")]
        public ActionResult FiltrarPasantias(int id_especialidad=0, int cantidad_años=0,float remuneracion=0)
        {
            var lista_pasantias=_formularioARMservice.FiltrarPasantias(id_especialidad,cantidad_años,remuneracion);
            return Ok(lista_pasantias);
        }

        [HttpGet]
        [Route("MostrarDatoPasantia/{id_formuarioARM}")]
        public ActionResult MostrarDatoPasantia(int id_formuarioARM=0)
        {
            var formularioARM=_formularioARMservice.MostrarDatoPasantia(id_formuarioARM);
            return Ok(formularioARM);
        }
        [HttpGet]
        [Route("MostrarEspecialidad")]
        public ActionResult MostrarEspecialidad()
        {
            var especialidad= _formularioARMservice.MostrarEspecialidad();
            return Ok(especialidad);
        }
        [HttpGet]
        [Route("MostrarCantidadAños")]
        public ActionResult MostrarCantidadAños(int id_formuarioARM=0)
        {
            var cantidad_años= _formularioARMservice.MostrarCantidadAños();
            return Ok(cantidad_años);
        }

    }
}
