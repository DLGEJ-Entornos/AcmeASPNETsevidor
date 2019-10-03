<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpleadosValCampOblEJ6.aspx.cs" Inherits="GesPresta.EmpleadosValCampOblEJ6" Trace="true" %>
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
            <asp:RequiredFieldValidator ID="rqdtxtCodEmp" ForeColor="red" ErrorMessage="Se requiere código de empleado." ControlToValidate="txtCodEmp" runat="server" ></asp:RequiredFieldValidator>
            <asp:TextBox class="tBox" id="txtCodEmp" placeholder="Código Empleado" runat="server" />

            <asp:RequiredFieldValidator ID="rqdtxtNifEmp" ForeColor="red" ErrorMessage="Se requiere NIF." ControlToValidate="txtNifEmp" runat="server" ></asp:RequiredFieldValidator>
            <asp:TextBox class="tBox" id="txtNifEmp" placeholder="NIF" runat="server" />

            <asp:RequiredFieldValidator ID="rqdtxtNomEmp" ForeColor="red" ErrorMessage="Se requiere nombre y apellidos." ControlToValidate="txtNomEmp" runat="server" ></asp:RequiredFieldValidator>
            <asp:TextBox class="tBox" id="txtNomEmp" placeholder="Nombre y Apellidos" runat="server" />

            <asp:TextBox class="tBox" id="txtDirEmp" placeholder="Dirección" runat="server" />
            <asp:TextBox class="tBox" id="txtCiuEmp" placeholder="Ciudad" runat="server" />

            <asp:RequiredFieldValidator ID="rqdtxtTelEmp" ForeColor="red" ErrorMessage="Se requiere un teléfono." ControlToValidate="txtTelEmp" runat="server" ></asp:RequiredFieldValidator>
            <asp:TextBox class="tBox" id="txtTelEmp" placeholder="Teléfonos" runat="server" />

            <asp:RequiredFieldValidator ID="rqdtxtFnaEmp" ForeColor="red" ErrorMessage="Se requiere una fecha de nacimiento." ControlToValidate="txtFnaEmp" runat="server" ></asp:RequiredFieldValidator>
            <asp:TextBox class="tBox" id="txtFnaEmp" placeholder="Fecha Nacimiento" runat="server" />

            <asp:RequiredFieldValidator ID="rqdtxtFinEmp" ForeColor="red" ErrorMessage="Se requiere una fecha de ingreso." ControlToValidate="txtFinEmp" runat="server" ></asp:RequiredFieldValidator>
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
            <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" />
        </div>
    </form>
</body>
</html>
