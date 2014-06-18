using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pap_miguelbarrela
{
    public partial class registar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["idDistrito"] = ddlDistrito.SelectedValue;
            
           
        }

        protected void btnRegistar_Click(object sender, EventArgs e)
        {
            string nome = txtNome.Text;
            string apelido = txtApelido.Text;
            string morada = txtMorada.Text + " " + txtCodigoPostal4.Text + "-" + txtCodigoPostal3.Text + " " + ddlConcelho.SelectedItem.Text + " " + ddlDistrito.SelectedItem.Text;
            int contacto = Convert.ToInt32(txtPassword.Text);
            string email = txtEmail.Text;

            Label1.Text = morada;
            if (nome != "" || apelido != "")
            {
                BLL.User.addUser(nome, apelido, morada, contacto, email);
            }
            else
            {
            }
                
            
        }

       
    }
}