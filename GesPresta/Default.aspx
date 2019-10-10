<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GesPresta.Default" %>
<%@ Register Src="~/Cabecera.ascx" TagPrefix="uc1" TagName="Cabecera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="./Default.css" rel="stylesheet" />
    <title>Inicio</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
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
    </form>
</body>
</html>
