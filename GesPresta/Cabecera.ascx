<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.Cabecera" %>
<link href="./Cabecera.css" type="text/css" rel="stylesheet" />
<div id="contenedor">

    <div class="sub" id="Nav">
        <asp:LinkButton CssClass="linkbuton" runat="server" PostBackUrl="~/Default.aspx">Inicio</asp:LinkButton>
        <asp:LinkButton CssClass="linkbuton" runat="server" PostBackUrl="~/Empleados1.aspx">Empleados</asp:LinkButton>
        <asp:LinkButton CssClass="linkbuton" runat="server" PostBackUrl="~/Prestaciones1.aspx">Prestaciones</asp:LinkButton>
    </div>

    <div class="sub" id="Titulo">
        <p>ACME INNOVACIÓN, S. FIG.</p>
    </div>

    <div class="sub" id="SegTit">
        <p>Gestión de Prestaciones Salariales</p>
    </div>
</div>