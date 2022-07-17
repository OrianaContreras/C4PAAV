using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using C4LNegG3ContrerasMontesinos;


public partial class Ingresar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
      
    }

    protected void btnIngresar_Click(object sender, EventArgs e)
    {
        if (Calendar1.SelectedDate == DateTime.MinValue)
        {
            lblCalendarMensaje.Visible = true;
        }
        else
        {
            lblCalendarMensaje.Visible = false;
            Inventario objInventario = new Inventario();
            bool tieneError = false;

            try
            {
                objInventario.Codigo = int.Parse(txtCodigo.Text);
            }
            catch
            {
                lblMensaje.Text = "Ingrese un código válido";
                lblMensaje.Visible = true;
                tieneError = true;
            }
            
            objInventario.NombreArticulo = txtNombreArticulo.Text;
            objInventario.Fecha = Calendar1.SelectedDate;
            try
            {
                objInventario.Seccion = int.Parse(txtSeccion.Text);
            }
            catch
            {
                lblMensaje.Text = "Ingrese un número de sección válido";
                lblMensaje.Visible = true;
                tieneError = true;
            }

            if (!tieneError)
            {
                objInventario.Estado = txtEstado.Text;
                objInventario.Etiquetado = ddlEtiquetado.SelectedValue.Equals("true");
                objInventario.RealizadoPor = txtRealizadoPor.Text;

                bool noTieneError = objInventario.ingresar(objInventario);

                if (noTieneError)
                {
                    lblMensaje.Text = "Los datos fueron ingresados correctamente...";
                    lblMensaje.Visible = true;
                }
                else
                {
                    lblMensaje.Text = "Error al insertar datos. Favor verifique los datos ingresados.";
                    lblMensaje.Visible = true;
                }
            }
            
        }

    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        limpiar();
    }

    protected void limpiar()
    {
        txtCodigo.Text = string.Empty;
        txtNombreArticulo.Text = string.Empty;
        txtSeccion.Text = string.Empty;
        txtEstado.Text = string.Empty;
        txtRealizadoPor.Text = string.Empty;
        lblMensaje.Text = string.Empty;
        lblMensaje.Visible = false;
    }// fin limpiar

}