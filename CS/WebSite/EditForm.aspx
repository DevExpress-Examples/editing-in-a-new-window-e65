<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditForm.aspx.cs" Inherits="Grid_Editing_EditInSecondForm_EditForm" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Edit a record:</title>
    <script type="text/javascript">
        function CloseScript() {
            if (window.opener != null) {
                window.opener.focus();
                window.opener.gridClient.Refresh();
            }
            window.close();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0">
            <tr> 
                <td>Name: </td><td><asp:TextBox runat="server" ID="tbName" /></td>
            </tr>
            <tr>
                <td>Quantity: </td><td><asp:TextBox runat="server" ID="tbQuantity" /></td>
            </tr>
            <tr>
                <td>Price:</td> <td><asp:TextBox runat="server" ID="tbPrice" /></td>
            </tr>
            <tr>
                <td></td>
                <td style="text-align:right">
                    <asp:LinkButton runat="server" ID="btnUpdate" Text="Update" OnClick="btnUpdate_Click"></asp:LinkButton>
                    <a href="javascript:window.close();">Cancel</a>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>