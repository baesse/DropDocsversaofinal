<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="DropDocs._01.PAGINAS.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Cadastro - DropDocs</title>
<link href="../CSS/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

    <script src="../scripts/jquery-3.1.1.min.js"></script>
    <script src="../scripts/jquery.maskedinput.min.js"></script>


<style>
  body{
    background:#0ca3d2;

  }
  .termo{
      position: relative;
      left:-420px;
      top:5px;


  }

  

</style>

         <script type="text/javascript">
         jQuery(function () {
             $('#txtcpf').mask('999.999.999-99');
             $('#txttelefone').mask("(99)99999-9999");
             $('#txtcep').mask("99-999999");
             
         });
    </script>  


</head>
<body>
    <form class="well form-horizontal" action=" " method="post"  id="contact_form" runat="server">
   <fieldset>



<legend>Cadastro</legend>
<div class="form-group">
  <label class="col-md-4 control-label">Nome</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class=""></i></span>
      <asp:TextBox ID="txtnome" name="first_name" placeholder="Nome" class="form-control"  type="text" required="" runat="server"></asp:TextBox>
     </div>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" >Sobrenome</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class=""></i></span>
        <asp:TextBox ID="txtsobrenome" name="last_name" placeholder="Sobrenome" class="form-control"  type="text" required="" runat="server"></asp:TextBox>
     </div>
  </div>
</div>
       <div class="form-group">
  <label class="col-md-4 control-label">CPF</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class=""></i></span>
        <asp:TextBox ID="txtcpf"  class="form-control"  type="text" required="" runat="server"></asp:TextBox>
     </div>
  </div>
</div>
       <div class="form-group">
  <label class="col-md-4 control-label">Email</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class=""></i></span>
        <asp:TextBox ID="txtemail"  name="email" placeholder="Endereço de Email" class="form-control"  type="email" required="" runat="server"></asp:TextBox>
     </div>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label">Senha</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class=""></i></span>
      <asp:TextBox ID="txtsenha" name="first_name" placeholder="Senha" class="form-control"  type="password" required="" runat="server"></asp:TextBox>
  
    </div>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label">Repetir Senha</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class=""></i></span>
      <asp:TextBox ID="txtrepetirsenha"  name="first_name" placeholder="Repetir Senha" class="form-control"  type="password" required="" runat="server"></asp:TextBox>
      </div>
  </div>
</div>
   
<div class="form-group">
  <label class="col-md-4 control-label">Telefone #</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class=""></i></span>
        <asp:TextBox ID="txttelefone" name="phone" placeholder="(XX)X XXXX-XXXX" class="form-control" type="text" required="" runat="server"></asp:TextBox>
  
    </div>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label">Endereço</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class=""></i></span>
        <asp:TextBox ID="txtendereco" name="address" placeholder="Endereço" class="form-control" type="text"  runat="server" required="" runat="server"></asp:TextBox>
     </div>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label">Cidade</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class=""></i></span>
        <asp:TextBox ID="txtcidade"  name="city" placeholder="Cidade" class="form-control"  type="text" required="" runat="server"></asp:TextBox>
  
    </div>
  </div>
</div>
<div class="form-group"> 
  <label class="col-md-4 control-label">Estado</label>
    <div class="col-md-4 selectContainer">
       
    <div class="input-group">
        <span class="input-group-addon"><i class=""></i></span>
        <asp:DropDownList ID="DropDownList1" class="form-control selectpicker" runat="server">
             <asp:ListItem>....</asp:ListItem>
                 <asp:ListItem>AL</asp:ListItem>
             <asp:ListItem>AP</asp:ListItem>
             <asp:ListItem>AM</asp:ListItem>
             <asp:ListItem>BA</asp:ListItem>
             <asp:ListItem>CE</asp:ListItem>
             <asp:ListItem>ES</asp:ListItem>
             <asp:ListItem>GO</asp:ListItem>
             <asp:ListItem>MA</asp:ListItem>
             <asp:ListItem>MT</asp:ListItem>
             <asp:ListItem>PB</asp:ListItem>
             <asp:ListItem>PR</asp:ListItem>
             <asp:ListItem>PI</asp:ListItem>
             <asp:ListItem>RJ</asp:ListItem>
             <asp:ListItem>RN</asp:ListItem>
             <asp:ListItem>RS</asp:ListItem>
             <asp:ListItem>RO</asp:ListItem>
              <asp:ListItem>RR</asp:ListItem>
              <asp:ListItem>SC</asp:ListItem>
              <asp:ListItem>SP</asp:ListItem>
              <asp:ListItem>SE</asp:ListItem>
            <asp:ListItem>TO</asp:ListItem>
        </asp:DropDownList>
  </div>
</div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label">CEP</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class=""></i></span>
        <asp:TextBox ID="txtcep" name="zip" placeholder="CEP" class="form-control"  type="text" required="" runat="server"></asp:TextBox>
 
    </div>
</div>
</div>
 <div class="form-group">
                        <label class="col-md-4 control-label">Sexo</label>
                        <div class="col-md-4">
                            
                         
                         <asp:RadioButton ID="sexom" runat="server" Text="Masculino" GroupName="Sexo" Checked="true"/> 
                            <br /><asp:RadioButton ID="sexof" runat="server" Text="Feminino" GroupName="Sexo"/>
                            <br />
                            
                                 </div>
                                  
                              
                            <br />
  
                                    
                            <div class="termo"> 
                                <br />   
                               
                            <asp:CheckBox ID="checktermo"  runat="server" />
                            <asp:Label ID="Label3" runat="server" Text="Eu li, e aceito os "></asp:Label>
                            <a href="termo.aspx">Termos e Condiçoes</a>
                                                       
                    </div>
     <br />




<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4">
      <asp:Button ID="Button1"  type="submit" class="btn btn-warning"  runat="server" Text="Cadastrar" OnClick="Button1_Click" />
    
  </div>
</div>
       
</fieldset>
</form>
</div>
    </div>
    </form>
</body>
</html>
