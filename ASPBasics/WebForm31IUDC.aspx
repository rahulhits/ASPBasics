<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm31IUDC.aspx.cs" Inherits="ASPBasics.WebForm31" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            border: 2px solid #FF6666;
        }
        .auto-style2 {
            width: 208px;
        }
        .auto-style3 {
            width: 208px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 208px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
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
                <td class="auto-style2">
                    <asp:Button ID="btnDelete" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="Delete" OnClick="btnDelete_Click" />
                </td>
                <td>
                    <asp:Button ID="btnClear" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="Clear" OnClick="btnClear_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
