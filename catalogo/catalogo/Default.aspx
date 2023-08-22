<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="catalogo.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="quick-filter d-flex justify-content-end">

            <div class="quick-filter btn-group" role="group" aria-label="Basic radio toggle button group">
                <span class="text">Filtrar por</span>
               
                <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
                <label class="btn btn-outline-primary" for="btnradio1">Menor Precio</label>

                <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
                <label class="btn btn-outline-primary" for="btnradio2">Mayor Precio</label>

            </div>
        </div>




    </div>
    <asp:Repeater ID="repRepetidor" runat="server">
        <ItemTemplate>
            <section class="main-container">
                <div class="container card w-50 d-flex flex-row">
                    <div class="card-img-container" style="width: 20%;">
                        <img src="<%# Eval("ImagenUrl") %>" class="card-img-top h-100" alt="..." style="max-height: 130px; max-width: 130px">
                    </div>
                    <div class="card-body" style="width: 75%;">
                        <h3 class="card-title"><%#Eval("Nombre") %></h3>
                        <h5 class="card-title">Precio <%#Eval("Precio") %></h5>
                        <p class="card-text"><%#Eval("Descripcion") %></p>
                        <asp:Button CssClass="btn btn-outline-primary" ID="Button1" runat="server" Text="Detalle" />
                    </div>

                    <svg class="hidden" fill="#000000" height="20px" width="20px" style="margin: 10px 10px 0 0;" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                        viewBox="0 0 471.701 471.701" xml:space="preserve">
                        <g>
                            <path d="M433.601,67.001c-24.7-24.7-57.4-38.2-92.3-38.2s-67.7,13.6-92.4,38.3l-12.9,12.9l-13.1-13.1
		c-24.7-24.7-57.6-38.4-92.5-38.4c-34.8,0-67.6,13.6-92.2,38.2c-24.7,24.7-38.3,57.5-38.2,92.4c0,34.9,13.7,67.6,38.4,92.3
		l187.8,187.8c2.6,2.6,6.1,4,9.5,4c3.4,0,6.9-1.3,9.5-3.9l188.2-187.5c24.7-24.7,38.3-57.5,38.3-92.4
		C471.801,124.501,458.301,91.701,433.601,67.001z M414.401,232.701l-178.7,178l-178.3-178.3c-19.6-19.6-30.4-45.6-30.4-73.3
		s10.7-53.7,30.3-73.2c19.5-19.5,45.5-30.3,73.1-30.3c27.7,0,53.8,10.8,73.4,30.4l22.6,22.6c5.3,5.3,13.8,5.3,19.1,0l22.4-22.4
		c19.6-19.6,45.7-30.4,73.3-30.4c27.6,0,53.6,10.8,73.2,30.3c19.6,19.6,30.3,45.6,30.3,73.3
		C444.801,187.101,434.001,213.101,414.401,232.701z" />
                        </g>
                    </svg>

                </div>

            </section>
        </ItemTemplate>
    </asp:Repeater>




</asp:Content>
