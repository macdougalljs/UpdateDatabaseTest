<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="FinalJeremiahMacDougall2.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles.css" rel="stylesheet" />
    <title>Exam Final Jeremiah MacDougall</title>
    <style type="text/css">
        .auto-style3 {
            width: 195px;
        }
        .auto-style4 {
            width: 177px;
        }
        .auto-style5 {
            width: 248px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        Insert a product by selecting the respective category and supplier.<br />
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblProductName" runat="server" Text="Product Name:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblCat" runat="server" Text="Categories:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="lblSuppliers" runat="server" Text="Suppliers:"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlCategories" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlSuppliers" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="NameValidator" runat="server" ControlToValidate="txtProductName" ErrorMessage="Field can't blank!" ForeColor="Green"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4">
                    <asp:RangeValidator ID="ValidateCategory" runat="server" ControlToValidate="ddlCategories" ErrorMessage="Select a category!" MaximumValue="99999" MinimumValue="0"></asp:RangeValidator>
                </td>
                <td class="auto-style3">
                    <asp:RangeValidator ID="ValidateSupplier" runat="server" ControlToValidate="ddlSuppliers" ErrorMessage="Select a supplier!" MaximumValue="99999" MinimumValue="0"></asp:RangeValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;<asp:Label ID="lblMessage" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:GridView ID="grdProducts" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <br />
    </form>
        <div>
        </div>
    </body>
</html>
