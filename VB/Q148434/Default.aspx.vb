Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.XtraPivotGrid
Imports System.ComponentModel

Namespace Q148434
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
			If IsPostBack Then
				If Request.Params("__EVENTTARGET").Contains(ASPxPivotGrid1.ID) AndAlso Request.Params("__EVENTARGUMENT").StartsWith("Data") Then
					Dim args() As String = Request.Params("__EVENTARGUMENT").Split("|"c)
					If args.Length = 3 Then
						If (Not ASPxPivotGrid1.IsDataBound) Then
							ASPxPivotGrid1.DataBind()
						End If
						Session("DS") = Convert(ASPxPivotGrid1.CreateDrillDownDataSource(Integer.Parse(args(1)), Integer.Parse(args(2))))
						Response.Redirect("DetailPage.aspx")
					End If
				End If
			End If
		End Sub

		Private Function Convert(ByVal source As PivotDataSource) As DataTable
			Dim result As New DataTable()
			Dim properties As PropertyDescriptorCollection = source.GetItemProperties(Nothing)
			For Each [property] As PropertyDescriptor In properties
				If [property].Name <> "PivotGridNullableColumn" Then
					result.Columns.Add([property].Name, [property].PropertyType)
				End If
			Next [property]
			For i As Integer = 0 To source.RowCount - 1
				Dim row As DataRow = result.NewRow()
				For Each col As DataColumn In result.Columns
					row(col) = properties(col.ColumnName).GetValue((CType(source, IList))(i))
				Next col
				result.Rows.Add(row)
			Next i
			Return result
		End Function
	End Class
End Namespace
