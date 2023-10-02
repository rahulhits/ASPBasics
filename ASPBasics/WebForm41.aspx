<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm41.aspx.cs" Inherits="ASPBasics.WebForm41" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="departmentid" DataValueField="name">
            </asp:DropDownList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeConnectionString %>" SelectCommand="spgetdepartments" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="departmentid" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="departmentid" HeaderText="departmentid" InsertVisible="False" ReadOnly="True" SortExpression="departmentid" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeConnectionString %>" SelectCommand="spgetdepartments" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </form>
</body>
</html>
