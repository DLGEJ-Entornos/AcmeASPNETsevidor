﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones.aspx.cs" Inherits="GesPresta.Prestaciones" %>
<%@ Register Src="~/Cabecera.ascx" TagPrefix="uc1" TagName="Cabecera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Prestaciones</title>
    <link href="./HojaPrestaciones.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera runat="server" ID="Cabecera" />
        </div>
        <div>
            <h2>DATOS DE LAS PRESTACIONES</h2>
            <asp:RegularExpressionValidator ID="regtxtCodPre" runat="server" ControlToValidate="txtCodPre" ValidationExpression="\d{3}-\d{3}-\d{3}" ForeColor="green" ErrorMessage="Formato incorrecto, debe ser así: 123-456-789"></asp:RegularExpressionValidator>
            <asp:TextBox class="tBox" id="txtCodPre" placeholder="Código Prestación" runat="server" />
            <asp:TextBox class="tBox" id="txtDesPre" placeholder="Descripción" runat="server" />
            <asp:TextBox class="tBox" id="txtImpPre" placeholder="Importe Fijo" runat="server" />
            <asp:TextBox class="tBox" id="txtPorPre" placeholder="Porcentaje de Importe" runat="server" />

            <label id="labelTPre" for="ddlTipPre">Tipo de Prestación:</label>
            <asp:DropDownList ID="ddlTipPre" runat="server">
                <asp:ListItem Value="Dentaria" Text="Dentaria" />
                <asp:ListItem Value="Familiar" Text="Familiar" />
                <asp:ListItem Value="Ocular" Text="Ocular" Selected="True" />
                <asp:ListItem Value="Otras" Text="Otras" />
            </asp:DropDownList>

            <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click" />
        </div>
    </form>
</body>
</html>
