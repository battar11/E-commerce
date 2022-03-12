<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllProduct.aspx.cs" Inherits="WebApplication60000.AllProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <asp:DataList ID="DataList1" runat="server" DataKeyField="productId" DataSourceID="SqlDataSource1" Height="293px" Width="491px" RepeatDirection="Horizontal" RepeatColumns="4" CellSpacing="15" CssClass="auto-style6"  >
        <ItemTemplate>
             <table>
                 
                 <tr style="text-align:center; background-color:gray;">
                     <td style="text-align:center; background-color:gray;" >
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>' Font-Bold="True" Font-Names="Open Sans Extrabold" ForeColor="White"></asp:Label>
                     </td>
                 </tr>
                 <tr style="text-align:center; background-color:gray;">
                     <td style="text-align:center; background-color:gray;">

                         <a href="DetailsPage.aspx?productId=<%# Eval("ProductId") %>">
                         <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderWidth="1px" Height="279px" Width="270px" ImageUrl='<%# Eval("Pimage") %>' />
                         
                    </a>
                           </td>
                 </tr>
                 <tr style="text-align:center; background-color:gray;">
                     <td style="text-align:center; background-color:gray;">
                         <asp:Label ID="Label2" runat="server" Text="Price: Rs" Font-Bold="True" Font-Names="Arial" ForeColor="White" Style=" text-align:center;"></asp:Label>
                   <asp:Label ID="Label3" runat="server" Text=<%# Eval("Pprice") %> Font-Bold="True" Font-Names="Arial" ForeColor="White" Style=" text-align:center;"></asp:Label></td>

                 </tr>
                 <tr style="text-align:center; background-color:gray;">
                     <td style="text-align:center; background-color:gray;">
                         <asp:DropDownList ID="DropDownList1" runat="server">
                             <asp:ListItem>1</asp:ListItem>
                             <asp:ListItem>2</asp:ListItem>
                             <asp:ListItem>3</asp:ListItem>
                             <asp:ListItem>4</asp:ListItem>
                             <asp:ListItem>5</asp:ListItem>
                             <asp:ListItem></asp:ListItem>
                         </asp:DropDownList>
                         </td>
                 </tr>
                 <tr style="text-align:center; background-color:gray;">
                     <td >
                         <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/Images/addcart.png" Width="120px" CommandArgument='<%# Eval("productId") %>' CommandName="AddToCart"/></td>
                 </tr>
             </table>
        </ItemTemplate>
    </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Pprice], [Pimage], [ProductName], [productId] FROM [Product]"></asp:SqlDataSource>
           
    </form>
</body>
</html>
