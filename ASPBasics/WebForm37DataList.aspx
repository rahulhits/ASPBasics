<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm37DataList.aspx.cs" Inherits="ASPBasics.WebForm37DataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 722px">
            <asp:DataList ID="Datalist1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" OnSelectedIndexChanged="Datalist1_SelectedIndexChanged">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <HeaderTemplate>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Mail</th>
                                <th>Address</th>
                                <td>Salary</td>
                            </tr>
                        </HeaderTemplate>
                        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("Id") %>
                                <td><%#Eval("Name") %></td>
                                <td><%#Eval("Mail") %></td>
                                <td> <%#Eval("Address") %></td>
                                <td> <%#Eval("Salary") %></td>
                            </tr>
                        </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </div>
    </form>
</body>
</html>
