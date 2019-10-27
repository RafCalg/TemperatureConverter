<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Converter.aspx.cs" Inherits="TemperatureConverter.Converter" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            width: 193px;
            height: 416px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Temperature Converter<br />
            </strong>
        </div>
        <div>
            <p>
                <strong><img align="left" alt="Thermometer" class="auto-style2"  src="Image/Thermometer.jpg" /></strong></p>
            <p>
&nbsp; <strong>
                <asp:Label ID="fromLabel" runat="server" Text="From"></asp:Label>
                :</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Label ID="toLabel" runat="server" Text="To:"></asp:Label>
                </strong>&nbsp;&nbsp;&nbsp;
            </p>
            <p>
                <asp:DropDownList ID="fahrCels1DropDownList" runat="server" Height="18px" OnSelectedIndexChanged="fahrCels1DropDownList_SelectedIndexChanged">
                    <asp:ListItem Value="0">Fahrenheit</asp:ListItem>
                    <asp:ListItem Value="1">Celsius</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:DropDownList ID="fahrCels2DropDownList"  runat="server" OnSelectedIndexChanged="fahrCels2DropDownList_SelectedIndexChanged">
                    <asp:ListItem Value="0">Fahrenheit</asp:ListItem>
                    <asp:ListItem Value="1">Celsius</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="inpTempLabel" runat="server" Text="Input Temperature"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="inpTempTexBox" runat="server" OnTextChanged="inpTempTexBox_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="messageLabel" runat="server" ForeColor="#CC0000"></asp:Label>
            </p>
            <p>
                <asp:Label ID="outputTempLabel" runat="server" Text="Output Temperature"></asp:Label>
&nbsp;
                <asp:TextBox ID="outputTempTexBox" runat="server"></asp:TextBox>
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Button ID="convertButton" runat="server" OnClick="convertButton_Click" Text="Convert" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="clearButton" runat="server" Text="Clear" Width="80px" OnClick="clearButton_Click" />
            </p>
        </div>
    </form>
</body>
</html>
