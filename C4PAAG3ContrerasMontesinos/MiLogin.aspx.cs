using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class MiLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnIngresar_Click(object sender, EventArgs e)
    {
        if (FormsAuthentication.Authenticate(txtUsuario.Text, txtClave.Text))
        {
            FormsAuthentication.RedirectFromLoginPage(txtUsuario.Text, false);
        }
        else
        {
            lblMensaje.Text = "Usuario o Clave Incorrecta.";
            lblMensaje.Visible = true;
        }
    }// Fin btnIngresar_Click
}