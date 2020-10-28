<%@ Page Language="C#" AutoEventWireup="true" CodeFile="liaotianshi.aspx.cs" Inherits="liaotianshi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>葫芦聊天室</title>
    <style type="text/css">
        #form1
        {
            height: 757px;
            width: 1804px;
        }
    </style>
</head>
<body align="center">
    <form id="form1" runat="server" align="center">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/liaotianshi.png" />
    <br />
    <br />

    <asp:TextBox ID="TextBox1" runat="server" Height="419px" ReadOnly="True" TextMode="MultiLine" 
        Width="647px"></asp:TextBox>
    <br />
    <br />
    
    <asp:Button ID="Button1" runat="server" Text="内容刷新" onclick="Button1_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server"></asp:Label>
    <br />
    <br />
用户id：<asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp; 内容：<asp:TextBox ID="TextBox2" runat="server" Height="69px" 
        Width="254px" ></asp:TextBox>
&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="提交" onclick="Button2_Click" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="退出" onclick="Button3_Click" />
    </form>
</body>
</html>
