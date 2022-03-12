<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication60000.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style6 {
            height: 900px;
            width: 992px;
        }
        .auto-style8 {
            height: 54px;
        }
        .auto-style11 {
            height: 23px;
            width: 410px;
        }
        .auto-style12 {
            width: 698px;
        }
        .auto-style13 {
            height: 23px;
            width: 698px;
        }
        .auto-style15 {
            height: 39px;
        }
        .auto-style16 {
            height: 41px;
        }
    </style>
</head>
<body style="height: 485px">
    <form id="form1" runat="server">
        <div align="center">
            
            <table align="cneter" border="1" class="auto-style6" style="background-color:gray">
                <tr>
                    <td colspan="2" align="center" class="auto-style8"><h1>Registeration form</h1></td>
                    
                </tr>
                <tr>
                    <td class="auto-style12" align="center"><h2>User Name:</h2></td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TxtUser" runat="server" Height="47px" Width="543px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" align="center"><h2>First Name:</h2></td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TxtFname" runat="server" Height="57px" Width="534px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" align="center"><h2> Last Name:</h2></td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TxtLname" runat="server" Height="49px" Width="533px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" align="center"><h2>Email :</h2></td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TxtEmail" runat="server" Height="49px" Width="535px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" align="center"><h2>Password :</h2></td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TxtPassword" runat="server" Height="56px" Width="538px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" align="center"><h2>Confirm Password :</h2></td>
                    <td class="auto-style11">
                        <asp:TextBox ID="ConfPass" runat="server" Height="58px" Width="535px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style16" >
                        <asp:Button ID="Button1" runat="server" Text="Register" Font-Bold="True" Font-Size="Larger" OnClick="Button1_Click1" Height="49px" Width="194px" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style15"><asp:Label ID="Label1" runat="server" Text=""></asp:Label><br /></td></tr>
                         
                  
                
            </table>
           <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords not matching" ControlToValidate="TxtPassword" controlToCompare="ConfPass" EnableClientScript="False"  Font-Bold="True" ForeColor="Red"></asp:CompareValidator><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter username" ControlToValidate="TxtUser" EnableClientScript="False"  Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator><br />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Pleace enter correct email" ControlToValidate="TxtEmail" EnableClientScript="False" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
                   
                    
        </div>
      
    </form>
</body>
</html>
