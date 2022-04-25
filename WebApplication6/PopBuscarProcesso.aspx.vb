Imports System.Data.SqlClient

Public Class PopConsultarProcesso
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Function BuscarProcesso(ByVal codProcesso As Integer) As Object

        Dim Retorno As Object = Nothing

        Dim oDb As New ConnBDC()
        Dim objConnection As SqlConnection = New SqlConnection(oDb.AbreConexaoSQL())

        Dim oCmd As SqlCommand
        Dim strSQL As String
        strSQL = "SELECT Titulo, p.Descricao AS Descricao, c.Descricao AS Categoria, sp.Descricao AS Status FROM Processos AS p INNER JOIN Categoria AS c ON c.IdCategoria = p.Categoria INNER JOIN SisStatusProcesso AS sp ON sp.IdStatus = p.Status WHERE p.IdProcesso = " & codProcesso

        oCmd = New SqlCommand(strSQL, objConnection)

        Try
            If objConnection.State = ConnectionState.Closed Then
                objConnection.Open()
            End If

            oCmd.CommandType = CommandType.Text
            Dim DadosBusca As SqlDataReader = oCmd.ExecuteReader(CommandBehavior.CloseConnection)

            While DadosBusca.Read()

                txtCodigo.Text = codProcesso
                txtTitulo.Text = DadosBusca("Titulo").ToString
                txtArea.Text = DadosBusca("Descricao").ToString
                txtCategoria.Text = DadosBusca("Categoria").ToString
                txtStatus.Text = DadosBusca("Status").ToString

            End While

            pnlTitulo.Visible = True
            txtTitulo.Enabled = False

            pnlArea.Visible = True
            txtArea.Enabled = False

            pnlCategoria.Visible = True
            txtCategoria.Enabled = False

            pnlStatus.Visible = True
            txtStatus.Enabled = False

            btnEditar.Visible = True
            btnExcluir.Visible = True
            btnSalvarEdt.Visible = True

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

    Public Function AtualizarProcesso(ByVal codProcesso As Integer, ByVal descricao As String) As Object

        Dim Retorno As Object = Nothing
        Dim data As DateTime = Now
        Dim oDb As New ConnBDC()
        Dim objConnection As SqlConnection = New SqlConnection(oDb.AbreConexaoSQL())

        Dim oCmd As SqlCommand
        Dim strSQL As String
        strSQL = "UPDATE Processo SET Descricao = '" & descricao & "', DataDeEdicao = '" & data & "' where Codigo = " & codProcesso

        oCmd = New SqlCommand(strSQL, objConnection)

        Try
            If objConnection.State = ConnectionState.Closed Then
                objConnection.Open()
            End If

            oCmd.CommandType = CommandType.Text
            oCmd.ExecuteNonQuery()

            pnlTitulo.Visible = False
            pnlStatus.Visible = False
            pnlCategoria.Visible = False
            pnlArea.Visible = False

            btnEditar.Visible = False
            btnExcluir.Visible = False
            btnSalvarEdt.Visible = False

            txtCodigo.Text = ""
            txtTitulo.Text = ""
            txtArea.Text = ""
            txtCategoria.Text = ""
            txtStatus.Text = ""

            Page.ClientScript.RegisterStartupScript(Me.GetType(), "alerta", "<script language=""javascript"">alert('Processo atualizado com sucesso!!');</script>")

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

    Public Function DeletarProcesso(ByVal codProcesso As Integer) As Object

        Dim Retorno As Object = Nothing

        Dim oDb As New ConnBDC()
        Dim objConnection As SqlConnection = New SqlConnection(oDb.AbreConexaoSQL())

        Dim oCmd As SqlCommand
        Dim strSQL As String
        strSQL = "DELETE Processo WHERE Codigo = " & codProcesso

        oCmd = New SqlCommand(strSQL, objConnection)

        Try
            If objConnection.State = ConnectionState.Closed Then
                objConnection.Open()
            End If

            oCmd.CommandType = CommandType.Text
            oCmd.ExecuteNonQuery()

            pnlTitulo.Visible = False
            pnlStatus.Visible = False
            pnlCategoria.Visible = False
            pnlArea.Visible = False

            btnEditar.Visible = False
            btnExcluir.Visible = False
            btnSalvarEdt.Visible = False

            txtCodigo.Text = ""
            txtTitulo.Text = ""
            txtArea.Text = ""
            txtCategoria.Text = ""
            txtStatus.Text = ""

            Page.ClientScript.RegisterStartupScript(Me.GetType(), "alerta", "<script language=""javascript"">alert('Processo deletado com sucesso!!');</script>")

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

    Private Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click

        Dim codProcesso As Integer = txtCodigo.Text

        BuscarProcesso(codProcesso)

    End Sub

    Private Sub btnEditar_Click(sender As Object, e As EventArgs) Handles btnEditar.Click

        txtArea.Enabled = True

    End Sub

    Private Sub btnExcluir_Click(sender As Object, e As EventArgs) Handles btnExcluir.Click

        Dim codProcesso As Integer = txtCodigo.Text

        DeletarProcesso(codProcesso)

    End Sub

    Private Sub btnSalvarEdtr_Click(sender As Object, e As EventArgs) Handles btnSalvarEdt.Click

        Dim codProcesso As Integer = txtCodigo.Text
        Dim descricao As String = txtArea.Text

        AtualizarProcesso(codProcesso, descricao)

    End Sub

    Private Sub btnVoltar_Click(sender As Object, e As EventArgs) Handles btnVoltar.Click

        Response.Redirect("Home.aspx")

    End Sub

End Class