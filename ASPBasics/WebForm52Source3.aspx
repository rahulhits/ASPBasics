<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm52Source3.aspx.cs" Inherits="ASPBasics.WebForm52Source3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Enter ID"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Strikeout="False" OnClick="Button1_Click" Text="Submit" />
        </div>
    </form>
</body>
</html>
