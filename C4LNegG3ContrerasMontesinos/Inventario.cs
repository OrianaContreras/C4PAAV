using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using C4LDataG3ContrerasMontesinos;

namespace C4LNegG3ContrerasMontesinos
{
    public class Inventario
    {

        #region atributos
        private string _nombreArticulo, _estado, _realizadoPor;
        private DateTime _fecha;
        private string _mensaje;
        private bool _etiquetado, _eliminado;
        private int _id, _codigo, _seccion;
        #endregion

        #region propiedades

        public string NombreArticulo { get => _nombreArticulo; set => _nombreArticulo = value; }
        public string Estado { get => _estado; set => _estado = value; }
        public string RealizadoPor { get => _realizadoPor; set => _realizadoPor = value; }
        public DateTime Fecha { get => _fecha; set => _fecha = value; }
        public string Mensaje { get => _mensaje; set => _mensaje = value; }
        public bool Etiquetado { get => _etiquetado; set => _etiquetado = value; }
        public bool Eliminado { get => _eliminado; set => _eliminado = value; }
        public int Id { get => _id; set => _id = value; }
        public int Codigo { get => _codigo; set => _codigo = value; }
        public int Seccion { get => _seccion; set => _seccion = value; }

        #endregion

        #region operaciones

        public bool ingresar(Inventario objInventario)
        {
            BaseDato objDB = new BaseDato();
            bool result = objDB.ingresar(objInventario);
            return result;
        }// fin ingresar

        public List<Inventario> mostrar(Inventario objInventario)
        {
            BaseDato objDB = new BaseDato();
            List<Inventario> inventarios = objDB.mostrar(objInventario);
            return inventarios;
        }// fin mostrar

        public bool modificar(Inventario objInventario)
        {
            BaseDato objDB = new BaseDato();
            bool result = objDB.modificar(objInventario);
            return result;
        }// fin modificar

        public bool eliminar(Inventario objInventario)
        {
            BaseDato objDB = new BaseDato();
            objInventario.Eliminado = true;
            bool result = objDB.eliminar(objInventario);
            return result;
        }// fin eliminar

        #endregion

        public bool validacionNumeroNegativo(int valor)
        {
            return valor <= 0;
        }

        public bool validacionCampoVacio(string valor)
        {
            return String.IsNullOrEmpty(valor);
        }



    }

}
