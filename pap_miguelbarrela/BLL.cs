using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using DataAccessLayer;//dal
using System.Data.SqlClient;


namespace pap_miguelbarrela
{
    public class BLL
    {
        public class User { 
            static public DataTable addUser(String Nome, String Apelido, String Morada, int Contacto, String Email)
            {
            DAL dal = new DAL();
            SqlParameter[] sqlParams = new SqlParameter[]{
            new SqlParameter("@Nome", Nome),
            new SqlParameter("@Apelido", Apelido),
            new SqlParameter("@Morada", Morada),
            new SqlParameter("@Contacto", Contacto),
            new SqlParameter("@Email", Email)};

            return dal.executarReader("INSERT into tblUtilizadores (Nome,Apelido,Morada,Contacto,Email) VALUES(@Nome,@Apelido,@Morada,@Contacto,@Email)", sqlParams);
            }
        }
        public class Default
        {
            static public DataTable updateDefault(String Titulo, String Texto)
            {
            DAL dal = new DAL();
            SqlParameter[] sqlParams = new SqlParameter[]{
            new SqlParameter("@Titulo", Titulo),
            new SqlParameter("@Texto", Texto)};
            return dal.executarReader("UPDATE tblConteudo SET Titulo=@Titulo,Texto=@Texto WHERE (id=1)", sqlParams);
            
            }
            static public DataTable updateFlexSliderNum(int numImagens)
            {
            DAL dal = new DAL();
            SqlParameter[] sqlParams = new SqlParameter[]{
            new SqlParameter("@numImagens", numImagens)};
            return dal.executarReader("UPDATE tblConteudo SET numImagens=@numImagens WHERE (id=1)", sqlParams);
            }
            static public DataTable countFlexSliderImg( )
            { 
                 DAL dal = new DAL();
            SqlParameter[] sqlParams = new SqlParameter[]{};
                 return dal.executarReader("SELECT COUNT(Id) FROM tblFlexSlider",sqlParams);
            }
            
        }


    }
}