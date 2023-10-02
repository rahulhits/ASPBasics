<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm36RepeterControl.aspx.cs" Inherits="ASPBasics.WebForm36RepeterControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeter1" runat="server">
                <HeaderTemplate>
                    Id Name Address Salary
                </HeaderTemplate>
                <ItemTemplate>
                    <%#Eval("Id") %>
                    <%#Eval("Name") %>
                    <%#Eval("Address") %>
                    <%#Eval("Salary") %>
                </ItemTemplate>
               </asp:Repeater>
            
        </div>
    </form>
</body>
</html>
