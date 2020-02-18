<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="estateid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="estateid" HeaderText="estateid" ReadOnly="True" SortExpression="estateid" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:estate08022020connection %>" ProviderName="<%$ ConnectionStrings:estate08022020connection.ProviderName %>" SelectCommand="SELECT * FROM estate"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
