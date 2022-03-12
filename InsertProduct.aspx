<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertProduct.aspx.cs" Inherits="WebApplication60000.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            prductID(int) : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            productName(Varchar(50)) : <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            ProductDescraption(MAX) : <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            Image Path: <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
            Price(int) :<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
