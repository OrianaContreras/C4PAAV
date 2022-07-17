<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Actualizar.aspx.cs" Inherits="Actualizar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style17 {
        width: 10px;
    }
    .auto-style16 {
        margin-right: 0px;
    }
    .auto-style14 {
        width: 200px;
        height: 23px;
    }
    .auto-style15 {
        width: 10px;
        height: 23px;
    }
    .auto-style7 {
        height: 23px;
    }
    .auto-style11 {
        width: 200px;
        height: 26px;
    }
    .auto-style12 {
        width: 10px;
        height: 26px;
    }
    .auto-style13 {
        height: 26px;
    }
    .auto-style8 {
        width: 200px;
        height: 42px;
    }
    .auto-style9 {
        width: 10px;
        height: 42px;
    }
    .auto-style10 {
        height: 42px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style3" colspan="3"><strong>Formulario Actualizar </strong> </td>
    </tr>
    <tr>
        <td>ID</td>
        <td class="auto-style17">:</td>
        <td>
            <asp:TextBox ID="txtId" runat="server" Width="200px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="RegularExpressionValidator" Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationExpression="^([0-9])*$">El campo solo permite números.</asp:RegularExpressionValidator>
&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Italic="True" ForeColor="Red">Este campo es obligatorio.</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">Código</td>
        <td class="auto-style17">:</td>
        <td>
            <asp:TextBox ID="txtCodigo" runat="server" Width="200px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCodigo" ErrorMessage="RegularExpressionValidator" Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationExpression="^([0-9])*$">El campo solo permite números.</asp:RegularExpressionValidator>
&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 200px">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCodigo" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Italic="True" ForeColor="Red">Este campo es obligatorio.</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">Fecha</td>
        <td class="auto-style17">:</td>
        <td>
            <asp:Calendar ID="Calendar1" runat="server" CssClass="auto-style16"></asp:Calendar>
            <asp:Label ID="lblCalendarMensaje" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red" Text="Este Campo es Obligatorio." Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"></td>
        <td class="auto-style15"></td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 200px">Sección</td>
        <td class="auto-style17">:</td>
        <td>
            <asp:TextBox ID="txtSeccion" runat="server" Width="200px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtSeccion" ErrorMessage="RegularExpressionValidator" Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationExpression="^([0-9])*$">El campo solo permite números.</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSeccion" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Italic="True" ForeColor="Red">Este campo es obligatorio.</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">Nombre Artículo</td>
        <td class="auto-style17">:</td>
        <td>
            <asp:TextBox ID="txtNombreArticulo" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNombreArticulo" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Italic="True" ForeColor="Red">Este campo es obligatorio.</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">Estado</td>
        <td class="auto-style17">:</td>
        <td>
            <asp:TextBox ID="txtEstado" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"></td>
        <td class="auto-style12"></td>
        <td class="auto-style13">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEstado" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Italic="True" ForeColor="Red">Este campo es obligatorio.</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">Etiquetado</td>
        <td class="auto-style17">:</td>
        <td>
            <asp:DropDownList ID="ddlEtiquetado" runat="server" Width="200px">
                <asp:ListItem Value="false">No</asp:ListItem>
                <asp:ListItem Value="true">Si</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"></td>
        <td class="auto-style15"></td>
        <td class="auto-style7">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlEtiquetado" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Italic="True" ForeColor="Red">Este campo es obligatorio.</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Realizado Por</td>
        <td class="auto-style9">:</td>
        <td class="auto-style10">
            <asp:TextBox ID="txtRealizadoPor" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtRealizadoPor" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Italic="True" ForeColor="Red">Este campo es obligatorio.</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"></td>
        <td class="auto-style15"></td>
        <td class="auto-style7">
            <asp:Label ID="lblMensaje" runat="server" Text=" " Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"></td>
        <td class="auto-style15"></td>
        <td class="auto-style7"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td>
            <asp:Button ID="btnActualizar" runat="server" OnClick="btnActualizar_Click" Text="Actualizar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" />
        </td>
    </tr>
</table>
</asp:Content>

