﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PopBuscarProcesso.aspx.vb" Inherits="WebApplication6.PopConsultarProcesso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="Paginas.css" />
    <title>Buscar Processo</title>
</head>
<body>
    <form id="form1" runat="server">

        <nav>
            <img style="padding-top:10px; padding-left:10px; padding-bottom:10px;" src="Images\LogoNavBar.png"/>            
            <ul>                              
                <li> 
                    <a class="links" href="Home.aspx" style="color:white;"> Pagina Inicial</a>
                </li>
                <li> 
                    <a class="links" href="Home.aspx" style="color:white;"> Menu</a>
                </li>
                <li>
                    <a class="links" href="Home.aspx" style="color:white;"> Sobre Nós</a>
                </li>
                <li>
                    <a class="links" href="Contatos.aspx" style="color:white;"> Contatos</a>
                </li>
            </ul>
        </nav>

        <div style="position:absolute; left:750px; top:60px; ">
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
                <asp:Button CssClass="btn btn-query" id="btnEditar" runat="server" Text="Editar Processo"  style="position:absolute; left:75px;" Visible="false"/>
                <asp:Button CssClass="btn btn-danger" id="btnExcluir" runat="server" Text="Deletar Processo" style="position:absolute; left:210px;" Visible="false"/>
                <asp:Button CssClass="btn btn-success" id="btnSalvarEdt" runat="server" Text="Salvar Edição"  style="position:absolute; left:155px; top:25px;" Visible="false"/>
                <asp:Button CssClass="btn btn-back" id="btnVoltar" runat="server" Text="Voltar"  style="position:absolute; left:180px; top:50px;"/>
            </div>

        </div>

                <div class="rodape" runat="server">            
              
            <asp:Panel runat="server" CssClass="panelDados1">
                <img src="Images\LogoNavBar.png"/><br />  
                <b> Endereço e Contatos:</b><br />  
                <br />
                <b> Avenida General Afonso Alburquergue Lima, 130 - Cambeba,</b><br /> 
                <b> Fortaleza-Ce - CEP: 60822-325</b> <br /> 
                <br />               
                <b> (85) 3452-3769</b> <br />
            </asp:Panel>

            <asp:Panel runat="server" CssClass="panelDados2"> 
                <b> Links Importante</b><br />  <br />
                <a href="Home.aspx" class="textRodape"> Portal</a><br />
                <a href="Home.aspx" class="textRodape"> Canais</a><br />
                <a href="Home.aspx" class="textRodape"> Institucional</a><br />
                <a href="Home.aspx" class="textRodape"> Notícias</a><br />
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
