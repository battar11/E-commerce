<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication60000.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 34px;
    }
    .auto-style4 {
        margin-right: 29px;
    }
    .auto-style5 {
        width: 1203px;
        height: 30px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <table class="auto-style5">
        <tr style="background-color:antiquewhite;">
            <td colspan="2" style="text-align:right;" class="auto-style1" >
                <asp:Label ID="Label4" runat="server" Text="" style="text-align:left" Font-Bold="True" Font-Italic="True"></asp:Label>
                <asp:HyperLink runat="server" Font-Bold="True" NavigateUrl="~/LoginPage.aspx" ID="HyperLink1">Click To Login</asp:HyperLink>
                <asp:Button ID="Button1" runat="server" Text="Log Out" BackColor="Gray" BorderColor="Black" Font-Bold="True" ForeColor="#FF9999" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>

    <asp:DataList ID="DataList1" runat="server" DataKeyField="productId" DataSourceID="SqlDataSource1" Height="293px" Width="491px" RepeatDirection="Horizontal" RepeatColumns="4" CellSpacing="15" CssClass="auto-style6" OnItemCommand="DataList1_ItemCommand"  >
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
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [productId], [ProductName], [Pimage], [Pprice] FROM [Product]"></asp:SqlDataSource>




</asp:Content>
