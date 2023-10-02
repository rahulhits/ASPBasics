<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm39OwnWayGridView.aspx.cs" Inherits="ASPBasics.WebForm39OwnWayGridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="Id" />
                    <asp:BoundField HeaderText="Name" DataField="Name" />
                    <asp:BoundField HeaderText="Mail" DataField="mail" />
                    <asp:BoundField HeaderText="Address" DataField="Address" />
                    <asp:BoundField HeaderText="Salary" DataField="Salary" />

                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
