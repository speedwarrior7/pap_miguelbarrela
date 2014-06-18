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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           


            //// declarar um sqldatareader
            //SqlDataReader rdr = null;

            ////criar a string que recebe a connectionstring
            //string stringconn = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

            ////Criar um objecto de ligacao
            //SqlConnection LigacaoBD = new SqlConnection(stringconn);
            //str = "select titulo from tblConteudo";
            //com = new SqlCommand(str, LigacaoBD);
            //SqlDataReader reader = com.ExecuteReader();
            //reader.Read();
           

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("#");
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
        }

      
    }
}