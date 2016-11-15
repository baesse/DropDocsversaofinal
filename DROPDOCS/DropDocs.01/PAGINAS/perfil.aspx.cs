using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDocs._01
{
    public partial class perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        





        int id =Convert.ToInt32( Session["ID"]);


                Dbmetodos interacao = new Dbmetodos();
                MySqlConnection conexao = interacao.conexao();
                MySqlCommand comando = interacao.comando(conexao);
                comando.CommandType = System.Data.CommandType.Text;
                comando.CommandText = "SELECT NOME,SOBRENOME,EMAIL,TELEFONE,SENHA,SEXO,ENDERECO,CIDADE,ESTADO,CEP,TELEFONE,CPF FROM CAD_USUARIO WHERE ID =@ID";
                comando.Parameters.Add("@ID", id);
                MySqlDataReader READER = comando.ExecuteReader();

                while (READER.Read())
                {
                lblnome.Text = READER.GetString(0)+" "+READER.GetString(1);
                lblemail.Text = READER.GetString(2);
                lbltelefone.Text = READER.GetString(3);
                lblsexo.Text = READER.GetString(5);
                lblendereco.Text = READER.GetString(6);
                lblestado.Text = READER.GetString(7);
                lblcep.Text = READER.GetString(9);
                
                   

                }
               
               

            }

       
    }
    }
