using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using C4LNegG3ContrerasMontesinos;

public partial class Listar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        Inventario objInventario = new Inventario();
        try
        {
            objInventario.Codigo = int.Parse(txtCodigo.Text);
            var lista = objInventario.mostrar(objInventario);
            bool noTieneError = String.IsNullOrEmpty(objInventario.Mensaje);

            if (noTieneError)
            {
                lblMensaje.Text = "";
                lblMensaje.Visible = false;
                dgMostrar.DataSource = lista;
                dgMostrar.DataBind();
            }
            else
            {
                lblMensaje.Text = "Error al buscar los datos \n...." + objInventario.Mensaje;
                lblMensaje.Visible = true;
            }

        }
        catch
        {
            lblMensaje.Text = "Favor ingrese un código válido";
            lblMensaje.Visible = true;
        }
       
    }

}