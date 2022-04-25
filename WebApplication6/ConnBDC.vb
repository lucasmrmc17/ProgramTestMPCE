Option Explicit On

Imports System
Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.OleDb
Imports System.Data.SqlClient
Imports System.Web
Imports System.Configuration
Imports log4net

Public Class ConnBDC
    Private strConStr As String
    Private strError As String
    Private oConn As SqlConnection


    Private Shared ReadOnly instancia As New ConnBDC

    Public Property strConnection() As String
        Get
            Return strConStr
        End Get
        Set(ByVal value As String)

            strConStr = value

            Try
                oConn = New SqlConnection(strConStr)

            Catch oErr As Exception
                Dim Erro As String = oErr.ToString & " - strConnection: " & strConStr
            End Try

        End Set

    End Property

    Public Shared Function GetInstancia() As ConnBDC

        Return instancia

    End Function

    Public Function GetConnection() As SqlConnection

        ' Obtem a string de conexão
        Dim strConexao As String = ConfigurationManager.ConnectionStrings("ConnectionStringSQL").ConnectionString

        ' Retorna uma conexão.
        Return New SqlConnection(strConexao)

    End Function



    Public Function AbreConexaoSQL() As String

        Try

            strConnection = ConfigurationManager.ConnectionStrings("ConnectionStringSQL").ConnectionString

        Catch oErr As Exception
            Dim Erro As String = oErr.ToString

        End Try

        Return strConnection

    End Function



End Class
