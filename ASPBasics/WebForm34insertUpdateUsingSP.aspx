<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm34insertUpdateUsingSP.aspx.cs" Inherits="ASPBasics.WebForm34" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="Enter ID:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtID" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="Enter Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="Enter Address :"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtAddress" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="Enter Salary :"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtSalary" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnInsert" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" OnClick="btnInsert_Click" Text="Insert" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btnUpdate" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="Update" OnClick="btnUpdate_Click" />
                </td>
            </tr>
            <tr>
                
                <td>
                    <asp:Button ID="btnClear" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="Clear" OnClick="btnClear_Click" />
                </td>
            </tr>

        </table>

        </div>
    </form>
</body>
</html>
