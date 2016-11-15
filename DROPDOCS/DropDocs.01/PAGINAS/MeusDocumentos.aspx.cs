using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDocs._01
{
    public partial class MeusDocumentos : System.Web.UI.Page
    {

        public void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["ID"]);
          // id = 3;
            carregarpagina(id);
            doc documneto = new doc();
            documneto.id = id;



        }

      


        public int  carregarpagina(int id)
        {
           



            Dbmetodos interacao = new Dbmetodos();
            MySqlConnection conexao = interacao.conexao();
            MySqlCommand comando = interacao.comando(conexao);
            comando.CommandType = System.Data.CommandType.Text;

            comando.CommandText = "SELECT iddocumento,tipodocumento,nomedocumento,observacoes,titulardocumento,dataemissao,caminhoarquivo FROM documentos WHERE iddocumento =@ID";
            comando.Parameters.Add("@ID", id);
            MySqlDataReader READER = comando.ExecuteReader();




            while (READER.Read())
            {
                DropDownList1.Items.Add(READER.GetString(1));

            }
            comando.Parameters.Clear();

            return id;
           



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["ID"]);

            string nomedocv = DropDownList1.Text;
            Dbmetodos interacao = new Dbmetodos();
            MySqlConnection conexao = interacao.conexao();
            MySqlCommand comando = interacao.comando(conexao);
            comando.CommandType = System.Data.CommandType.Text;
            string busca = DropDownList1.Text;
            comando.CommandText = "SELECT iddocumento,tipodocumento,nomedocumento,observacoes,titulardocumento,dataemissao,caminhoarquivo FROM documentos WHERE iddocumento =@ID and tipodocumento=@nomedoc ";
            comando.Parameters.Add("@id", id);
            comando.Parameters.Add("@nomedoc", nomedocv);
            MySqlDataReader reader = comando.ExecuteReader();
            while (reader.Read())
            {

                todocumento.Text = reader.GetString(1);
                nomedoc.Text =  nomedoc.Text+ reader.GetString(2);
                obdoc.Text = reader.GetString(3);
                titudoc.Text =  reader.GetString(4);
                datadoc.Text =  reader.GetString(5);
                frame.Src = reader.GetString(6);


            }
        }

     
    }
}