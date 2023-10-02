<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm35DropDown.aspx.cs" Inherits="ASPBasics.WebForm35" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Font-Bold="True" Font-Size="X-Large" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
        </div>
        <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
    </form>
</body>
</html>
