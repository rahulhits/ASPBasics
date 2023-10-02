<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm38GridView.aspx.cs" Inherits="ASPBasics.WebForm38GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BorderColor="#FF5050" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#99CC00" GridLines="None" PageSize="2">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeConnectionString %>" DeleteCommand="DELETE FROM [tblsample] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblsample] ([Id], [name], [mail], [address], [salary]) VALUES (@Id, @name, @mail, @address, @salary)" SelectCommand="SELECT * FROM [tblsample]" UpdateCommand="UPDATE [tblsample] SET [name] = @name, [mail] = @mail, [address] = @address, [salary] = @salary WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="mail" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="salary" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="mail" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="salary" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." GridLines="Horizontal" PageSize="3">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeConnectionString %>" DeleteCommand="DELETE FROM [tblsample] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblsample] ([Id], [name], [mail], [address], [salary]) VALUES (@Id, @name, @mail, @address, @salary)" ProviderName="<%$ ConnectionStrings:EmployeeConnectionString.ProviderName %>" SelectCommand="SELECT [Id], [name], [mail], [address], [salary] FROM [tblsample]" UpdateCommand="UPDATE [tblsample] SET [name] = @name, [mail] = @mail, [address] = @address, [salary] = @salary WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="mail" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="salary" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="mail" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="salary" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
