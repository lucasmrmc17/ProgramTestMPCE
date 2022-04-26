Imports System.Data.SqlClient


Public Class PopCadastrarProcesso
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then

            AlimentaCategorias()

        End If


    End Sub

    Public Function AlimentaCategorias() As Object

        Dim Retorno As Object = Nothing

        Dim oDb As New ConnBDC()
        Dim objConnection As SqlConnection = New SqlConnection(oDb.AbreConexaoSQL())

        Dim oCmd As SqlCommand
        Dim strSQL As String
        strSQL = "SELECT * FROM Categoria"

        oCmd = New SqlCommand(strSQL, objConnection)

        Try
            If objConnection.State = ConnectionState.Closed Then
                objConnection.Open()
            End If


            dpCategoria.DataValueField = "IdCategoria"
            dpCategoria.DataTextField = "Descricao"
            dpCategoria.DataSource = oCmd.ExecuteReader(CommandBehavior.CloseConnection)
            dpCategoria.DataBind()
            dpCategoria.Items.Insert(0, "")



        Catch oErr As Exception
            Dim Message As String = "<script language=""javascript"">alert('" & Replace(Replace(Replace(oErr.Message.ToString, Chr(39), ""), "\", "\\"), vbCrLf, "") & "');</script>"
            Page.ClientScript.RegisterStartupScript(Me.GetType(), "alerta", Message)

        Finally
            'Fecha a conexao que foi aberta
            oCmd.Dispose()
            objConnection.Dispose()
            objConnection.Close()
            objConnection = Nothing
        End Try

        Return Retorno

    End Function

    Public Function SalvaProcesso(ByVal titulo As String, ByVal descricao As String, ByVal categoria As Integer) As Object

        Dim Retorno As Object = Nothing
        Dim dataCriacao As DateTime = Now
        Dim data As String = dataCriacao.ToString.Substring(6, 4) + "-" + dataCriacao.ToString.Substring(3, 2) + "-" + dataCriacao.ToString.Substring(0, 2) + " " + dataCriacao.ToString.Substring(11, 2) + ":" + dataCriacao.ToString.Substring(14, 2) + ":" + dataCriacao.ToString.Substring(17, 2)
        Dim oDb As New ConnBDC()
        Dim objConnection As SqlConnection = New SqlConnection(oDb.AbreConexaoSQL())

        Dim oCmd As SqlCommand
        Dim strSQL As String
        strSQL = "INSERT INTO Processos (Titulo, Descricao, DataDeCriacao, Categoria, Status) VALUES ('" & titulo & "', '" & descricao & "', '" & data & "', " & categoria & ", 1) "


        oCmd = New SqlCommand(strSQL, objConnection)

        Try
            If objConnection.State = ConnectionState.Closed Then
                objConnection.Open()
            End If

            oCmd.CommandType = CommandType.Text
            oCmd.ExecuteNonQuery()

        Catch oErr As Exception
            Dim Message As String = "<script language=""javascript"">alert('" & Replace(Replace(Replace(oErr.Message.ToString, Chr(39), ""), "\", "\\"), vbCrLf, "") & "');</script>"
            Page.ClientScript.RegisterStartupScript(Me.GetType(), "alerta", Message)

        Finally
            'Fecha a conexao que foi aberta
            oCmd.Dispose()
            objConnection.Dispose()
            objConnection.Close()
            objConnection = Nothing
        End Try

        Return Retorno

    End Function

    Public Function BuscaProcessoInserido()


        Dim Retorno As Object = Nothing

        Dim oDb As New ConnBDC()
        Dim objConnection As SqlConnection = New SqlConnection(oDb.AbreConexaoSQL())

        Dim oCmd As SqlCommand
        Dim strSQL As String
        strSQL = "SELECT ISNULL(MAX(IdProcesso),0) AS 'CodProcesso' FROM Processos"


        oCmd = New SqlCommand(strSQL, objConnection)

        Try
            If objConnection.State = ConnectionState.Closed Then
                objConnection.Open()
            End If

            oCmd.CommandType = CommandType.Text
            Dim DadosBusca As SqlDataReader = oCmd.ExecuteReader(CommandBehavior.CloseConnection)


            While DadosBusca.Read()


                Retorno = DadosBusca("CodProcesso").ToString


            End While

            DadosBusca.Close()

        Catch oErr As Exception
            Dim Message As String = "<script language=""javascript"">alert('" & Replace(Replace(Replace(oErr.Message.ToString, Chr(39), ""), "\", "\\"), vbCrLf, "") & "');</script>"
            Page.ClientScript.RegisterStartupScript(Me.GetType(), "alerta", Message)

        Finally
            'Fecha a conexao que foi aberta
            oCmd.Dispose()
            objConnection.Dispose()
            objConnection.Close()
            objConnection = Nothing
        End Try

        Return Retorno

    End Function

    Private Sub btnSalvar_Click(sender As Object, e As EventArgs) Handles btnSalvar.Click

        Dim codProcesso As String = Nothing
        Dim titulo As String = txtTitulo.Text
        Dim descricao As String = txtArea.Text
        Dim categoria As Integer = dpCategoria.SelectedValue



        SalvaProcesso(titulo, descricao, categoria)
        codProcesso = BuscaProcessoInserido()

        txtTitulo.Text = ""
        txtArea.Text = ""
        dpCategoria.ClearSelection()

        Page.ClientScript.RegisterStartupScript(Me.GetType(), "alerta", "<script language=""javascript"">alert(' Processo cadastrado com sucesso!! O número do seu processo é: " + codProcesso.ToString + "');</script>")


    End Sub

    Private Sub btnImage_Click(sender As Object, e As EventArgs) Handles btnImage.Click

        Response.Redirect("Home.aspx")

    End Sub

End Class