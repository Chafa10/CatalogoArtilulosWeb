using capaDominio;
using capaNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace catalogo
{
    public partial class Detalle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"]);
                List<Articulo> listaArticulos = (List<Articulo>)Session["ListaArticulos"];

                Articulo seleccionado = listaArticulos.Find(x => x.Id == id);

                txtCodigo.Text = seleccionado.Codigo.ToString();
                txtDescripcion.Text = seleccionado.Descripcion;
                txtNombre.Text = seleccionado.Nombre;
                txtPrecio.Text = seleccionado.Precio.ToString();
                txtUrl.Text = seleccionado.ImagenUrl;
                txtCategoria.Text = seleccionado.Categoria.Descripcion;
                txtMarca.Text = seleccionado.Marca.Descripcion;
                
                imgArticulo.ImageUrl = seleccionado.ImagenUrl;
            }
        }
    }
}