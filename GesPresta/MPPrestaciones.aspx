<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPPrestaciones.aspx.cs" Inherits="GesPresta.MPPrestaciones" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./HojaPrestaciones.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
    
</asp:Content>
