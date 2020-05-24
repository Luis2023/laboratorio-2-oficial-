﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using System.Data.SqlClient;
using System.Data;
using MVCLaboratorio.Utilerias;

namespace MVCLaboratorio.Controllers
{
    public class VideoController : Controller
    {
        //
        // GET: /Video/

        public ActionResult VerVideo()
        {//Consultar videos de la BD 
            ViewData["video"] = BaseHelper.ejecutarConsulta(
                "SELECT * FROM video", CommandType.Text);
            return View();
        }
        [HttpPost]
        public ActionResult VerVideo(string titulo)
    {
        List<SqlParameter> parametros = new List<SqlParameter>();
        parametros.Add(new SqlParameter("@titulo", titulo));

        BaseHelper.ejecutarSentencia("sp_video_Buscar", CommandType.StoredProcedure, parametros);

        return RedirectToAction ("Busqueda","Video");
    }

       
        //public ActionResult Busqueda()
       // {//Consultar videos de la BD 
            //ViewData["video"] = BaseHelper.ejecutarSentencia(
                 //  "select * from video Where titulo Like '%@titulo%' ", CommandType.Text,);

           // return View();
       // }

        public ActionResult Busqueda(string titulo)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@titulo", titulo));

            BaseHelper.ejecutarSentencia("sp_video_Buscar", CommandType.StoredProcedure, parametros);

            return RedirectToAction("Busqueda", "Video");
        }
        
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

        public ActionResult Create()
        {
            ViewData["video"] = BaseHelper.ejecutarConsulta(
                   "SELECT * FROM video", CommandType.Text);
            return View();
        }

        [HttpPost]
        public ActionResult Create(int idVideo,
                                   string titulo, 
                                   int repro, 
                                   string url)
        {

            //guardar datos
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@repro", repro));
            parametros.Add(new SqlParameter("@url", url));

            BaseHelper.ejecutarSentencia("sp_video_Create", CommandType.StoredProcedure,parametros);

            return View("VideoAgregado");
        }

        public ActionResult VideoAgregado()
        {
            return View();
        }
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        public ActionResult Delete()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Delete(int idVideo)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            BaseHelper.ejecutarSentencia("sp_video_Delete", CommandType.StoredProcedure,parametros);

            return View("VideoEliminado");
        }
        public ActionResult VideoEliminado()
        {
            return View();
        }
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        public ActionResult Edit()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Edit(int idVideo,
                                   string titulo,
                                   int repro,
                                   string url)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo",idVideo));
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@repro", repro));
            parametros.Add(new SqlParameter("@url", url));

            BaseHelper.ejecutarSentencia("sp_video_editar", CommandType.StoredProcedure,parametros);

            return View();
        }

        public ActionResult VideoModificado()
        {
            return View();
        }
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 //----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    }
}
