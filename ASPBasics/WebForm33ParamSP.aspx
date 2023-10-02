<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm33ParamSP.aspx.cs" Inherits="ASPBasics.WebForm33" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="Enter ID:"></asp:Label>
                    <asp:TextBox ID="txtID" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:TextBox>
                <br />
            <br />
            <asp:Button ID="btnDelete" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" OnClick="btnDelete_Click" Text="Delete" />
        </div>
    </form>
</body>
</html>
