<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebApplication60000.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 268px;
            width: 396px;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" class="auto-style3" style="background-color:gray">
                <tr>
                    <td colspan="2" align="center"><h2>Login page</h2></td>
                  
                </tr>
                <tr>
                    <td align="center" style="width:50%"><b>User Name:</b></td>
                    <td>
                        <asp:TextBox ID="UserLogin" runat="server" Height="37px" Width="180px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="center" style="width:50%"><b>Password :</b></td>
                    <td>
                        <asp:TextBox ID="EntPassword" runat="server" Height="37px" Width="178px" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="Login" Height="29px" Width="99px" OnClick="Button1_Click" /></td>
                    
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                  
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
 