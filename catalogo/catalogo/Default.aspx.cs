using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using capaNegocio;
using capaDominio;

namespace catalogo
{
    public partial class Default : System.Web.UI.Page
    {
        private List<Articulo> listaArticulo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            try
            {
                Session.Add("ListaArticulos", negocio.listar());

                if (!IsPostBack)
                {
                    repRepetidor.DataSource = Session["ListaArticulos"];
                    repRepetidor.DataBind();

                }
            }
            catch (Exception)
            {

                throw;
            }
           

        }

        protected void ddlFiltro_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}