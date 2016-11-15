using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using MySql.Data.MySqlClient;
using System.Text;

namespace DropDocs._01.PAGINAS
{
    public partial class CadastrodeDocumentosaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            txtdata.Attributes.Add("onKeyPress", "MASKDATA()");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string caminho = "";
            string path = Path.Combine(Request.PhysicalApplicationPath, "PAGINAS/DOCS");
            if (FileUpload1.HasFile)
            {
                string extensao = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                string[] extensoesPermitidas = { ".pdf" };
                if (extensoesPermitidas.Contains<string>(extensao))
                {
                    
                        string fileName = FileUpload1.FileName;
                        string caminhoUpload = Path.Combine(path, fileName);
                        if (File.Exists(caminhoUpload))
                        {
                            fileName = DateTime.Now.TimeOfDay.TotalMilliseconds + FileUpload1.FileName;
                            caminhoUpload = Path.Combine(path, fileName);
                        }

                        FileUpload1.PostedFile.SaveAs(caminhoUpload);

                        string imagemRelativePath = Path.Combine("PAGINAS/DOCS", fileName);
                        string urlImage = Page.ResolveUrl(imagemRelativePath);
                        caminho = imagemRelativePath;



                        Label1.Text = "Arquivo: " + fileName;
                        Label1.Text += " postado em: " + caminhoUpload;
                    }
                    
                }
                else
                    Label1.Text = "Arquivo com extensão não permitida!";
            








            if (DropDownList1.Text != "" && txtnomedocumento.Text != "" && txtdescricao.InnerText != "" && txtorgaoemissor.Text != "" && txttitular.Text != "" && txtdata.Text != "")
            {






                documentos meudocumento = new documentos
                {
                    tipodocumento = DropDownList1.Text,
                    nomedocumeto = txtnomedocumento.Text,
                    desricaodocumento = txtdescricao.InnerText,
                    orgaoemissor = txtorgaoemissor.Text,
                    titulardocumento = txttitular.Text,
                    dataemissao = txtdata.Text,
                    caminho = caminho,






                };

                int id = Convert.ToInt32(Session["ID"]);
                Dbmetodos dbinteracao = new Dbmetodos();


                MySqlConnection conexao = dbinteracao.conexao();
                MySqlCommand comando = dbinteracao.comando(conexao);
                comando.CommandType = System.Data.CommandType.Text;
                comando.CommandText = "INSERT INTO DOCUMENTOS (iddocumento,tipodocumento,nomedocumento,observacoes,titulardocumento,dataemissao,caminhoarquivo)  VALUES (@iddocumento,@tipodocumento,@nomedocumento,@observacoes,@titulardocumento,@dataemissao,@caminhoarquivo)";
                comando.Parameters.Add("@iddocumento", id);
                comando.Parameters.Add("@tipodocumento", meudocumento.tipodocumento);
                comando.Parameters.Add("@nomedocumento", meudocumento.nomedocumeto);
                comando.Parameters.Add("@observacoes", meudocumento.desricaodocumento);
                comando.Parameters.Add("@titulardocumento", meudocumento.titulardocumento);
                comando.Parameters.Add("@dataemissao", meudocumento.dataemissao);
                comando.Parameters.Add("@caminhoarquivo", meudocumento.caminho);


                comando.ExecuteNonQuery();
                Response.Write("<script>alert('Documento cadastrado com sucesso!!!');</script>");
                DropDownList1.Text = "";
                txtnomedocumento.Text = "";
                txtdescricao.InnerText = "";
                txtorgaoemissor.Text = "";
                txttitular.Text = "";
                txtdata.Text = "";




            }


        }
    }
}