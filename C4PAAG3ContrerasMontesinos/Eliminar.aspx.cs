using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using C4LNegG3ContrerasMontesinos;

public partial class Eliminar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {

        Inventario objInventario = new Inventario();
        bool tieneError = false;

        try
        {
            objInventario.Codigo = int.Parse(txtCodigo.Text);
        } 
        catch
        {
            lblMensaje.Text = "Favor ingrese un código válido.";
            lblMensaje.Visible = true;
            tieneError = true;
        }
        
        if (!tieneError)
        {
            objInventario.eliminar(objInventario);
            bool noTieneError = objInventario.eliminar(objInventario);

            if (noTieneError)
            {
                lblMensaje.Text = "El artículo fue eliminado correctamente...";
                lblMensaje.Visible = true;
            }
            else
            {
                lblMensaje.Text = "Error: No se pudo eliminar el artículo con código " + objInventario.Codigo + ".\n Verifique que el código exista";
                lblMensaje.Visible = true;
            }
        }
    }
}