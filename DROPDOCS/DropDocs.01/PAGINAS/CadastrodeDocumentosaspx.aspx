<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrodeDocumentosaspx.aspx.cs" Inherits="DropDocs._01.PAGINAS.CadastrodeDocumentosaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../CSS/cadastrardocs.css">
   <link rel="stylesheet" href="../CSS/bootstrap.css">
    <script src="../scripts/jquery-3.1.1.min.js"></script>
     <script src="../scripts/jquery.maskedinput.min.js"></script>

    <style type="text/css">
        .content{
            position:relative;
            left:150px;
            right:900px;
            width:1000px;
            top:-250px;

        }
        .textarea{
            left:900px;
            width:450px;
            height:200px;

            

        }
    </style>

         
     <script type="text/javascript">
         jQuery(function () {
             $('#txtdata').mask('99/99/9999');
             
         });
    </script>  

</head>
<body>
    <form id="form1" runat="server">
   <div class="nav">
  <h1>DropDocs</h1>
 <ul>
     <li>

        
          </li>
      <li>
     
          </li>
    <li>
        <a href="MeusDocumentos.aspx">Meus Documentos</a>
         </li>
     <li>
    <a href="CadastrodeDocumentosaspx.aspx">Cadastrar Documentos</a>
         </li>
     <li>
      <a href="default.aspx">Sair</a>
         </li>
     
     
    
   </ul>
</div>

<div class="content">
  
  <h1><br><small>Cadastro de Documento:</small></h1>
  

<form>
  <div class="form-group">
   
    

  <label class="col-md-4 control-label">Tipo de Documento</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class=""></i></span>
        <asp:DropDownList ID="DropDownList1"   class="form-control selectpicker" runat="server">
             <asp:ListItem>...</asp:ListItem>
            <asp:ListItem>Certidão de Nascimento</asp:ListItem>
            <asp:ListItem>Carteira de Identidade</asp:ListItem>
            <asp:ListItem>CPF</asp:ListItem>
            <asp:ListItem>Titulo de Eleitor</asp:ListItem>
            <asp:ListItem>Passaporte</asp:ListItem>
            <asp:ListItem>Certificado de Reservista</asp:ListItem>
            <asp:ListItem>Comprovante de Residência</asp:ListItem>
            <asp:ListItem>Comprovante de Residência</asp:ListItem>
            <asp:ListItem>Outros</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
  		</div>
	</div>
</div>
  <br>
<br><br><br>


<div class="form-group">
    <label for="exampleInputEmail1">Nome do Documento:</label>

    <asp:TextBox ID="txtnomedocumento" class="form-control" runat="server" Width="788px"></asp:TextBox>
    <br>
  </div>


<label class="col-md-4 control-label">Descrição do documento</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        
        <textarea id="txtdescricao" class="textarea" runat="server"></textarea>
        </br>
    &nbsp;</div>
	</div>
<br>
<br><br><br>

 </br>

<div class="form-group">
  

    <label for="exampleInputEmail1">Orgão emissor:</label>
    <asp:TextBox ID="txtorgaoemissor" class="form-control" runat="server" Width="822px"></asp:TextBox>
    
    </br>
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Titular do Documento</label>
      <asp:TextBox ID="txttitular" class="form-control" runat="server" Width="823px"></asp:TextBox>
   
    <br>
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Data de Emissão:</label>
      <br />

      <asp:TextBox ID="txtdata"  runat="server"  Height="27px"></asp:TextBox>  
    <br>
  </div>

  
  <div class="form-group">
    <label for="exampleInputFile">Inserir Arquivo</label>
      <asp:FileUpload ID="FileUpload1" runat="server"  />
    <p class="help-block">Aqui você deverá inserir uma foto do seu documento no formato .PDF</p>
      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
  </div>
  
        <asp:Button ID="btncadastrar" runat="server" Text="Cadastrar" OnClick="Button1_Click" />
</form>
<br>

</div>


            

</div>
    </form>
</body>
</html>
