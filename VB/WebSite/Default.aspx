<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxTreeView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%-- BeginRegion Page setup --%>
<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="Grid_Editing_CustomUpdate_CustomUpdate" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Editing in a new window</title>
</head>
<body>
	<form id="form1" runat="server">
	<dx:ASPxGridView ID="gridServer" ClientInstanceName="gridClient" runat="server" DataSourceID="ObjectDataSource1"
		KeyFieldName="Id" Width="300px">
		<%-- BeginRegion Grid Columns --%>
		<Columns>
			<dx:GridViewDataColumn VisibleIndex="0">
				<DataItemTemplate>
					<a onclick="window.open('EditForm.aspx?<%#Eval("Id")%>', '', 'dependent=yes,width=300,height=320');" href="javascript:void(0);">Edit</a>
				</DataItemTemplate>
			</dx:GridViewDataColumn>
			<dx:GridViewDataColumn FieldName="Id" VisibleIndex="1">
			</dx:GridViewDataColumn>
			<dx:GridViewDataColumn FieldName="Name" VisibleIndex="2">
			</dx:GridViewDataColumn>
			<dx:GridViewDataColumn FieldName="Quantity" VisibleIndex="3">
			</dx:GridViewDataColumn>
			<dx:GridViewDataTextColumn FieldName="Price" VisibleIndex="4">
				<PropertiesTextEdit DisplayFormatString="c">
				</PropertiesTextEdit>
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="Total" VisibleIndex="5">
				<PropertiesTextEdit DisplayFormatString="c">
				</PropertiesTextEdit>
			</dx:GridViewDataTextColumn>
		</Columns>
		<%-- EndRegion --%>
		<SettingsEditing EditFormColumnCount="2" />
	</dx:ASPxGridView>
	<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetItems"
		UpdateMethod="Update" DeleteMethod="Delete" InsertMethod="Insert" TypeName="InvoiceItemsProvider">
	</asp:ObjectDataSource>
	</form>
</body>
</html>