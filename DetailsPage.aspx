<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsPage.aspx.cs" Inherits="WebApplication60000.DetailsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       
        
        .auto-style1 {
            height: 66px;
        }
        .auto-style3 {
            height: 68px;
        }
        .auto-style4 {
            height: 69px;
            width: 320px;
        }
        .auto-style5 {
            height: 223px;
            width: 299px;
        }
               
        
        .auto-style7 {
            height: 102px;
            width: 299px;
        }
       
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
      
           
            <div class="auto-style3" align="cneter">
           
           <asp:FormView ID="FormView1" runat="server" Height="630px" Width="1982px" CssClass="auto-style8" align="center">
               <ItemTemplate >
                    <table class="auto-style1" border="2px" align="center">
                        <tr>
                            <td class="auto-style3" colspan="2" align="center">
                               <b> <asp:Label ID="Label1" runat="server"  Text='<%# Eval("ProductName") %>'></asp:Label></b>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4" rowspan="3">
                                <asp:Image ID="Image1" runat="server" Height="193px" ImageUrl='<%# Eval("Pimage") %>' Width="467px" />
                            </td>
                            <td class="auto-style7"><b>Product ID:</b>
                                <asp:Label ID="Label2" runat="server"  Text='<%# Eval("productId") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7"><b>Price :</b>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pprice") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5"> <b>Product des :</b>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Pdesc") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    
                </ItemTemplate>
          </asp:FormView>
            </div>
            <br />
           
    </form>
</body>
</html>
