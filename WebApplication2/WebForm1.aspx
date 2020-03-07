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
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:newestateConnectionString %>" SelectCommand="SELECT * FROM [roomtype]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="roomtypeid" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="roomtypeid" HeaderText="roomtypeid" ReadOnly="True" SortExpression="roomtypeid" />
                    <asp:BoundField DataField="roomname" HeaderText="roomname" SortExpression="roomname" />
                    <asp:BoundField DataField="roomdescription" HeaderText="roomdescription" SortExpression="roomdescription" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/images/helen.jpg" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:estate08022020connection %>" ProviderName="<%$ ConnectionStrings:estate08022020connection.ProviderName %>" SelectCommand="SELECT * FROM estate"></asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2">
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:newestateConnectionString %>" SelectCommand="SELECT * FROM room"></asp:SqlDataSource>
            <br />
            <br />
            grid 3<br />
            <br />
            <asp:GridView ID="GridView3" runat="server">
            </asp:GridView>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
