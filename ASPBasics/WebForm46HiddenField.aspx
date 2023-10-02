<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm46HiddenField.aspx.cs" Inherits="ASPBasics.WebForm46HiddenField" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Click here to get count" OnClick="Button1_Click" />
        </div>
        <asp:HiddenField ID="HiddenField1" runat="server" Value="0" />
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" OnClick="Button2_Click" PostBackUrl="~/WebForm47TargetWebPage.aspx" Text="Send Count Value" />
    </form>
</body>
</html>
