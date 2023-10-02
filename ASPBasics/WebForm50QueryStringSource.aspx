<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm50QueryStringSource.aspx.cs" Inherits="ASPBasics.WebForm50QueryStringSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Text="Enter ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Text="Submit" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
