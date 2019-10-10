<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrestacionesValCampOblEJ6.aspx.cs" Inherits="GesPresta.PrestacionesValCampOblEJ6" %>
<%@ Register Src="~/Cabecera.ascx" TagPrefix="uc1" TagName="Cabecera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Prestaciones</title>
    <link href="./Prestaciones.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">    //display = "dinamic" al lado de runat.
        <div>
            <uc1:Cabecera runat="server" ID="Cabecera" />
        </div>
        <div>
            <h2>DATOS DE LAS PRESTACIONES</h2>
            <asp:RequiredFieldValidator ControlToValidate="txtCodPre" ID="rqdtxtCodPre" runat="server" ForeColor="red" ErrorMessage="Se requiere Código de Prestación."></asp:RequiredFieldValidator>
            <asp:TextBox class="tBox" id="txtCodPre" placeholder="Código Prestación" runat="server" />

            <asp:TextBox class="tBox" id="txtDesPre" placeholder="Descripción" runat="server" />

            <asp:RequiredFieldValidator ControlToValidate="txtImpPre" ID="rqdtxtImpPre" runat="server" ForeColor="red" ErrorMessage="Se requiere importe fijo."></asp:RequiredFieldValidator>
            <asp:RangeValidator ControlToValidate="txtImpPre" MinimumValue="0,00" MaximumValue="500,00" ID="rngtxtImpPre" runat="server" ForeColor="red" Type="Double" ErrorMessage="El valor comprendido tiene que estar entre 0 y 500"></asp:RangeValidator>
            <asp:TextBox class="tBox" id="txtImpPre" placeholder="Importe Fijo" runat="server" />

            <asp:RequiredFieldValidator ControlToValidate="txtPorPre" ID="rqdtxtPorPre" runat="server" ForeColor="red" ErrorMessage="Se requiere porcentaje de importe."></asp:RequiredFieldValidator>
            <asp:RangeValidator ControlToValidate="txtPorPre" MinimumValue="0,00" MaximumValue="15,00" ID="rngtxtPorPre" runat="server" ForeColor="red" Type="Double" ErrorMessage="El valor comprendido tiene que estar entre 0% y 15%"></asp:RangeValidator>
            <asp:TextBox class="tBox" id="txtPorPre" placeholder="Porcentaje de Importe" runat="server" />

            <label id="labelTPre" for="ddlTipPre">Tipo de Prestación:</label>
            <asp:DropDownList ID="ddlTipPre" runat="server">
                <asp:ListItem Value="Dentaria" Text="Dentaria" />
                <asp:ListItem Value="Familiar" Text="Familiar" />
                <asp:ListItem Value="Ocular" Text="Ocular" Selected="True" />
                <asp:ListItem Value="Otras" Text="Otras" />
            </asp:DropDownList>

            <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" />
        </div>
    </form>
</body>
</html>
