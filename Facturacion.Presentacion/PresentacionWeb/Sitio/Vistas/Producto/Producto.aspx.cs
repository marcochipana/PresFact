using PresentacionWeb.Sitio.Controladores.Producto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PresentacionWeb.Sitio.Vistas.Producto
{
    public partial class Producto : System.Web.UI.Page
    {
        CProducto cProducto = new CProducto();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var test= cProducto.GetProductAsync("1");
            }

        }
    }
}