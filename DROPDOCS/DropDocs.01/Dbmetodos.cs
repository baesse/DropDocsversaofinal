using MySql.Data.MySqlClient;

namespace DropDocs._01
{
    public class Dbmetodos
    {

        public MySqlConnection conexao()
        {
            MySqlConnection conexao =new MySqlConnection(@"Server=localhost; Database= bddrop; Uid=root; Pwd=75395146 ;");
            try
            {


                conexao.Open();
            }catch(MySqlException e)
            {
                throw  e;

            }
                return conexao;
            
        }

        public MySqlCommand comando(MySqlConnection conexao)
        {
            MySqlCommand comando = conexao.CreateCommand();
            return comando;

        }

        public MySqlDataReader reader(MySqlCommand comando)
        {
            MySqlDataReader reader = comando.ExecuteReader();
            return reader;

        }

       
    }

}