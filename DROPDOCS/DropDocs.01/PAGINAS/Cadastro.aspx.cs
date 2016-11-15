using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDocs._01.PAGINAS
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            usuario usuario = new usuario
            {
                nome = txtnome.Text,
                sobrenome = txtsobrenome.Text,
                email = txtemail.Text,
                senha = txtsenha.Text,
                telefone = txtsenha.Text,
                endereco = txtendereco.Text,
                cidade = txtcidade.Text,
                cep = txtcep.Text,
                estado = DropDownList1.Text,
                cpf = txtcpf.Text,




            };

            if (sexom.Checked)
            {
                usuario.sexo = "M";

            }
            else if(sexof.Checked){
                usuario.sexo = "F";

            }

            


            if (!validarCpf(usuario.cpf))
            {
                Response.Write("<script>alert('Cpf invalido');</script>");
            }
            else
            {

                if (!usuario.senha.Equals(txtrepetirsenha.Text)&& checktermo.Checked.Equals(true))
                {
                    Response.Write("<script>alert('Senhas não coicidem');</script>");

                }
                if(!verificacadastro(txtcpf.Text, txtemail.Text))
                {
                    Response.Write("<script>alert('Cpf ou email já cadastrado');</script>");



                }
                else if(checktermo.Checked.Equals(true))
                {



                    Dbmetodos dbinteracao = new Dbmetodos();


                    MySqlConnection conexao = dbinteracao.conexao();
                    MySqlCommand comando = dbinteracao.comando(conexao);
                    comando.CommandType = System.Data.CommandType.Text;
                    comando.CommandText = "INSERT INTO CAD_USUARIO (NOME,SOBRENOME,EMAIL,SENHA,SEXO,ESTADO,ENDERECO,CIDADE,CEP,TELEFONE,CPF) VALUES (@NOME,@SOBRENOME,@EMAIL,@SENHA,@ESTADO,@SEXO,@ENDERECO,@CIDADE,@CEP,@TELEFONE,@CPF)";

                    comando.Parameters.Add("@NOME", usuario.nome);
                    comando.Parameters.Add("@SOBRENOME", usuario.sobrenome);
                    comando.Parameters.Add("@EMAIL", usuario.email);
                    comando.Parameters.Add("@SENHA", usuario.senha);
                    comando.Parameters.Add("@SEXO", usuario.sexo);
                    comando.Parameters.Add("@ENDERECO", usuario.endereco);
                    comando.Parameters.Add("@CIDADE", usuario.cidade);
                    comando.Parameters.Add("@CEP", usuario.cep);
                    comando.Parameters.Add("@TELEFONE", usuario.telefone);
                    comando.Parameters.Add("@ESTADO", usuario.estado);
                    comando.Parameters.Add("@CPF", usuario.cpf);
                    comando.ExecuteNonQuery();
                    Response.Write("<script>alert('Cadastro efetuado com sucesso!');</script>");
                    Response.Redirect("Default.aspx");

                    Response.Redirect("Default.aspx");
                }else
                {
                    Response.Write("<script>alert('É necessario o aceito dos termos');</script>");
                }
            }
            
             
        }
       

        public Boolean validarCpf(String cpf)
        {
            int[] multiplicador1 = new int[9] { 10, 9, 8, 7, 6, 5, 4, 3, 2 };
            int[] multiplicador2 = new int[10] { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };
            string tempCpf;
            string digito;
            int soma;
            int resto;
            cpf = cpf.Trim();
            cpf = cpf.Replace(".", "").Replace("-", "");
            if (cpf.Length != 11)
                return false;
            tempCpf = cpf.Substring(0, 9);
            soma = 0;

            for (int i = 0; i < 9; i++)
                soma += int.Parse(tempCpf[i].ToString()) * multiplicador1[i];
            resto = soma % 11;
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = resto.ToString();
            tempCpf = tempCpf + digito;
            soma = 0;
            for (int i = 0; i < 10; i++)
                soma += int.Parse(tempCpf[i].ToString()) * multiplicador2[i];
            resto = soma % 11;
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = digito + resto.ToString();
            return cpf.EndsWith(digito);
        }

        public bool verificacadastro(string cpf,string email)
        {

            Dbmetodos interacao = new Dbmetodos();
            MySqlConnection conexao = interacao.conexao();
            MySqlCommand comando = interacao.comando(conexao);
            comando.CommandType = System.Data.CommandType.Text;
            comando.CommandText = "SELECT EMAIL,CPF FROM CAD_USUARIO WHERE cpf =@cpf or EMAIL=@EMAIL";
            comando.Parameters.Add("@cpf", cpf);
            comando.Parameters.Add("@EMAIL", email);
            MySqlDataReader READER = comando.ExecuteReader();

            while (READER.Read())
            {
                if (READER.GetString(0).Equals(txtemail.Text) || READER.GetString(1).Equals(txtcpf))
                {
                    return false;
                    

                }



            }
            return true;

        }
    }
    
}