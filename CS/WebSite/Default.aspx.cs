using System;
using DevExpress.Web.ASPxGridView;

public partial class Grid_Editing_CustomUpdate_CustomUpdate: System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        //Populate grid with data on the first load
        if (!IsPostBack && !IsCallback) {
            InvoiceItemsProvider provider = new InvoiceItemsProvider();
            provider.Populate();
        }
    }
}