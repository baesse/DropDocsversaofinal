using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDocs._01.PAGINAS
{
    public partial class Resenha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnenviar_Click(object sender, EventArgs e)
        {


            string email = "";

            if (txtemail.Text == "")
            {
                Response.Write("<script>alert('O campo email não pode ser vazio');</script>");
            }else
            {

          

            Dbmetodos interacao = new Dbmetodos();
            MySqlConnection conexao = interacao.conexao();
            MySqlCommand comando = interacao.comando(conexao);
            comando.CommandType = System.Data.CommandType.Text;
            comando.CommandText = "SELECT EMAIL FROM CAD_USUARIO WHERE EMAIL =@EMAIL";
            comando.Parameters.Add("@EMAIL", txtemail.Text);
            MySqlDataReader reader = comando.ExecuteReader();

            while (reader.Read())
            {
                email = reader.GetString(0);

                if (email.Equals(txtemail.Text))
                {

                    MailMessage mail = new MailMessage();
                    mail.To.Add(email);
                    mail.From = new MailAddress("dropdocstig@gmail.com");
                    mail.Subject = "cadastro de senha";
                    mail.Body = "link para redefinição de senha";
                    SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);

                    using (smtp)
                    {
                        smtp.Credentials = new System.Net.NetworkCredential("dropdocstig@gmail.com", "75395146");
                        smtp.EnableSsl = true;
                        smtp.Send(mail);


                    }
                    break;


                }

                }
            }



       
            

            


        }
    }
}