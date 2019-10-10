﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPDefault.aspx.cs" Inherits="GesPresta.MPDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./MPDefault.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        </div>
        <div id="info">
            <p>
                La corporación ACME está comprometida con sus empleados.
                Para ello ha establecido una serie de prestaciones que pueden utilizar sus 
                empleados para obtener ayudas sociales asociados a diversos gastos de tipo 
                familiar, médico, etc.
            </p>
            <p>
                Esta aplicación a través de Web permite realizar todas las tareas de gestión 
                relacionadas con la presentación de ayudas a los empleados.
            </p>
            <p>
                Para cualquier duda o consulta puede contactar con el Departamento de Ayuda Social: 
                <asp:LinkButton runat="server">ayuda.social@acme.com</asp:LinkButton>
            </p>

        </div>
</asp:Content>
