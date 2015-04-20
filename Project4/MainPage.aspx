<!-- Programmers : Sneha Upadhyayula and Prashanth Naika (Group25)
    Final Project for ITMD422
-->

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 182px;
            text-align: right;
            height: 23px;
        }
        .auto-style5 {
            width: 405px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 182px;
            text-align: right;
            height: 63px;
        }
        .auto-style8 {
            width: 405px;
            height: 63px;
        }
        .auto-style9 {
            height: 63px;
        }
        .auto-style13 {
            width: 182px;
            text-align: right;
            height: 58px;
        }
        .auto-style14 {
            width: 405px;
            height: 58px;
        }
        .auto-style15 {
            height: 58px;
        }
        .newStyle1 {
            background-image: url('ooo1.1-elements-background_v1.png');
            font-family: "AR BLANCA";
            font-weight: 800;
            font-style: normal;
        }
        .newStyle2 {
            font-family: Algerian;
            font-style: italic;
            font-weight: 500;
        }
        .newStyle3 {
            font-family: Algerian;
            font-weight: 500;
            font-style: italic;
        }
    </style>
</head>
<body class="newStyle1">
    <form id="form1" runat="server">    
        <br />
        <h1><strong>Welcome&nbsp;&nbsp;&nbsp;
            
            !!!!</strong></h1>
        <br />
        <br />
        <strong>Please select table name and Click on Data Base name<br />
        <br />
        </strong><br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style13">Table Names</td>
                <td class="auto-style14">
                    <asp:DropDownList ID="DropDownListTableName" runat="server" Height="27px" Width="268px">
                        <asp:ListItem>Select Table</asp:ListItem>
                        <asp:ListItem Value="tbl_order">Orders Table</asp:ListItem>
                        <asp:ListItem Value="tbl_customer">Customer Table</asp:ListItem>
                        <asp:ListItem Value="tbl_shp_confg">Shop Config Table</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Text="Oracle" Width="86px" OnClick="Button1_Click" CssClass="newStyle2" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="SQL Server" Width="107px" CssClass="newStyle3" />
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>

</html>
