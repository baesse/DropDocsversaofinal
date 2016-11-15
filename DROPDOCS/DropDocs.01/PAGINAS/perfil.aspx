<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="DropDocs._01.perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>DropDocs</title>
   <link rel="stylesheet" href="../CSS/perfil.css"/>
   <link rel="stylesheet" href="../CSS/bootstraphome.css"/>
    <style type="text/css">

      .col-sm-2 .control-label{
          position:relative;
          top:10px;
          left:60px;

            

      }

      .formaps{
          position:relative;
          width: 350px;
        
         
      }
      .content{
          position:relative;
          width:1000px;
          height:1500px;
          left:200px;
          top:-150px;


                }
        .form-control{
            width: 300px;
        }

        .form-control-static{
            position: relative;
            top:-5px;
            
        }
        .nav{
            width:600px;

        }
        
       
      
    </style>
</head>
<body>
 
  <form id="form1" class="formaps" runat="server">
       
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
    
<div class="form-group">

    <label class="col-sm-2 control-label">Nome:</label>
    <div class="col-sm-10">
        <p>
          <asp:Label ID="lblnome" class="form-control-static" runat="server" Text=""></asp:Label>  
            </p>
        <br>
        </div>
  </div>

        
<div class="form-group">

    <label class="col-sm-2 control-label">Email:</label>
    <div class="col-sm-10">
        <p>
          <asp:Label ID="lblemail" class="form-control-static" runat="server" Text=""></asp:Label>  
            </p>
        <br>
        </div>
  </div>

<div class="form-group">

    <label class="col-sm-2 control-label">Telefone:</label>
    <div class="col-sm-10">
        <p>
          <asp:Label ID="lbltelefone" class="form-control-static" runat="server" Text=""></asp:Label>  
            </p>
        <br>
        </div>
  
  </div>
<div class="form-group">

    <label class="col-sm-2 control-label">Endereço:</label>
    <div class="col-sm-10">
        <p>
          <asp:Label ID="lblendereco" class="form-control-static" runat="server" Text=""></asp:Label>  
            </p>
        <br>
        </div>
  </div>
<div class="form-group">

    <label class="col-sm-2 control-label">Estado:</label>
    <div class="col-sm-10">
        <p>
          <asp:Label ID="lblestado" class="form-control-static" runat="server" Text=""></asp:Label>  
            </p>
        <br>
        </div>
  </div>

<div class="form-group">

    <label class="col-sm-2 control-label">CEP:</label>
    <div class="col-sm-10">
        <p>
          <asp:Label ID="lblcep" class="form-control-static" runat="server" Text=""></asp:Label>  
            </p>
        <br>
        </div>
  </div>
<div class="form-group">

    <label class="col-sm-2 control-label">Sexo:</label>
    <div class="col-sm-10">
        <p>
          <asp:Label ID="lblsexo" class="form-control-static" runat="server" Text=""></asp:Label>  
            </p>
        <br>
        </div>
  </div>





    <form class="form-horizontal">

  <div class="form-group">
     
    <label class="col-sm-2 control-label">Email:</label>
    <div class="col-sm-10">
         <p>
    
          <asp:Label ID="Label9" class="form-control-static" runat="server" Text=""></asp:Label>  
            </p>
            <p>
             <asp:TextBox ID="txtsenha" type="password" class="form-control"  placeholder="Senha atual" required="" runat="server"></asp:TextBox>
               <asp:TextBox ID="txtnova" type="password" class="form-control" placeholder="Digite a nova senha" required="" runat="server"></asp:TextBox>
             <asp:TextBox ID="txtvalidanova" type="password" class="form-control"  placeholder="Confirme a nova senha" required="" runat="server"></asp:TextBox>
                  </p>
      
      <button type="submit" class="btn btn-primary">Alterar Senha</button>
    </div>
        
  </div>
  </form>



</div>
    </form>
</body>
</html>
