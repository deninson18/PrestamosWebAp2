using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace PrestamosWebAP2.Registros
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void CargarDatos(Usuarios usuario)
        {
           
            usuario.Nombres = nombreTextBox.Text;
            usuario.Apellidos = apellidoUsuarioTextBox.Text;
            usuario.NombreUsuario = nombreUsuarioTextBox.Text;
            usuario.Contrasena = contrasenaTextBox.Text;
            usuario.AreaUsuario = usuarioDropDownList.SelectedValue;
        }

        public void DevolverDatos(Usuarios usuario)
        {
            usuarioIdTextBox.Text = usuario.UsuarioId.ToString();
            nombreTextBox.Text = usuario.Nombres;
            apellidoUsuarioTextBox.Text = usuario.Apellidos;
            nombreUsuarioTextBox.Text = usuario.NombreUsuario;
            contrasenaTextBox.Text = usuario.Contrasena;
            usuarioDropDownList.SelectedValue = usuario.AreaUsuario;
        }
        public void Limpiar()
        {
            usuarioIdTextBox.Text = string.Empty;
            nombreTextBox.Text = string.Empty;
            apellidoUsuarioTextBox.Text = string.Empty;
            nombreUsuarioTextBox.Text = string.Empty;
            contrasenaTextBox.Text = string.Empty;
            usuarioDropDownList.SelectedIndex = 0;
        }

        protected void guardarButton_Click(object sender, EventArgs e)
        {
           Usuarios usuario = new Usuarios();

            CargarDatos(usuario);
          
            if (usuario.Insertar())
            {
                Response.Write("<script>alert('Guardo Exitosamente')</script>");
            }
            else
            {
                Response.Write("<script>alert('Guardo Usuario')</script>");
            }
           
        }

        protected void nuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void eliminarButton_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            int id = 0;
            int.TryParse(usuarioIdTextBox.Text, out id);
            usuario.UsuarioId = id;
          

            if (id > 0)
            {
                CargarDatos(usuario);
                if (usuario.Eliminar())
                {
                    Limpiar();
                    
                    Response.Write("<script>alert('Elimino Correctamente')</script>");
                        
                }
                else
                {
                    Response.Write("<script>alert('ha Eliminado')</script>");
                }

            }

        }

        protected void buscarUsuarioButton_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            int id = 0;
            int.TryParse(usuarioIdTextBox.Text, out id);

            if (id > 0)
            {
                if (usuario.Buscar(id))
                {
                    DevolverDatos(usuario);
                }
                else
                {
                    Response.Write("<script>alert('No existe Usuario ID')</script>");
                }

            }

        }
    }
}