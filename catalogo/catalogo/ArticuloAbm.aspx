<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ArticuloAbm.aspx.cs" Inherits="catalogo.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/ArticuloAbm.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h1 class="text-center main-title">Crear Articulo</h1>
    </div>
    <article>
        <section>
            <div class="row container">
                <div class="col-6">
                    <div class="mb-3">
                        <label for="txtCodigo" class="form-label">Código</label>
                        <asp:TextBox ID="txtCodigo" CssClass="form-control" runat="server" ></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="txtNombre" class="form-label">Nombre</label>
                        <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" ></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="txtDescripcion" class="form-label">Descripcion</label>
                        <asp:TextBox ID="txtDescripcion" CssClass="form-control" runat="server" ></asp:TextBox>
                    </div>
                      <div class="mb-3">
                        <label for="txtMarca" class="form-label">Marca</label>
                        <asp:TextBox ID="txtMarca" CssClass="form-control" runat="server" ></asp:TextBox>
                    </div>
                      <div class="mb-3">
                        <label for="txtCategoria" class="form-label">Categoria</label>
                        <asp:TextBox ID="txtCategoria" CssClass="form-control" runat="server" ></asp:TextBox>
                    </div>

                   
                    <div class="mb-3">
                        <label for="txtUrl" class="form-label">URL</label>
                        <asp:TextBox ID="txtUrl" CssClass="form-control" runat="server" ></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="txtPrecio" class="form-label">Precio</label>
                        <asp:TextBox ID="txtPrecio" CssClass="form-control" runat="server" ></asp:TextBox>
                    </div>

                  


                </div>
                <div class="col-6">
                    <div class="mb-3">

                    <asp:Image ID="imgArticulo" CssClass="img-articulo" runat="server" />
                    </div>
                </div>
            </div>
            <div class="container row">
                <div class="col-3">
                    <div class="mb-3">
                        <asp:Button Text="Aceptar" CssClass="btn btn-primary" runat="server" />
                    </div>
                </div>
                <div class="col-3">
                    <div class="mb-3">
                        <asp:Button Text="Volver" CssClass="btn btn-secondary" runat="server" />
                    </div>
                </div>
            </div>
        </section>
    </article>
</asp:Content>
