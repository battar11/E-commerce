<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="WebApplication60000.AddToCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 42px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" style="margin:0 auto">
            <h2 style="text-decoration:underline; color:black";> You have these items in your cart</h2>
            <br /><br />
            <asp:HyperLink  ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" NavigateUrl="~/WebForm2.aspx">Continue Shopping</asp:HyperLink>
            <br /><br />
            <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" Height="16px" Width="481px" OnRowDeleting="GridView1_RowDeleting" EmptyDataText="No product in the cart" ShowFooter="True" >
                            <Columns>
                                <asp:BoundField DataField="sno" HeaderText="Sr no">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="pid" HeaderText="Product Id">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Pname" HeaderText="Product name">
                                <ItemStyle BorderStyle="None" HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:ImageField DataImageUrlField="pimage" HeaderText="Product Image">
                                    <ItemStyle Height="300px" HorizontalAlign="Center" Width="300px" />
                                </asp:ImageField>
                                <asp:BoundField DataField="pprice" HeaderText="Price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="pquantity" HeaderText="Quantity">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ptotalprice" HeaderText="Total price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:CommandField DeleteText="Delete item" ShowDeleteButton="True" >
                                <ControlStyle ForeColor="Red" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:CommandField>
                            </Columns>
            </asp:GridView>

            <asp:Button ID="Button1" runat="server" Text="Submit order" OnClick="Button1_Click" />
        </div>
        
    </form>
</body>
</html>
