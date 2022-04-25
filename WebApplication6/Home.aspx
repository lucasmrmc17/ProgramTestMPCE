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
        <div class="dvHome">   
            <div>   
                <img src="Images\Logo.png"/>
            </div>
            <div style="font-size:30px;">          
                 O que deseja fazer?
            </div><br />

            <div>   
                <asp:Button CssClass=" btn btn-success" id="btnCadastrar" runat="server" font-size="Medium" Text="Cadastrar Processo" />
                <asp:Button CssClass=" btn btn-query" id="btnBuscar" runat="server" font-size="Medium" Text="Buscar Processo"/>           
            </div>
        </div>

    </form>
</body>
</html>
