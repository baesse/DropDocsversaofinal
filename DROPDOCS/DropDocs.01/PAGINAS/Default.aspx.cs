using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDocs._01.PAGINAS
{
    public partial class Default : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }



        protected void btnentrar_Click(object sender, EventArgs e)
        {
            if (txtemail.Text == "")
            {
                Response.Write("<script>alert('Campo de usuario e senha invalidos');</script>");

            }
            else
            {


                string email = "";
                string senha = "";



                Dbmetodos interacao = new Dbmetodos();
                MySqlConnection conexao = interacao.conexao();
                MySqlCommand comando = interacao.comando(conexao);
                comando.CommandType = System.Data.CommandType.Text;
                comando.CommandText = "SELECT EMAIL,ID,SENHA FROM CAD_USUARIO WHERE EMAIL =@EMAIL";
                comando.Parameters.Add("@EMAIL", txtemail.Text);
                MySqlDataReader reader = comando.ExecuteReader();

                while (reader.Read())
                {
                    email = reader.GetString(0);
                    id = Convert.ToInt32(reader.GetString(1));
                    senha = reader.GetString(2);


                }

                if (email.Equals(txtemail.Text) && senha.Equals(txtsenha.Text))
                {

                    Session["ID"] = reader.GetString(1);
                    Response.Redirect("perfil.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Usuario invalido');</script>");
                }





            }
        }

        public int getid()
        {
            return id;

        }
    }
}