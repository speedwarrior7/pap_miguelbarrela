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
    public partial class cpanel2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //criar a string que recebe a connectionstring
            string stringconn = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

            //Criar um objecto de ligacao
            SqlConnection LigacaoBD = new SqlConnection(stringconn);

            //consultar a base dados
            SqlCommand comando = new SqlCommand("Table", LigacaoBD);
            comando.CommandType = CommandType.StoredProcedure;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}