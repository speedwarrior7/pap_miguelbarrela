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
    public partial class index : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e){
           // Função para mostrar o conteudo guardado na base  de dados
            string stringconn = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            string str;
            SqlCommand com;
            SqlConnection con = new SqlConnection(stringconn);
            con.Open();
            str = "select * from tblConteudo where id=1";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            reader.Read();
            lblTitulo.Text = reader["titulo"].ToString();
            lblTexto.Text = reader["texto"].ToString();
            //lblFlexSlider.Text =  reader["imagem"].ToString();
            int numImagens = Convert.ToInt32(reader["numImagens"]);
            string stringconn1 = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            string str1;
            SqlCommand com1;
            SqlConnection con1 = new SqlConnection(stringconn1);
            con1.Open();
            int i;
            string FlexSlider="";
            for (i = 1; i != numImagens + 1; i++)
            {
                str1 = "select * from tblFlexSlider WHERE Id=" + i;
                com1 = new SqlCommand(str1, con1);
                SqlDataReader reader1 = com1.ExecuteReader();

                // setup label and add them to the page hierarchy
                reader1.Read();
                FlexSlider = FlexSlider+"<li>"+ reader1["imagem"].ToString()+"</li>";
                //Label lbl = new Label();
                //lbl.ID = "label" + i;
                //lbl.Text = reader1["imagem"].ToString();
                //d.Controls.Add(lbl);
                reader1.Close();

            }

            lblFlexSlider.Text = "<ul class='slides'>" + FlexSlider + "</ul>";
       
        }
     



       
    }
}