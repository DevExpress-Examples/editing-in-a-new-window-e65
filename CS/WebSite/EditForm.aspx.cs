using System;

public partial class Grid_Editing_EditInSecondForm_EditForm: System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if (!IsPostBack) {
            LoadInitialData();
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e) {
        SaveData();
        //ClientScript.RegisterStartupScript(this.GetType(), "closescript", "<script language='javascript'>window.opener.focus(); window.close();</script>");
        ClientScript.RegisterStartupScript(this.GetType(), "CloseScriptKey", "CloseScript();</script>", true);
    }
    InvoiceItem GetItemId() {
        int id;
        if (int.TryParse(Request.Params[0], out id)) {
            return (new InvoiceItemsProvider()).GetItemById(id);
        }
        return null;
    }
    void LoadInitialData() {
        InvoiceItem item = GetItemId();
        if (item != null) {
            tbName.Text = item.Name;
            tbPrice.Text = item.Price.ToString();
            tbQuantity.Text = item.Quantity.ToString();
        }
    }
    void SaveData() {
        InvoiceItem item = GetItemId();
        if (item != null) {
            item.Name = tbName.Text;
            decimal price;
            if (decimal.TryParse(tbPrice.Text, out price)) {
                item.Price = price;
            }
            int quantity;
            if (int.TryParse(tbQuantity.Text, out quantity)) {
                item.Quantity = quantity;
            }
        }
    }
}