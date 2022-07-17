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
            dgMostrar.DataSource = lista;
            dgMostrar.DataBind();
        }
        catch
        {
            Console.WriteLine("Favor ingrese un código válido");
        }
       
    }

}