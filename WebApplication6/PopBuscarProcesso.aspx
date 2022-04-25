<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PopBuscarProcesso.aspx.vb" Inherits="WebApplication6.PopConsultarProcesso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="Paginas.css" />
    <title>Buscar Processo</title>
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
             <div style="position:absolute; left:10px; top:10px">
                <label for="txtCodigo">Código do Processo:</label>            
                <asp:TextBox id="txtCodigo" runat="server" CssClass="textBox"></asp:TextBox>                 
                <asp:Button CssClass="btn" id="btnBuscar" runat="server" Text="Buscar Processo" style="position:absolute; left:195px; top:17px"/>
            </div>

            <asp:panel id="pnlTitulo" visible="false" style="position:absolute; left:10px; top:55px" runat="server">
                <label for="txtTitulo" >Título:</label>
                <asp:Textbox id="txtTitulo" runat="server" CssClass="textBox" />          
            </asp:panel>

            <asp:panel id="pnlCategoria" visible="false" style="position:absolute; left:250px; top:55px" runat="server">
                <label for="dpCategoria" >Categoria:</label>  
                <asp:Textbox id="txtCategoria" runat="server" CssClass="textBox" />     
            </asp:panel>

            <asp:panel id="pnlStatus" visible="false" style="position:absolute; left:10px; top:95px" runat="server">   
                <label for="txtStatus" >Status:</label>   
                <asp:textbox id="txtStatus" runat="server" CssClass="textBox" />
            </asp:panel>

            <asp:panel id="pnlArea" visible="false" style="position:absolute; left:10px; top:135px" runat="server">   
                <label for="txtArea" >Descrição:</label><br />   
                <asp:textbox id="txtArea" runat="server" Width="440px" height="100px" Wrap="true" TextMode="MultiLine" CssClass="textBox" />
            </asp:panel>            
            <div id="dvBotoes" style="position:absolute; top:265px">
                <asp:Button CssClass="btn btn-query" id="btnEditar" runat="server" Text="Editar Processo"  style="position:absolute; left:90px;" Visible="false"/>
                <asp:Button CssClass="btn btn-danger" id="btnExcluir" runat="server" Text="Deletar Processo" style="position:absolute; left:210px;" Visible="false"/>
                <asp:Button CssClass="btn btn-success" id="btnSalvarEdt" runat="server" Text="Salvar Edição"  style="position:absolute; left:155px; top:25px;" Visible="false"/>
                <asp:Button CssClass="btn btn-back" id="btnVoltar" runat="server" Text="Voltar"  style="position:absolute; left:180px; top:50px;"/>
            </div>

        </div>
    </form>
</body>
</html>
