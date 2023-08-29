<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ListadoArticulos.aspx.cs" Inherits="catalogo.ListadoArticulos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/ListadoArticulos.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container text-center">
        <h1>Lista Articulos</h1>
    </div>
    <div class="container">
        <asp:Label ID="lblFiltrar" runat="server" Text="Filtrar por nombre"></asp:Label>
        <div class="row">
            <div class="col-4">
                <div class="mb-3">
                    <asp:TextBox CssClass="form-control" ID="txtFiltro" AutoPostBack="true" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-4" style="display: flex; flex-direction: column; justify-content: flex-end;">
                <div class="mb-3">
                    <asp:CheckBox Text="Filtro Avanzado" ID="chbFiltroAvanzado" OnCheckedChanged="chbFiltroAvanzado_CheckedChanged" AutoPostBack="true" runat="server" />

                </div>
            </div>
        </div>
    </div>

    <%if (chbFiltroAvanzado.Checked)
        { %>
    <div class="container advance-filter">
        <div class="row">
            <div class="col-3">
                <asp:Label ID="lblCampo" runat="server" Text="Filtrar Por"></asp:Label>
                <asp:DropDownList ID="ddlCampo" AutoPostBack="true" OnSelectedIndexChanged="ddlCampo_SelectedIndexChanged" CssClass="form-control" runat="server">
                    <asp:ListItem Text="Categoria" />
                    <asp:ListItem Text="Marca" />
                    <asp:ListItem Text="Precio" />
                </asp:DropDownList>
            </div>
            <div class="col-3">
                <asp:Label ID="lblCriterio" runat="server" Text="Criterio"></asp:Label>
                <asp:DropDownList ID="ddlCriterio" CssClass="form-control" runat="server">
                </asp:DropDownList>
            </div>
            <div class="col-3">
                <asp:Label ID="lblFiltroAvanzado" runat="server" Text="Filtro"></asp:Label>
                <asp:TextBox runat="server" ID="txtFiltroAvanzado" CssClass="form-control" />

            </div>
            <div class="col-3">
                <asp:Label ID="lblEstado" runat="server" Text="Estado"></asp:Label>
                <asp:DropDownList ID="ddlEstado" CssClass="form-control" runat="server">
                    <asp:ListItem Text="Activo" />
                    <asp:ListItem Text="Inactivo" />
                    <asp:ListItem Text="Todos" />
                </asp:DropDownList>
            </div>


        </div>


    </div>
    <div class="row">
        <div class="col-3"></div>
        <asp:Button ID="btnFiltroAvanzado" Text="Filtrar" CssClass="btn btn-secondary" runat="server" />
    </div>
    <%} %>




    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <asp:GridView ID="dgvArticulos" DataKeyNames="Id" OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged"
                AutoGenerateColumns="false" OnPageIndexChanging="dgvArticulos_PageIndexChanging"
                AllowPaging="true" PageSize="10" CssClass="container table table-hover" runat="server">
                <Columns>
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
                    <asp:BoundField HeaderText="Categoria" DataField="Categoria.Descripcion" />
                    <asp:BoundField HeaderText="Marca" DataField="Marca.Descripcion" />
                    <asp:CommandField HeaderText="Action" ShowSelectButton="true" SelectText="Seleccionar" />
                </Columns>
            </asp:GridView>
        </ContentTemplate>

    </asp:UpdatePanel>


</asp:Content>
