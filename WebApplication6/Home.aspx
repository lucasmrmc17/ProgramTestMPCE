﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home.aspx.vb" Inherits="WebApplication6.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="Paginas.css" />
    <title>MPCE</title>
</head>
<body>
    <form id="form1" runat="server">
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
                <a href="https://www.instagram.com/accounts/login/?next=/mpce_oficial/"> <img src="Images\insta.png" /> </a>
                <a href="https://br.linkedin.com/company/minist%C3%A9rio-p%C3%BAblico-do-estado-do-cear%C3%A1?trk=public_profile_experience-item_profile-section-card_subtitle-click"> <img src="Images\lk.png" /> </a>
                <a href="https://www.youtube.com/user/MinisterioPublicoCE"> <img src="Images\yt.png" /> </a>
                <a href="https://pt-br.facebook.com/mpce.oficial"> <img src="Images\fb.png" /> </a>                
            </asp:Panel>

        </div>
    </form>
</body>
</html>
