using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Telerik.Web.UI;



namespace pap_miguelbarrela
{
    public partial class editarDefault : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                loadImagens();
            }

       }
        protected void loadImagens()
        {
            // ------------------->Tab Texto
            string stringconn = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            string str;
            SqlCommand com;
            SqlConnection con = new SqlConnection(stringconn);
            con.Open();
            str = "select * from tblConteudo where id=1";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            reader.Read();
            txtTitulo.Text = reader["titulo"].ToString();
            Editor1.Content = reader["texto"].ToString();
            // <-------------------Tab Texto



            //------------------->Tab Imagem
            int numImagens = Convert.ToInt32(reader["numImagens"]); //vai buscar o numero de imagens na tabela tblConteudo campo numImagens
            lblNumImagens.Text = "Numero de Imagens:   "+numImagens.ToString();
            string stringconn1 = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            string str1;
            SqlCommand com1;
            SqlConnection con1 = new SqlConnection(stringconn1);
            con1.Open();
            int i;
            string FlexSlider = "";
            Label lblFBeginUl = new Label();
            lblFBeginUl.ID = "labelBeginUl";
            lblFBeginUl.Text = "<ul>";
            divFlexSlider.Controls.Add(lblFBeginUl);

            for (i = 1; i != numImagens + 1; i++)
            {
                str1 = "select * from tblFlexSlider WHERE Id=" + i;
                com1 = new SqlCommand(str1, con1);
                SqlDataReader reader1 = com1.ExecuteReader();

                // setup label and add them to the page hierarchy
                reader1.Read();


                FlexSlider = FlexSlider + reader1["imagem"].ToString();
                Label lbl = new Label();
                lbl.ID = "label" + i;
                lbl.Text = "<td>" + reader1["imagem"].ToString() + "</td>";
                divFlexSlider.Controls.Add(lbl);
                reader1.Close();



            }
            Label lblFEndUl = new Label();
            lblFEndUl.ID = "labelEndUl";
            lblFEndUl.Text = "</ul><ul>";
            divFlexSlider.Controls.Add(lblFEndUl);
            for (i = 1; i != numImagens + 1; i++)
            {
                Label lbl2 = new Label();
                lbl2.ID = "labelfilein" + i;
                lbl2.Text = "<td>";
                divFlexSlider.Controls.Add(lbl2);
                FileUpload flu = new FileUpload();
                flu.ID = "fileUploadManager" + i;
                divFlexSlider.Controls.Add(flu);
                Label lblout = new Label();
                lblout.ID = "labelfilout" + i;
                lblout.Text = "</td>";
                divFlexSlider.Controls.Add(lblout);

            }
            Label lblFEndUl1 = new Label();
            lblFEndUl1.ID = "labelEndUl1";
            lblFEndUl1.Text = "</ul>";
            divFlexSlider.Controls.Add(lblFEndUl1);
            //lblFlexSlider.Text = "<ul class='slides'>" + FlexSlider + "</ul>";
        }
        protected void loadImagensPostBack()
        {
            // ------------------->Tab Texto
            string stringconn = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            string str;
            SqlCommand com;
            SqlConnection con = new SqlConnection(stringconn);
            con.Open();
            str = "select * from tblConteudo where id=1";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            reader.Read();
            txtTitulo.Text = reader["titulo"].ToString();
            Editor1.Content = reader["texto"].ToString();
            // <-------------------Tab Texto



            //------------------->Tab Imagem
            int numImagens = Convert.ToInt32(reader["numImagens"]); //vai buscar o numero de imagens na tabela tblConteudo campo numImagens
            lblNumImagens.Text = "Numero de Imagens:   " + numImagens.ToString();
            string stringconn1 = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            string str1;
            SqlCommand com1;
            SqlConnection con1 = new SqlConnection(stringconn1);
            con1.Open();
            int i;
            string FlexSlider = "";
            Label lblFBeginUl = new Label();
            lblFBeginUl.ID = "labelBeginUl";
            lblFBeginUl.Text = "<ul>";
            divFlexSlider.Controls.Add(lblFBeginUl);

            for (i = 1; i != numImagens + 1; i++)
            {
                str1 = "select * from tblFlexSlider WHERE Id=" + i;
                com1 = new SqlCommand(str1, con1);
                SqlDataReader reader1 = com1.ExecuteReader();

                // setup label and add them to the page hierarchy
                reader1.Read();


                FlexSlider = FlexSlider + reader1["imagem"].ToString();
                Label lbl = new Label();
                lbl.ID = "label" + i;
                lbl.Text = "<td>" + reader1["imagem"].ToString() + "</td>";
                divFlexSlider.Controls.Add(lbl);
                reader1.Close();



            }
            Label lblFEndUl = new Label();
            lblFEndUl.ID = "labelEndUl";
            lblFEndUl.Text = "</ul><ul>";
            divFlexSlider.Controls.Add(lblFEndUl);
            for (i = 1; i != numImagens + 1; i++)
            {
                Label lbl2 = new Label();
                lbl2.ID = "labelfilein" + i;
                lbl2.Text = "<td>";
                divFlexSlider.Controls.Add(lbl2);
                FileUpload flu = new FileUpload();
                flu.ID = "fileUploadManager" + i;
                divFlexSlider.Controls.Add(flu);
                Label lblout = new Label();
                lblout.ID = "labelfilout" + i;
                lblout.Text = "</td>";
                divFlexSlider.Controls.Add(lblout);

            }
            Label lblFEndUl1 = new Label();
            lblFEndUl1.ID = "labelEndUl1";
            lblFEndUl1.Text = "</ul>";
            divFlexSlider.Controls.Add(lblFEndUl1);
            //lblFlexSlider.Text = "<ul class='slides'>" + FlexSlider + "</ul>";
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            BLL.Default.updateDefault(txtTitulo.Text, Editor1.Content);
        }

        protected void btnDelImagem_Click(object sender, EventArgs e)
        {
            int a;
            a = Convert.ToInt32(lblNumImagens.Text) - 1;
            BLL.Default.updateFlexSliderNum(a);
            lblNumImagens.Text = a.ToString();
        }

        protected void btnAddImagem_Click(object sender, EventArgs e)
        {
            int a;
            a = Convert.ToInt32(lblNumImagens.Text) + 1;
            BLL.Default.updateFlexSliderNum(a);
            lblNumImagens.Text = a.ToString();
    
        }





    }
}
