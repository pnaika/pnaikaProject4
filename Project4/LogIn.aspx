<!-- Programmers : Sneha Upadhyayula and Prashanth Naika (Group25)
    Final Project for ITMD422
    -->

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<!DOCTYPE html>

<!-- HTML to create style for the webpage -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Final Project for ITMD422</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 230px;
            height: 30px;
            text-align: right;
        }
        .auto-style4 {
            height: 30px;
            text-align: left;
        }
        .auto-style5 {
            height: 30px;
            width: 245px;
            text-align: center;
        }
        .auto-style7 {
            text-align: left;
            height: 49px;
        }
        .auto-style8 {
            width: 230px;
            height: 57px;
            text-align: right;
        }
        .auto-style9 {
            height: 57px;
            width: 245px;
            text-align: center;
        }
        .auto-style10 {
            height: 57px;
            text-align: left;
        }
        .auto-style11 {
            text-decoration: underline;
        }
        .auto-style12 {
            width: 230px;
            text-align: right;
            height: 49px;
        }
        .newStyle1 {
            background-image: url('Stunning-retro-graphic-powerpoint-design-background-1000x750.jpg');
            background-repeat: no-repeat;
            font-family: Papyrus;
            font-weight: 900;
            font-style: italic;
        }
        .newStyle2 {
            font-family: "Copperplate Gothic Bold";
            font-weight: 500;
            font-size: medium;
        }
        .newStyle3 {
            font-family: "Copperplate Gothic Bold";
            font-size: medium;
            font-weight: 500;
        }
        .auto-style13 {
            width: 245px;
            text-align: right;
            height: 49px;
        }
    </style>
</head>
<body class="newStyle1">
    <form id="form1" runat="server">
    
        <h1><span class="auto-style11"><strong>Final Project for ITMD 422</strong></span></h1>
        <br />
        Please enter UserName and Password to log In !<br />
        <br />
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">User Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtusername" runat="server" style="margin-left: 3px" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                   
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" ></asp:Label>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Password</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtpassword" runat="server" MaxLength="8" style="margin-left: 0px" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    
                    <asp:Label ID="Label2" runat="server" ForeColor="Red" ></asp:Label>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LogIn" Width="71px" CssClass="newStyle2" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" Width="77px" CssClass="newStyle3" />
                </td>
                <td class="auto-style7"></td>
            </tr>
        </table>
    </form>

</body>

</html>
