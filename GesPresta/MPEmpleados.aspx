<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPEmpleados.aspx.cs" Inherits="GesPresta.MPEmpleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./Empleados.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>DATOS DE LOS EMPLEADOS</h2>
    <asp:RegularExpressionValidator ID="regtxtCodEmp" runat="server" Text="*" ControlToValidate="txtCodEmp" ForeColor="green" ValidationExpression="\w\d{5}" ErrorMessage="El formato debe ser: A12345"></asp:RegularExpressionValidator>
    <asp:TextBox class="tBox" ID="txtCodEmp" placeholder="Código Empleado" runat="server" />

    <asp:RegularExpressionValidator ID="regtxtNifEmp" runat="server" Text="*" ControlToValidate="txtNifEmp" ForeColor="green" ValidationExpression="\d{8}-\w" ErrorMessage="El formato debe ser: 12345678-A"></asp:RegularExpressionValidator>
    <asp:TextBox class="tBox" ID="txtNifEmp" placeholder="NIF" runat="server" />

    <asp:TextBox class="tBox" ID="txtNomEmp" placeholder="Nombre y Apellidos" runat="server" />
    <asp:TextBox class="tBox" ID="txtDirEmp" placeholder="Dirección" runat="server" />
    <asp:TextBox class="tBox" ID="txtCiuEmp" placeholder="Ciudad" runat="server" />
    <asp:TextBox class="tBox" ID="txtTelEmp" placeholder="Teléfonos" runat="server" />

    <asp:RegularExpressionValidator ID="regtxtFnaEmp" runat="server" Text="*" ControlToValidate="txtFnaEmp" ForeColor="green" ValidationExpression="\d\d/\d\d/\d\d\d\d" ErrorMessage="El formato debe ser: dd/mm/aaaa"></asp:RegularExpressionValidator>
    <asp:TextBox class="tBox" ID="txtFnaEmp" placeholder="Fecha Nacimiento" runat="server" />

    <asp:RegularExpressionValidator ID="regtxtFinEmp" runat="server" Text="*" ControlToValidate="txtFinEmp" ForeColor="green" ValidationExpression="\d\d/\d\d/\d\d\d\d" ErrorMessage="El formato debe ser: dd/mm/aaaa"></asp:RegularExpressionValidator>
    <asp:TextBox class="tBox" ID="txtFinEmp" placeholder="Fecha Ingresos" runat="server" />

    <label for="rblSexEmp">Sexo:</label>
    <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal" align="center">
        <asp:ListItem Text="Hombre" Value="H" Selected="True" />
        <asp:ListItem Text="Mujer" Value="M" />
    </asp:RadioButtonList>

    <label id="labelDep" for="ddlDepEmp">Departamento:</label>
    <asp:DropDownList ID="ddlDepEmp" runat="server">
        <asp:ListItem Selected="True" Text="Investigación" Value="Investigación" />
        <asp:ListItem Value="Desarrollo" Text="Desarrollo" />
        <asp:ListItem Value="Innovación" Text="Innovación" />
        <asp:ListItem Value="Administración" Text="Administración" />
    </asp:DropDownList>
    <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" />
    <asp:ValidationSummary ID="ValidationSummary1" DisplayMode="List" runat="server" />

</asp:Content>
