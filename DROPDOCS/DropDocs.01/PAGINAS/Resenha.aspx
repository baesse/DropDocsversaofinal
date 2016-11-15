<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resenha.aspx.cs" Inherits="DropDocs._01.PAGINAS.Resenha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>DropDocs - Redefinição de Senha</title>
  
     <link rel="stylesheet" href="../CSS/bootstraplogin.css">
       <link rel="stylesheet" href="../CSS/login.css">

<style type="text/css">
  .login{
  	position: relative;
    top: 200px;
  }
  input{
    position: relative;
    left: -8px;
  }
button{
  position: fixed;
  left: 850px;
  top:100px;
  border-radius: 50px;
  

}
.about{
    position:relative;
    top:600px;

}
</style>
</head>
<body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<script type="text/javascript">
$(function () {
  $('[data-toggle="popover"]').popover()
})
</script>
   <button type="button" class="btn-info" data-toggle="popover" title="Informações" data-content="Aqui você pode redefinir a sua senha informando apenas o Email. Depois disso, basta entrar em seu email e clicar no link. Ele vai te redirecionar para um novo link onde você poderá alterar sua senha.">?</button>-
     <form id="form1" runat="server">
    <div>
      <section class="container1">

    <div class="login">
      <h1>DropDocs - Redefinir Senha</h1>

      <form method="post" action="index.html">
          <asp:TextBox ID="txtemail" type="text" name="login" value="" placeholder="Email" runat="server"></asp:TextBox>
                        <p class="remember_me">
        </p>
          <asp:Button ID="btnenviar"  type="submit" name="commit" value="Enviar" runat="server" Text="Enviar" OnClick="btnenviar_Click" />
       
      </form>
     

  </section>

  <section class="about">

    <p class="about-author">
      &copy; 2016 <a href="http://dropdocs.com" target="_blank">DropDocs</a> 

  </section>
    </div>
    </form>
</body>
</html>
