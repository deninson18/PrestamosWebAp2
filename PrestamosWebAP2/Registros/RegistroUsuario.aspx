<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="PrestamosWebAP2.Registros.RegistroUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Usuario ID:<asp:TextBox ID="usuarioIdTextBox" runat="server"></asp:TextBox>
        <asp:Button ID="buscarUsuarioButton" runat="server" OnClick="buscarUsuarioButton_Click" Text="BUSCAR" />
    </p>
    <p>
        Nombres:<asp:TextBox ID="nombreTextBox" runat="server"></asp:TextBox>
    </p>
    <p>
        Apellido:<asp:TextBox ID="apellidoUsuarioTextBox" runat="server"></asp:TextBox>
    </p>
    <p>
        Nombre de Usuario:<asp:TextBox ID="nombreUsuarioTextBox" runat="server"></asp:TextBox>
    </p>
    <p>
        Password:<asp:TextBox ID="contrasenaTextBox" runat="server" Height="22px"></asp:TextBox>
    </p>
    <p>
        Area de Usuario:<asp:DropDownList ID="usuarioDropDownList" runat="server" Height="20px" Width="117px">
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>User</asp:ListItem>
        </asp:DropDownList>
    </p>
    <asp:Button ID="nuevoButton" runat="server" OnClick="nuevoButton_Click" style="margin-left: 103px" Text="NUEVO" Width="54px" />
    <asp:Button ID="guardarButton" runat="server" OnClick="guardarButton_Click" style="margin-left: 62px" Text="GUARDAR" Width="69px" />
    <asp:Button ID="eliminarButton" runat="server" style="margin-left: 68px" Text="ELIMINAR" OnClick="eliminarButton_Click" />
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>
