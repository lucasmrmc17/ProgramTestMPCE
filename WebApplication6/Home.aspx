<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home.aspx.vb" Inherits="WebApplication6.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="Paginas.css" />
    <title>MPCE</title>
</head>
<body>
    <form id="form1" runat="server">

        <nav>
            <asp:ImageButton id="btnImage" runat="server" ImageUrl="Images\LogoNavBar.png"/>        
            <div style="width:30%; padding-left:10px; padding-top:10px; text-align:center;">
                Ministério Público do Estado do Ceará
            </div>
            <div class="dropdown" style="width:20%;">
                <button class="dropbtn"> Menu</button>
                <div class="dropdown-content">
                    <a href="PopCadastrarProcesso.aspx">Cadastrar Novo Processo</a>
                    <a href="PopBuscarProcesso.aspx">Consultar Um Processo</a>
                    <a href="PaginaNaoDesenvolvida.aspx">Acesso Servidor</a>
                    <a href="PaginaNaoDesenvolvida.aspx">Notícias</a>
                    <a href="PaginaNaoDesenvolvida.aspx">Portal</a>
                    <a href="PaginaNaoDesenvolvida.aspx">Links Úteis</a>
                </div>
            </div>
            <ul style="width:200%;">   
                <li>
                    <asp:textbox class="textBox" runat="server" id="txtPesquisa" placeholder="Pesquisar..."></asp:textbox>
                </li>
                <li>
                    <asp:button class="btn" runat="server" Text="Pesquisar" />
                </li>
            </ul>
            <ul>  
                <li> 
                    <a class="links" href="Home.aspx" style="color:white;"> Pagina Inicial</a>
                </li>
                <li>
                    <a class="links" href="PaginaNaoDesenvolvida.aspx" style="color:white;"> Sobre Nós</a>
                </li>
                <li>
                    <a class="links" href="Contatos.aspx" style="color:white;"> Contatos</a>
                </li>
            </ul>
        </nav>

        <div class="dvHome">   
            <div>   
                <img src="Images\Logo.png"/>
            </div><br />

            <div>   
                <asp:Button CssClass=" btn btn-success" id="btnCadastrar" runat="server" Text="Cadastrar Processo" />
                <asp:Button CssClass=" btn btn-query" id="btnBuscar" runat="server" Text="Buscar Processo"/>           
            </div>
        </div>
        
       <div class="rodape" runat="server">            
              
            <asp:Panel runat="server" CssClass="panelDados1">
                <img src="Images\LogoNavBar.png"/><br />  
                <b> Endereço e Contatos</b><br />  
                <br />
                <b> Avenida General Afonso Alburquergue Lima, 130 - Cambeba,</b><br /> 
                <b> Fortaleza-Ce - CEP: 60822-325</b> <br /> 
                <br />              
                <b> (85) 3452-3769</b> <br />
            </asp:Panel>

            <asp:Panel runat="server" CssClass="panelDados2"> 
                <b> Links Importantes</b><br />  <br />
                <a href="PaginaNaoDesenvolvida.aspx" class="textRodape links"> Portal</a><br />
                <a href="PaginaNaoDesenvolvida.aspx" class="textRodape links"> Canais</a><br />
                <a href="PaginaNaoDesenvolvida.aspx" class="textRodape links"> Institucional</a><br />
                <a href="PaginaNaoDesenvolvida.aspx" class="textRodape links"> Notícias</a><br />
            </asp:Panel>


            <asp:Panel runat="server" CssClass="panelDados3" style="width:30%;"> 
                <b> MPCE nas Redes Sociais</b><br /><br />
                <a href="https://www.instagram.com/accounts/login/?next=/mpce_oficial/" target="_blank"> <img src="Images\insta.png" /> </a>
                <a href="https://br.linkedin.com/company/minist%C3%A9rio-p%C3%BAblico-do-estado-do-cear%C3%A1?trk=public_profile_experience-item_profile-section-card_subtitle-click" target="_blank"> <img src="Images\lk.png" /> </a>
                <a href="https://www.youtube.com/user/MinisterioPublicoCE" target="_blank"> <img src="Images\yt.png" /> </a>
                <a href="https://pt-br.facebook.com/mpce.oficial" target="_blank"> <img src="Images\fb.png" /> </a>                
            </asp:Panel>

        </div>
    </form>
</body>
</html>
