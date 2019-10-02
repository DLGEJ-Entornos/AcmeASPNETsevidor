<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados1.aspx.cs" Inherits="GesPresta.Empleados1" %>
<%@ Register Src="~/Cabecera.ascx" TagPrefix="uc1" TagName="Cabecera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Empleados</title>
    <link href="./Empleados.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera runat="server" ID="Cabecera" />
        </div>
        <div>
            <h2>DATOS DE LOS EMPLEADOS</h2>
            <asp:TextBox class="tBox" id="txtCodEmp" placeholder="Código Empleado" runat="server" />
            <asp:TextBox class="tBox" id="txtNifEmp" placeholder="NIF" runat="server" />
            <asp:TextBox class="tBox" id="txtNomEmp" placeholder="Nombre y Apellidos" runat="server" />
            <asp:TextBox class="tBox" id="txtDirEmp" placeholder="Dirección" runat="server" />
            <asp:TextBox class="tBox" id="txtCiuEmp" placeholder="Ciudad" runat="server" />
            <asp:TextBox class="tBox" id="txtTelEmp" placeholder="Teléfonos" runat="server" />
            <asp:TextBox class="tBox" id="txtFnaEmp" placeholder="Fecha Nacimiento" runat="server" />
            <asp:TextBox class="tBox" id="txtFinEmp" placeholder="Fecha Ingresos" runat="server" />

            <label for="rblSexEmp">Sexo:</label>
                <asp:RadioButtonList id="rblSexEmp" runat="server" RepeatDirection="Horizontal" align="center" >
                    <asp:ListItem Text="Hombre" Value="H" Selected="True"/>
                    <asp:ListItem Text="Mujer" Value="M" />
                </asp:RadioButtonList>

            <label id="labelDep" for="ddlDepEmp">Departamento:</label>
            <asp:DropDownList id="ddlDepEmp" runat="server">
                <asp:ListItem Selected="True" Text="Investigación" Value="Investigación" />
                <asp:ListItem Value="Desarrollo" Text="Desarrollo" />
                <asp:ListItem Value="Innovación" Text="Innovación" />
                <asp:ListItem Value="Administración" Text="Administración" />
            </asp:DropDownList>
            <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click" />
        </div>
    </form>
    <asp:Label ID="lblValores" runat="server" Text="" BackColor="#66FFFF" Width="60%" Visible="False"></asp:Label>
</body>
</html>
