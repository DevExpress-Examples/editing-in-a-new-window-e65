<%-- BeginRegion Page setup --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Grid_Editing_CustomUpdate_CustomUpdate" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1" Namespace="DevExpress.Web.ASPxEditors"  TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.1" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v8.1" Namespace="DevExpress.Web.ASPxPager" TagPrefix="dxwp" %>
<%@ Register Assembly="DevExpress.Web.v8.1" Namespace="DevExpress.Web.ASPxMenu" TagPrefix="dxwm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Editing in a new window</title>
</head>
<body>
    <form id="form1" runat="server">
    
        <dxwgv:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server" DataSourceID="ObjectDataSource1" KeyFieldName="Id" Width="300px" OnCustomCallback="grid_CustomCallback" >
            <%-- BeginRegion Grid Columns --%>
            <Columns>
                <dxwgv:GridViewDataColumn VisibleIndex="0">
                    <DataItemTemplate>
                        <a onclick="window.open('EditForm.aspx?<%# Eval("Id") %>', '', 'dependent=yes,width=300,height=320');" href="#">Edit</a>
                    </DataItemTemplate>
                </dxwgv:GridViewDataColumn>
                <dxwgv:GridViewDataColumn FieldName="Id" VisibleIndex="1">
                </dxwgv:GridViewDataColumn>
                <dxwgv:GridViewDataColumn FieldName="Name" VisibleIndex="2">
                </dxwgv:GridViewDataColumn>
                <dxwgv:GridViewDataColumn FieldName="Quantity" VisibleIndex="3">
                </dxwgv:GridViewDataColumn>
                <dxwgv:GridViewDataTextColumn FieldName="Price" VisibleIndex="4">
                    <PropertiesTextEdit DisplayFormatString="c"></PropertiesTextEdit>
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="Total" VisibleIndex="5">
                    <PropertiesTextEdit DisplayFormatString="c"></PropertiesTextEdit>
                </dxwgv:GridViewDataTextColumn>
            </Columns>
            <%-- EndRegion --%>
            <SettingsEditing EditFormColumnCount="2" />
        </dxwgv:ASPxGridView>
        <input id="btnRefresh" type="button" value="Refresh" onclick="grid.PerformCallback();" />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"
            SelectMethod="GetItems" UpdateMethod="Update" DeleteMethod="Delete" InsertMethod="Insert" 
            TypeName="InvoiceItemsProvider">
        </asp:ObjectDataSource>
        &nbsp;
    </form>
</body>
</html>
