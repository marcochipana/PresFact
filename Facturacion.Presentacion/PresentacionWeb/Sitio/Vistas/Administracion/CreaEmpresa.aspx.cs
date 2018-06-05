using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PresentacionWeb.Sitio.Vistas.Administracion
{
    public partial class CreaEmpresa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btGuardar_Click(object sender, EventArgs e)
        {
            //ScriptManager.RegisterStartupScript(this, typeof(Page), "openLoader", "showLoader('Registrando Empresa...')", true);
            Thread.Sleep(10000);

            ScriptManager.RegisterStartupScript(this, typeof(Page), "closeLoader", "hideLoader()", true);
            ScriptManager.RegisterStartupScript(this, typeof(Page), "response", "toastr.success('success')", true);
        }

        protected void grdListaEmpresas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            var dataKey = grdListaEmpresas.DataKeys[Convert.ToInt32(e.CommandArgument)];
            if (dataKey != null)
            {
                int id = Convert.ToInt32(dataKey.Value);
                string strCommand = e.CommandName;
                switch (strCommand)
                {
                    case "EDITAR":
                        //lblTitle.Text = "Modificacion de Recargo";
                        //ViewState["ID"] = id;

                        //var objCoberturaAfiliacionT = _cRecargoValidacion.GetObjCAfiliacionById(id);
                        //txtValorAsegurado.Text = Convert.ToString(objCoberturaAfiliacionT.CAMO_VALOR_ASEGURADO);
                        //txtPorcentajeCobertura.Text = Convert.ToString(objCoberturaAfiliacionT.CAFL_PORCENTAJE_COBERTURA);
                        //txtCondicion.Text = objCoberturaAfiliacionT.CTVC_DESCRIPCION;

                        //pnlFormSaveEdit.Visible = true;
                        //pnlListaRecargasPendientes.Visible = false;
                        break;
                    case "ELIMINAR":
                        //var response = _cRecargoValidacion.UpdateDeleteRecargo(id);
                        //if (response)
                        //{
                        //    //el registro cobertura afiliacion temporal ha sido eliminado
                        //    ScriptManager.RegisterStartupScript(this, typeof(Page), "response",
                        //        CParametrosComplejos.ToastrSuccess("El Recargo ha sido eliminado"), true);
                        //    LoadInitial();
                        //}
                        //else
                        //{
                        //    ScriptManager.RegisterStartupScript(this, typeof(Page), "response", CParametrosComplejos.ToastrError("No se puede Eliminar el registro"), true);
                        //}
                        break;
                }
            }
        }

        protected void grdListaEmpresas_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[0].Attributes["data-title"] = "USUARIO";
                e.Row.Cells[1].Attributes["data-title"] = "CONDICION";
                e.Row.Cells[2].Attributes["data-title"] = "POLIZA";
                e.Row.Cells[3].Attributes["data-title"] = "ASEGURADO";
                e.Row.Cells[4].Attributes["data-title"] = "USUARIO";
                e.Row.Cells[5].Attributes["data-title"] = "VALOR ASEGURADO";
                e.Row.Cells[6].Attributes["data-title"] = "PORCENTAJE COBERTURA";

                //((ImageButton)e.Row.Cells[7].Controls[0]).OnClientClick = "showLoader('Procesando');"; // add any JS you want here
                //((ImageButton)e.Row.Cells[8].Controls[0]).OnClientClick = "if(!confirm('Desea Eliminar el Recargo?')) { return;}else{ showLoader('Guardando cambios');}"; // add any JS you want here
                //((ImageButton)e.Row.Cells[8].Controls[0]).OnClientClick = "if(!confirm('Desea Eliminar el Recargo?')) return;"; // add any JS you want here
            }
        }
    }
}