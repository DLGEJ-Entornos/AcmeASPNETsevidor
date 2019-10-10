<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpleadosCalendar.aspx.cs" Inherits="GesPresta.EmpleadosCalendar" %>
<%@ Register Src="~/Cabecera.ascx" TagPrefix="uc1" TagName="Cabecera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Empleados</title>
    <link href="./EmpleadosCalendar.css" rel="stylesheet" />
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
            <%--<asp:TextBox class="tBox" id="txtFnaEmp" Enabled="false" placeholder="Fecha Nacimiento" runat="server" />
            <asp:TextBox class="tBox" id="txtFinEmp" placeholder="Fecha Ingresos" runat="server" />--%>

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

            <div id="fechasControl">
                <div id="fecNacimiento">
                    <label id="labelFecNac" for="txtFecNac">Fecha de Nacimiento:</label>
                    <asp:TextBox class="tBox" id="txtFecNac" placeholder="dd/mm/aaaa" runat="server" AutoPostBack="true" OnTextChanged="txtFecNac_TextChanged" />
                    <asp:Calendar ID="CalNac" runat="server" OnSelectionChanged="CalNac_SelectionChanged"></asp:Calendar>

                </div>
                <div id="fecIngreso">
                    <label id="labelFecIng" for="txtFecIng">Fecha de Ingreso:</label>
                    <asp:TextBox class="tBox" id="txtFecIng" placeholder="dd/mm/aaaa" runat="server" AutoPostBack="true" OnTextChanged="txtFecIng_TextChanged" />
                    <asp:Calendar ID="CalIng" runat="server" OnSelectionChanged="CalIng_SelectionChanged"></asp:Calendar>

                </div>
                <div id="antigüedad">
                    <h3>Antigüedad</h3>
                    <label id="labelAños" for="txtAños">Años:</label>
                    <asp:TextBox class="tBox" id="txtAños" runat="server" />

                    <label id="labelMeses" for="txtMeses">Meses:</label>
                    <asp:TextBox class="tBox" id="txtMeses" runat="server" />

                    <label id="labelDias" for="txtDias">Dias:</label>
                    <asp:TextBox class="tBox" id="txtDias" runat="server" />
                </div>

            </div>
            <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click" />
        </div>
    </form>
    <div id="labelsOut">
        <asp:Label ID="lblValores" runat="server" Text="" BackColor="#66FFFF" Width="60%" Visible="False"></asp:Label>
        <asp:Label ID="lblError1" runat="server" Text="" BackColor="#ff3333" Width="60%" Visible="False"></asp:Label>
        <asp:Label ID="lblError2" runat="server" Text="" BackColor="#ff3333" Width="60%" Visible="False"></asp:Label>
        <asp:Label ID="lblErrFormatFec" runat="server" Text="" BackColor="#ff3333" Width="60%" Visible="False"></asp:Label>
        <asp:Label ID="lblErrorEnvio" runat="server" Text="" BackColor="#ff3333" Width="60%" Visible="False"></asp:Label>
    </div>
</body>
</html>
