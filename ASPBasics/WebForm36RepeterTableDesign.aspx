<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm36RepeterTableDesign.aspx.cs" Inherits="ASPBasics.WebForm36RepeterTableDesign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
                <table border="1">
                    <asp:Repeater ID="Repeter1" runat="server">
                        <HeaderTemplate>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Mail</th>
                                <th>Address</th>
                                <td>Salary</td>
                            </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("Id") %>
                                <td><%#Eval("Name") %></td>
                                <td><%#Eval("Mail") %></td>
                                <td> <%#Eval("Address") %></td>
                                <td> <%#Eval("Salary") %></td>
                            </tr>
                        </ItemTemplate>
                     </asp:Repeater>
                </table>
           
        </div>
    </form>
</body>
</html>
