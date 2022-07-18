using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using C4LNegG3ContrerasMontesinos;

namespace C4LDataG3ContrerasMontesinos
{
    public class BaseDato
    {
        #region

        public bool ingresar(Inventario objInventario)
        {
            bool proceso = false;
            try
            {
                using (DB_PAAC4G3ContrerasMontesinos db = new DB_PAAC4G3ContrerasMontesinos())
                {
                    int resultado = db.pa_ingresar(objInventario.Codigo, objInventario.Fecha, objInventario.Seccion, objInventario.NombreArticulo, objInventario.Estado, objInventario.Etiquetado, objInventario.RealizadoPor, objInventario.Eliminado);
                    proceso = resultado != 0;
                }

            }
            catch (Exception error)
            {
                objInventario.Mensaje = "Excepcion Capturada: {0} " + error.ToString();
            }
            return proceso;
        }
        public List<Inventario> mostrar(Inventario objInventario)
        {
            List<Inventario> lista = new List<Inventario>();

            try
            {
                using (DB_PAAC4G3ContrerasMontesinos db = new DB_PAAC4G3ContrerasMontesinos())
                {
                    var listaResultados = db.pa_mostrar(objInventario.Codigo);
                    foreach (var elemento in listaResultados)
                    {
                        Inventario inventario = new Inventario();
                        inventario.Id = elemento.id;
                        inventario.Codigo = elemento.codigo;
                        inventario.Eliminado = elemento.eliminado;
                        inventario.Estado = elemento.estado;
                        inventario.Etiquetado = elemento.etiquetado;
                        inventario.Fecha = elemento.fecha;
                        inventario.NombreArticulo = elemento.nombreArticulo;
                        inventario.RealizadoPor = elemento.realizadoPor;
                        inventario.Seccion = elemento.seccion;
                        lista.Add(inventario);
                    }
                }

            }
            catch (Exception error)
            {
                objInventario.Mensaje = "Excepcion Capturada: {0} " + error.ToString();
            }
            return lista;
        }

        public bool modificar(Inventario objInventario)
        {
            bool proceso = false;
            try
            {
                using (DB_PAAC4G3ContrerasMontesinos db = new DB_PAAC4G3ContrerasMontesinos())
                {
                    var resultado = db.pa_modificar(objInventario.Id, objInventario.Codigo, objInventario.Fecha, objInventario.Seccion, objInventario.NombreArticulo, objInventario.Estado, objInventario.Etiquetado, objInventario.RealizadoPor);
                    proceso = resultado != 0;
                }

            }
            catch (Exception error)
            {
                objInventario.Mensaje = "Excepcion Capturada: {0} " + error.ToString();
            }
            return proceso;
        }

        public bool eliminar(Inventario objInventario)
        {
            bool proceso = false;
            try
            {
                using (DB_PAAC4G3ContrerasMontesinos db = new DB_PAAC4G3ContrerasMontesinos())
                {
                    int resultado = db.pa_eliminar(objInventario.Codigo, objInventario.Eliminado);
                    proceso = resultado != 0;
                }

            }
            catch (Exception error)
            {
                objInventario.Mensaje = "Excepcion Capturada: {0} " + error.ToString();
            }
            return proceso;
        }

        #endregion

    }
}
