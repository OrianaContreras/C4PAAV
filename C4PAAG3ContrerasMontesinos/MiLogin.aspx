<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MiLogin.aspx.cs" Inherits="MiLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style3 {
            width: 200px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Login</strong></td>
                </tr>
                <tr>
                    <td style="width: 200px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        <strong>
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario :"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Debe ingresar el nombre del Usuario." Font-Bold="True" Font-Italic="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        <strong>
                        <asp:Label ID="lblClave" runat="server" Text="Clave :"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="txtClave" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtClave" ErrorMessage="Debe Ingresar la clave." Font-Bold="True" Font-Italic="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">&nbsp;</td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td style="width: 200px">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblMensaje" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red" Text="[lblMensaje]" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
