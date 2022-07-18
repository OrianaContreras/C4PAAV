<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Eliminar.aspx.cs" Inherits="Eliminar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            width: 69px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style14 {
            height: 26px;
            width: 69px;
        }
        .auto-style15 {
        width: 100%;
        margin-left: 143px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style12" colspan="3">
                <h2><strong>Formulario Eliminar</strong></h2>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>
                <strong>
                <asp:Label ID="lblMensaje" runat="server" Text=" lblMensaje" Width="600px" Height="16px" Visible="False"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><strong>Código</strong></td>
            <td class="auto-style13"><strong>:</strong></td>
            <td>
                <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Label ID="Label1" runat="server" Text="Ingrese el código del Artículo que desea Eliminar."></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCodigo" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Italic="True" ForeColor="Red">Este campo es obligatorio.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style11">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCodigo" ErrorMessage="RegularExpressionValidator" Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationExpression="^([0-9])*$">El campo solo permite números.</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style11">
                <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
            </td>
        </tr>
    </table>
</asp:Content>

