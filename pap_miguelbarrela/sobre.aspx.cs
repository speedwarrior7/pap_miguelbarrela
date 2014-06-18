using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace pap_miguelbarrela
{
    public partial class sobre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Função para mostrar o conteudo guardado na base  de dados
            string stringconn = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            string str;
            SqlCommand com;
            SqlConnection con = new SqlConnection(stringconn);
            con.Open();
            str = "select * from tblConteudo where id=2";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            reader.Read();
            lblTitulo.Text = reader["titulo"].ToString();
            lblTexto.Text = reader["texto"].ToString();
        }
    }
}