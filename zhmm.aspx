<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhmm.aspx.cs" Inherits="zhmm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>找回密码</title>
    <link href="css/pwd.css" type="text/css" rel="stylesheet">
</head>
 <body style="background:#20c1ba url(img/bg_top.png) no-repeat top center;">
        <div class="pwd_main">
            <div class="pwd_box">
                <form id="form1" runat="server">
				 <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="270px" class="input" placeholder="用户id："></asp:TextBox>

                     <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="270px" class="input" placeholder="姓名："></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="270px" class="input" placeholder="邮箱："></asp:TextBox>
                    
				 <asp:Button  ID="Button1" runat="server" Text="下一步"  class="button" 
                     onclick="Button1_Click"/></form>
                <div class="menu">
                    <a class="menu_l" href="main2.aspx" target="_blank">返回首页</a>
                    <a class="menu_r" id="login" href="Login.aspx" >登录</a>
                </div>
            </div>
        </div>    
        </body>
</html>
