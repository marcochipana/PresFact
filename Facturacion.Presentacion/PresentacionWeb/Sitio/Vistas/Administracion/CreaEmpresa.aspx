<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="CreaEmpresa.aspx.cs" Inherits="PresentacionWeb.Sitio.Vistas.Administracion.CreaEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
  <div class="container">
    <asp:UpdatePanel ID="upnlPage" runat="server">
        <ContentTemplate>                  
        <div runat="server" id="pnlList">
            <fieldset>
                                <legend>
                                    <h4 class="moveback">
                                        EMPRESAS
                                    </h4>
                                </legend>
                               <h4 class="moveback">
                                  <asp:Button ID="btnNuevo" class="btn btn-default" runat="server" Text="Nueva Empresa" />
                               </h4>
                                <div>
                                    <div id="no-more-gridView">
                                        <asp:GridView ID="grdListaEmpresas" CssClass="table table-hover table-striped grid" runat="server" Width="100%" EmptyDataText="No Records found" AutoGenerateColumns="False" DataKeyNames="CT_ID_COBERTURA_AFILIACION_TEMP" OnRowCommand="grdListaEmpresas_RowCommand" OnRowDataBound="grdListaEmpresas_RowDataBound">
                                            
                                            <Columns>
                                                <asp:BoundField DataField="CTVC_ID_USER_MODIFICA_RECARGO" HeaderText="USUARIO" />
                                                <asp:BoundField DataField="CTVC_DESCRIPCION" HeaderText="CONDICION" />
                                                <asp:BoundField DataField="PCVC_ID_POLIZA_COLOCADA" HeaderText="POLIZA" />
                                                <asp:BoundField DataField="CTVC_TIPO_ASEGURADO" HeaderText="TIPO DE ASEGURADO" />
                                                <asp:BoundField DataField="CTVC_ASEGURADO" HeaderText="ASEGURADO" />
                                                <asp:BoundField DataField="CAMO_VALOR_ASEGURADO" HeaderText="VALOR ASEGURADO" />
                                                <asp:BoundField DataField="CAFL_PORCENTAJE_COBERTURA" HeaderText="PORCENTAJE COBERTURA" />
                                                <asp:ButtonField ButtonType="Image" CommandName="EDITAR" ImageUrl="~/UI/img/file_edit.png" Text="Editar">
                                                <ControlStyle Width="16px" />
                                                <ItemStyle HorizontalAlign="Center" />
                                                </asp:ButtonField>
                                                <asp:ButtonField ButtonType="Image" CommandName="ELIMINAR" ImageUrl="~/UI/img/file_delete.png" Text="Eliminar">
                                                <ControlStyle Width="16px" />
                                                <ItemStyle HorizontalAlign="Center" />
                                                </asp:ButtonField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                  </div>
                            </fieldset>
        </div>

         <div runat="server" id="pnlForm">
              <div class="panel panel-default">
                    <div class="panel-heading">
                      <div class="panel-title">
                        <i class="glyphicon glyphicon-wrench pull-right"></i>
                        <h4><asp:Label ID="lblTitle" runat="server" Text="Creacion de una nueva empresa"></asp:Label></h4>
                      </div>
                    </div>
                    <div class="panel-body">
          
                      <div class="form form-vertical">
                        
                        <div class="control-group">
                          <label>Valor Asegurado
                              <asp:RequiredFieldValidator ID="rfvAplicativo" runat="server" ControlToValidate="txtValorAsegurado" ErrorMessage="Debe escribir el valor asegurado" Text="*" Font-Size="Large" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="revAplicativo" runat="server" ControlToValidate="txtValorAsegurado" ErrorMessage="El valor no es valido" Text="*" ForeColor="Red" Font-Size="Large" ValidationExpression="^[0-9]+(\.[0-9]+)?$">*</asp:RegularExpressionValidator>
                          </label>
                          &nbsp;<div class="controls">                            
                            <asp:TextBox ID="txtValorAsegurado" CssClass="form-control" runat="server" placeholder="Ingrese el valor asegurado"></asp:TextBox>
                          </div>
                        </div>  
                            
                        <div class="control-group">
                          <label>Porcentaje Cobertura
                              <asp:RequiredFieldValidator ID="rfvPorcentaje" runat="server" ControlToValidate="txtPorcentajeCobertura" ErrorMessage="Debe escribir el Porcentaje de cobertura" Text="*" Font-Size="Large" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="revPorcentaje" runat="server" ControlToValidate="txtPorcentajeCobertura" ErrorMessage="El valor no es valido" Text="*" ForeColor="Red" Font-Size="Large" ValidationExpression="^[0-9]+(\.[0-9]+)?$">*</asp:RegularExpressionValidator> 
                          </label>
                          <div class="controls">
                              <asp:TextBox id="txtPorcentajeCobertura" CssClass="form-control" runat="server" placeholder="Ingrese el Porcentaje de cobertura"/>
                          </div>
                        </div> 
                          
                          <div class="control-group">
                          <label>Condicion
                              <asp:RequiredFieldValidator ID="rfvCondicion" runat="server" ControlToValidate="txtCondicion" ErrorMessage="Debe escribir la descripcion" Text="*" Font-Size="Large" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                          </label>
                          &nbsp;<div class="controls">                            
                            <asp:TextBox ID="txtCondicion" CssClass="form-control" runat="server" placeholder="Ingrese la condicion del cambio"></asp:TextBox>
                          </div>
                        </div> 

                        <div class="control-group">
                          <label></label>
                          <div class="controls">
                               <asp:Button ID="btGuardar" class="btn btn-primary" runat="server" Text="Guardar" OnClientClick="if (Page_ClientValidate()) showLoader('Registrando Empresa...');" OnClick="btGuardar_Click"/>
                               <asp:Button ID="btnCancelar" class="btn btn-default" runat="server" Text="Cancelar" CausesValidation ="False" />
                          </div>
                        </div>   
            
                      </div>
                    </div><!--/panel content-->
                  </div>
        </div> 
        </ContentTemplate>
    </asp:UpdatePanel>
  </div>

</asp:Content>
