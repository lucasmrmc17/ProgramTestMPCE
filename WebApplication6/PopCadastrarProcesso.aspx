<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PopCadastrarProcesso.aspx.vb" Inherits="WebApplication6.PopCadastrarProcesso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="Paginas.css" />
    <title>Cadastrar Processo</title>
</head>
<body>
    <form id="form1" runat="server">

        <nav class="NavBar" style="background-color:green; display:flex;">
            <img style="padding-top:10px; padding-left:10px; padding-bottom:10px;" src="Images\LogoNavBar.png"/>
            <ul style="padding-left:1180px">                              
                <li> 
                     <a href="Home.aspx" style="font-size:25px; color:white;"> Menu</a>
                     <a href="Home.aspx" style="font-size:25px; color:white;"> Sobre Nós</a>
                </li>
            </ul>            
        </nav>

        <div style="position:absolute; left:750px">

            <div style="position:absolute; left:10px; top:45px">
                <label for="txtTitulo">Título:</label>
                <asp:Textbox CssClass="textBox" id="txtTitulo" runat="server" ></asp:Textbox> <br />          
            </div>

            <div style="position:absolute; left:250px; top:47px">
                <label for="dpCategoria">Categoria:</label>  
	            <asp:DropDownList CssClass="textBox" ID="dpCategoria" runat="server" AutoPostBack="true"></asp:DropDownList>
            </div>

            <div style="position:absolute; left:10px; top:85px">   
                <label for="txtArea">Descrição:</label><br />   
                <asp:textbox  CssClass="textBox" id="txtArea" runat="server" Width="440px" height="100px" Wrap="true" TextMode="MultiLine"></asp:textbox><br />
            </div>
            
            
            <asp:Button CssClass="btn btn-success" id="btnSalvar" runat="server" Text="Salvar Processo" style="position:absolute; left:180px; top:240px;"/>
            <asp:Button CssClass="btn btn-back" id="btnVoltar" runat="server" Text="Voltar" style="position:absolute; left:210px; top:270px;"/>  

        </div>
    </form>
</body>
</html>
