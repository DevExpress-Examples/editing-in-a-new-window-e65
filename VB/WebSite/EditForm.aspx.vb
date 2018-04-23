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

Partial Public Class Grid_Editing_EditInSecondForm_EditForm
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		If (Not IsPostBack) Then
			LoadInitialData()
		End If
	End Sub
	Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As EventArgs)
		SaveData()
		ClientScript.RegisterStartupScript(Me.GetType(), "closescript", "<script language='javascript'>window.opener.focus(); window.close();</script>")
	End Sub
	Private Function GetItemId() As InvoiceItem
		Dim id As Integer
		If Integer.TryParse(Request.Params(0), id) Then
			Return (New InvoiceItemsProvider()).GetItemById(id)
		End If
		Return Nothing
	End Function
	Private Sub LoadInitialData()
		Dim item As InvoiceItem = GetItemId()
		If item IsNot Nothing Then
			tbName.Text = item.Name
			tbPrice.Text = item.Price.ToString()
			tbQuantity.Text = item.Quantity.ToString()
		End If
	End Sub
	Private Sub SaveData()
		Dim item As InvoiceItem = GetItemId()
		If item IsNot Nothing Then
			item.Name = tbName.Text
			Dim price As Decimal
			If Decimal.TryParse(tbPrice.Text, price) Then
				item.Price = price
			End If
			Dim quantity As Integer
			If Integer.TryParse(tbQuantity.Text, quantity) Then
				item.Quantity = quantity
			End If
		End If
	End Sub
End Class
