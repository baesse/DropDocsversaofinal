<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MeusDocumentos.aspx.cs" Inherits="DropDocs._01.MeusDocumentos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8">
  <title>DropDocs</title>
   <link rel="stylesheet" href="../CSS/inicio.css">
   <link rel="stylesheet" href="../CSS/bootstrap.css">
   <style type="text/css">
   	.content{
   		height:650px ;
         width:200px;
         left:90px;
   	}

.iframee{
	position: relative;
	left:500px;
           top: -53px;
           height: 621px;
           width: 606px;
           top:-641px;
       }

   </style>
</head>
<body>
    <form id="form1" class="content" runat="server">
    
        <div class="content">

            <asp:DropDownList ID="DropDownList1"  runat="server" Height="48px" Width="115px"  ></asp:DropDownList>
          
            <br />
            
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar este:" />
            
            <br />
            
           
 <br>
            <asp:Label ID="todocumento" runat="server" Text="Tipo de documento: "></asp:Label><br />
            <asp:Label ID="nomedoc" runat="server" Text="Nome do documento: "></asp:Label><br />
            <asp:Label ID="obdoc" runat="server" Text="Observações :"></asp:Label><br />
            <asp:Label ID="titudoc" runat="server" Text="Titular do Documento: "></asp:Label><br />
            <asp:Label ID="datadoc" runat="server" Text="Data da emissão"></asp:Label><br />

 <br>
</div>

  
  
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <iframe  id="frame" runat="server" class="iframee" width="500" height="500" style="border: none;"></iframe>

  
  
  
    </form>
</body>
</html>
